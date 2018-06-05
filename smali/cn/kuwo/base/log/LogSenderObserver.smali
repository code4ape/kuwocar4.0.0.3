.class public Lcn/kuwo/base/log/LogSenderObserver;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/core/observers/ILogSenderObserver;


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field private d:Z

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3

    iput-wide v0, p0, Lcn/kuwo/base/log/LogSenderObserver;->a:J

    iput-wide v2, p0, Lcn/kuwo/base/log/LogSenderObserver;->b:J

    iput-wide v2, p0, Lcn/kuwo/base/log/LogSenderObserver;->c:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/base/log/LogSenderObserver;->d:Z

    iget-wide v0, p0, Lcn/kuwo/base/log/LogSenderObserver;->a:J

    iput-wide v0, p0, Lcn/kuwo/base/log/LogSenderObserver;->e:J

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    const-string v0, "LogSenderObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ILogSenderObserver_sendClientLogFinish] success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/base/log/LogSenderObserver;->d:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcn/kuwo/base/log/LogDef;->b()V

    :cond_0
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0x1

    const-string v1, "LogSenderObserver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ILogSenderObserver_sendRealtimeLogFinish] act = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "?UNKOWN?"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcn/kuwo/base/log/LogSenderObserver;->b:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcn/kuwo/base/log/LogSenderObserver;->b:J

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcn/kuwo/base/log/LogSenderObserver;->c:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcn/kuwo/base/log/LogSenderObserver;->c:J

    iget-wide v0, p0, Lcn/kuwo/base/log/LogSenderObserver;->e:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcn/kuwo/base/log/LogSenderObserver;->e:J

    iget-boolean v0, p0, Lcn/kuwo/base/log/LogSenderObserver;->d:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcn/kuwo/base/log/LogSenderObserver;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcn/kuwo/base/log/LogSenderObserver;->a:J

    iput-wide v0, p0, Lcn/kuwo/base/log/LogSenderObserver;->e:J

    invoke-static {}, Lcn/kuwo/base/log/LogMgr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/base/log/LogSenderObserver;->d:Z

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v0, p2

    goto :goto_0

    :cond_3
    sget-object v0, Lcn/kuwo/base/log/LogDef$OldLogType;->v:Lcn/kuwo/base/log/LogDef$OldLogType;

    invoke-virtual {v0}, Lcn/kuwo/base/log/LogDef$OldLogType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1
.end method

.method public b(Z)V
    .locals 3

    const-string v0, "LogSenderObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ILogSenderObserver_sendFeedBackFinish] success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
