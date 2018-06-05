.class Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$9$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$9;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$9;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$9$2;->b:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$9;

    iput-object p2, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$9$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$9$2;->b:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$9;

    iget-object v0, v0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$9;->c:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;

    iput-boolean v2, v0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->g:Z

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$9$2;->b:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$9;

    iget-object v0, v0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$9;->c:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->e:Z

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$9$2;->b:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$9;

    iget-object v0, v0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$9;->c:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;

    iput-boolean v2, v0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->f:Z

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$9$2;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IMVCacheObserver;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$9$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/kuwo/core/observers/IMVCacheObserver;->onDownCacheFileSuccess(Ljava/lang/String;)V

    return-void
.end method
