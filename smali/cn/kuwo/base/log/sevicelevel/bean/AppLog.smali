.class public Lcn/kuwo/base/log/sevicelevel/bean/AppLog;
.super Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;


# instance fields
.field private a:J

.field private b:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/log/sevicelevel/bean/AppLog;->b:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcn/kuwo/base/log/sevicelevel/bean/AppLog;->d:J

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/kuwo/base/log/sevicelevel/bean/AppLog;->a()Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    move-result-object v1

    sget-object v2, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->b:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    if-ne v1, v2, :cond_0

    const-string v1, "|DEVTIME:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/kuwo/base/log/sevicelevel/bean/AppLog;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcn/kuwo/base/log/sevicelevel/bean/AppLog;->a()Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    move-result-object v1

    sget-object v2, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->c:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    if-ne v1, v2, :cond_1

    const-string v1, "|RUNTIME:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/kuwo/base/log/sevicelevel/bean/AppLog;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcn/kuwo/base/log/sevicelevel/bean/AppLog;->a()Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    move-result-object v1

    sget-object v2, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->e:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    if-ne v1, v2, :cond_2

    const-string v1, "|SHOWTIME:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/kuwo/base/log/sevicelevel/bean/AppLog;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(J)V
    .locals 1

    iput-wide p1, p0, Lcn/kuwo/base/log/sevicelevel/bean/AppLog;->c:J

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/base/log/sevicelevel/bean/AppLog;->a()Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(J)V
    .locals 1

    iput-wide p1, p0, Lcn/kuwo/base/log/sevicelevel/bean/AppLog;->a:J

    return-void
.end method

.method public setType(Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/log/sevicelevel/bean/AppLog;->b:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    return-void
.end method
