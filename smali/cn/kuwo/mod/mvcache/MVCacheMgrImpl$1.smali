.class Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$1;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IMVCacheObserver;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$1;->a:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;

    iget-object v1, v1, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->b:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcn/kuwo/core/observers/IMVCacheObserver;->onGetMVPlayerDownedFile(Landroid/net/Uri;)V

    return-void
.end method
