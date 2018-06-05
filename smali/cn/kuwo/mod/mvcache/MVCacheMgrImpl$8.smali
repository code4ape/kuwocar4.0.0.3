.class Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$8;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$8;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IMVCacheObserver;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcn/kuwo/core/observers/IMVCacheObserver;->onDownCacheFileFailed(I)V

    return-void
.end method
