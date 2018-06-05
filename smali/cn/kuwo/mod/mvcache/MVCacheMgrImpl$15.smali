.class Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$15;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;J)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$15;->b:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;

    iput-wide p2, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$15;->a:J

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$15;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IMVCacheObserver;

    iget-wide v2, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$15;->a:J

    invoke-interface {v0, v2, v3}, Lcn/kuwo/core/observers/IMVCacheObserver;->onOldCacheLoaded(J)V

    return-void
.end method
