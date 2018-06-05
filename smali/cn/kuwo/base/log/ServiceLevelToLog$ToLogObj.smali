.class public Lcn/kuwo/base/log/ServiceLevelToLog$ToLogObj;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcn/kuwo/base/log/ServiceLevelToLog;

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/kuwo/base/log/ServiceLevelToLog;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcn/kuwo/base/log/ServiceLevelToLog$ToLogObj;->a:Lcn/kuwo/base/log/ServiceLevelToLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcn/kuwo/base/log/ServiceLevelToLog$ToLogObj;->b:J

    iput-wide v2, p0, Lcn/kuwo/base/log/ServiceLevelToLog$ToLogObj;->c:J

    iput-object v0, p0, Lcn/kuwo/base/log/ServiceLevelToLog$ToLogObj;->d:Ljava/lang/String;

    iput-object v0, p0, Lcn/kuwo/base/log/ServiceLevelToLog$ToLogObj;->e:Ljava/lang/String;

    iput-object p2, p0, Lcn/kuwo/base/log/ServiceLevelToLog$ToLogObj;->d:Ljava/lang/String;

    iput-wide p4, p0, Lcn/kuwo/base/log/ServiceLevelToLog$ToLogObj;->c:J

    iput-object p3, p0, Lcn/kuwo/base/log/ServiceLevelToLog$ToLogObj;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onEventBegin()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuwo/base/log/ServiceLevelToLog$ToLogObj;->b:J

    return-void
.end method

.method public onEventEnd()V
    .locals 6

    const-wide/16 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/kuwo/base/log/ServiceLevelToLog$ToLogObj;->b:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcn/kuwo/base/log/ServiceLevelToLog$ToLogObj;->c:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcn/kuwo/base/log/ServiceLevelToLog$ToLogObj;->b:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcn/kuwo/base/log/ServiceLevelToLog$ToLogObj;->c:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    const-string v2, "ServiceLevelLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "log service level type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/kuwo/base/log/ServiceLevelToLog$ToLogObj;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mExtraContent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/kuwo/base/log/ServiceLevelToLog$ToLogObj;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " outTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcn/kuwo/base/log/ServiceLevelToLog$ToLogObj;->b:J

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/base/log/ServiceLevelToLog$ToLogObj;->d:Ljava/lang/String;

    iget-object v1, p0, Lcn/kuwo/base/log/ServiceLevelToLog$ToLogObj;->e:Ljava/lang/String;

    const/16 v2, 0x3e7

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/log/ServiceLevelLogger;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method
