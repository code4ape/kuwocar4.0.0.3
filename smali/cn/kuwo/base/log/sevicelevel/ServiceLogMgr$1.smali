.class final Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$1;
.super Lcn/kuwo/core/observers/ext/AppObserver;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/AppObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public IAppObserver_NetworkStateChanged(ZZ)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcn/kuwo/core/observers/ext/AppObserver;->IAppObserver_NetworkStateChanged(ZZ)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr;->b()Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;->a(Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr;->b()Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;->a(Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
