.class Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4$3;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4$3;->b:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4;

    iput-object p2, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4$3;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4$3;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IMVCacheObserver;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcn/kuwo/core/observers/IMVCacheObserver;->onGetMVPlayerUrlFailed(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4$3;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IMVCacheObserver;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4$3;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4$3;->b:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4;

    iget-object v2, v2, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4;->c:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;

    iget-object v2, v2, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->m:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcn/kuwo/core/observers/IMVCacheObserver;->onGetMVPlayerUrl(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method
