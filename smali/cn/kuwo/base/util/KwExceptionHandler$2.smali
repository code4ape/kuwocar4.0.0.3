.class final Lcn/kuwo/base/util/KwExceptionHandler$2;
.super Lcn/kuwo/core/observers/ext/AppObserver;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/AppObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public IAppObserver_NetworkStateChanged(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/kuwo/base/util/KwExceptionHandler;->checkSendOfflineLog(Z)V

    :cond_0
    return-void
.end method
