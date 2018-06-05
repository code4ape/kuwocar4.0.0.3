.class public Lcn/kuwo/base/log/sevicelevel/bean/PageLog;
.super Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/log/sevicelevel/bean/PageLog;->b:Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcn/kuwo/base/log/sevicelevel/bean/PageLog;->c:J

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcn/kuwo/base/log/sevicelevel/bean/PageLog;->a()Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;->b:Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|PATH:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/log/sevicelevel/bean/PageLog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|PAGETIME:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/kuwo/base/log/sevicelevel/bean/PageLog;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|PATH:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/log/sevicelevel/bean/PageLog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/base/log/sevicelevel/bean/PageLog;->a()Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/log/sevicelevel/bean/PageLog;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/log/sevicelevel/bean/PageLog;->a:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/log/sevicelevel/bean/PageLog;->b:Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;

    return-void
.end method
