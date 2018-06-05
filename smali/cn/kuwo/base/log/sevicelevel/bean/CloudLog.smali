.class public Lcn/kuwo/base/log/sevicelevel/bean/CloudLog;
.super Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;


# instance fields
.field private a:Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/log/sevicelevel/bean/CloudLog;->a:Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/base/log/sevicelevel/bean/CloudLog;->a()Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setType(Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/log/sevicelevel/bean/CloudLog;->a:Lcn/kuwo/base/log/sevicelevel/bean/CloudLog$LogType;

    return-void
.end method
