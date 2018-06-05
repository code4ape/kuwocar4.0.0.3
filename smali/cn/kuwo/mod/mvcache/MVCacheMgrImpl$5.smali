.class Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$5;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$5;->c:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;

    iput-object p2, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    const-string v0, "MP4"

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->n()Lcn/kuwo/mod/mvcache/db/IMVCacheDownloadMgr;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$5;->c:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;

    iget-object v1, v1, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->a:Lcn/kuwo/base/bean/Music;

    const-string v2, "MP4L"

    invoke-interface {v0, v1, v2}, Lcn/kuwo/mod/mvcache/db/IMVCacheDownloadMgr;->a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->n()Lcn/kuwo/mod/mvcache/db/IMVCacheDownloadMgr;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$5;->c:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;

    iget-object v1, v1, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->a:Lcn/kuwo/base/bean/Music;

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$5;->a:Ljava/lang/String;

    iget-object v3, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$5;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcn/kuwo/mod/mvcache/db/IMVCacheDownloadMgr;->a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
