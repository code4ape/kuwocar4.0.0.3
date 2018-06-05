.class Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;


# virtual methods
.method public call()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$2;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IMVCacheObserver;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$2;->a:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;

    iget-object v1, v1, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->b:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcn/kuwo/core/observers/IMVCacheObserver;->onGetMVPlayerCacheFile(Landroid/net/Uri;Z)V

    return-void
.end method
