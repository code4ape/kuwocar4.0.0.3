.class public Lcn/kuwo/base/log/sevicelevel/bean/SettingOperationLog;
.super Lcn/kuwo/base/log/sevicelevel/bean/OperationLog;


# instance fields
.field private a:Lcn/kuwo/base/log/sevicelevel/bean/SettingOperationLog$LogType;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/base/log/sevicelevel/bean/OperationLog;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcn/kuwo/base/log/sevicelevel/bean/SettingOperationLog$LogType;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/log/sevicelevel/bean/SettingOperationLog;->a:Lcn/kuwo/base/log/sevicelevel/bean/SettingOperationLog$LogType;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcn/kuwo/base/log/sevicelevel/bean/OperationLog;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|EXT:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/log/sevicelevel/bean/SettingOperationLog;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/base/log/sevicelevel/bean/SettingOperationLog;->a()Lcn/kuwo/base/log/sevicelevel/bean/SettingOperationLog$LogType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/log/sevicelevel/bean/SettingOperationLog$LogType;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setType(Lcn/kuwo/base/log/sevicelevel/bean/SettingOperationLog$LogType;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/log/sevicelevel/bean/SettingOperationLog;->a:Lcn/kuwo/base/log/sevicelevel/bean/SettingOperationLog$LogType;

    return-void
.end method
