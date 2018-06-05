.class Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$11;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# virtual methods
.method public call()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$11;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IMVCacheObserver;

    invoke-interface {v0}, Lcn/kuwo/core/observers/IMVCacheObserver;->onDownCacheFileStart()V

    return-void
.end method
