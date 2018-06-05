.class Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$7;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$7;->a:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$7;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IMVCacheObserver;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcn/kuwo/core/observers/IMVCacheObserver;->onDownCacheFileFailed(I)V

    return-void
.end method
