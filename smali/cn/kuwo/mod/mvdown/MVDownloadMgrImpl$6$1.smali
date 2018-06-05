.class Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:F

.field final synthetic d:I

.field final synthetic e:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;IIFI)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$1;->e:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;

    iput p2, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$1;->a:I

    iput p3, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$1;->b:I

    iput p4, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$1;->c:F

    iput p5, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$1;->d:I

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    iget v0, v0, Lcn/kuwo/base/bean/DownloadTask;->a:I

    iget v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$1;->a:I

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    iget-object v0, v0, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$1;->b:I

    int-to-long v2, v1

    iput-wide v2, v0, Lcn/kuwo/base/bean/Music;->u:J

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    iget v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$1;->c:F

    iput v1, v0, Lcn/kuwo/base/bean/DownloadTask;->d:F

    iget v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$1;->d:I

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    iget v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$1;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$1;->d:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcn/kuwo/base/bean/DownloadTask;->e:F

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$1;->e:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;

    iget-object v0, v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;->a:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;)Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v1

    iget-object v1, v1, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    sget-wide v2, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->b(Lcn/kuwo/base/bean/Music;J)I

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$1;->e:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;

    iget-object v0, v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;->a:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->b(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;Lcn/kuwo/base/bean/DownloadTask;)V

    :cond_1
    return-void
.end method
