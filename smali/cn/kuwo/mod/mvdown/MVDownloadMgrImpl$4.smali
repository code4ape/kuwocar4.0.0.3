.class Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/base/http/IHttpNotify;


# instance fields
.field final synthetic a:Lcn/kuwo/base/bean/Music;

.field final synthetic b:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;Lcn/kuwo/base/bean/Music;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$4;->b:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    iput-object p2, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$4;->a:Lcn/kuwo/base/bean/Music;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IHttpNotifyFailed(Lcn/kuwo/base/http/HttpSession;Lcn/kuwo/base/http/HttpResult;)V
    .locals 2

    const-string v0, "MVCache"

    const-string v1, "asyncRequestIconUrl---->IHttpNotifyFailed"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public IHttpNotifyFinish(Lcn/kuwo/base/http/HttpSession;Lcn/kuwo/base/http/HttpResult;)V
    .locals 5

    invoke-virtual {p2}, Lcn/kuwo/base/http/HttpResult;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcn/kuwo/base/http/HttpResult;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "\"mvpic\":\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "\"}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v1, :cond_0

    add-int/lit8 v3, v1, 0x9

    if-ge v3, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$4;->a:Lcn/kuwo/base/bean/Music;

    invoke-static {v0}, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/kuwo/base/bean/Music;->j:Ljava/lang/String;

    const-string v0, "MVCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asyncRequestIconUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$4;->a:Lcn/kuwo/base/bean/Music;

    iget-object v2, v2, Lcn/kuwo/base/bean/Music;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$4;->b:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;)Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$4;->a:Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->b(Lcn/kuwo/base/bean/Music;)I

    invoke-static {}, Lcn/kuwo/base/imageloader/AsyncImageLoader;->a()Lcn/kuwo/base/imageloader/AsyncImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$4;->a:Lcn/kuwo/base/bean/Music;

    iget-object v1, v1, Lcn/kuwo/base/bean/Music;->j:Ljava/lang/String;

    sget-object v2, Lcn/kuwo/base/cache/CacheCategoryNames;->f:Lcn/kuwo/base/cache/CacheCategoryNames;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/base/imageloader/AsyncImageLoader;->a(Ljava/lang/String;Lcn/kuwo/base/cache/CacheCategoryNames;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/kuwo/base/imageloader/AsyncImageLoader;->a()Lcn/kuwo/base/imageloader/AsyncImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$4;->a:Lcn/kuwo/base/bean/Music;

    iget-object v1, v1, Lcn/kuwo/base/bean/Music;->j:Ljava/lang/String;

    sget-object v2, Lcn/kuwo/base/cache/CacheCategoryNames;->f:Lcn/kuwo/base/cache/CacheCategoryNames;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/kuwo/base/imageloader/AsyncImageLoader;->a(Ljava/lang/String;Lcn/kuwo/base/cache/CacheCategoryNames;Lcn/kuwo/base/imageloader/ImageLoadListener;Z)V

    :cond_0
    return-void
.end method

.method public IHttpNotifyProgress(Lcn/kuwo/base/http/HttpSession;II[BI)V
    .locals 0

    return-void
.end method

.method public IHttpNotifyStart(Lcn/kuwo/base/http/HttpSession;ILcn/kuwo/base/http/HttpResult;)V
    .locals 0

    return-void
.end method
