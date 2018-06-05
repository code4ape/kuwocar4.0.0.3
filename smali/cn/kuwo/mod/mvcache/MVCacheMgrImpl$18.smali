.class final Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$18;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$18;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IMVCacheObserver;

    sget-boolean v1, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->p:Z

    invoke-interface {v0, v1}, Lcn/kuwo/core/observers/IMVCacheObserver;->onWoProxyChanged(Z)V

    return-void
.end method
