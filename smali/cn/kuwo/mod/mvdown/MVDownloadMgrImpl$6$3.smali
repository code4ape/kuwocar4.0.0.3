.class Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$3;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;II)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$3;->c:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;

    iput p2, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$3;->a:I

    iput p3, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$3;->b:I

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    iget v0, v0, Lcn/kuwo/base/bean/DownloadTask;->a:I

    iget v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$3;->a:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    iget-object v0, v0, Lcn/kuwo/base/bean/DownloadTask;->b:Lcn/kuwo/base/bean/Music;

    iget v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$3;->b:I

    int-to-long v2, v1

    iput-wide v2, v0, Lcn/kuwo/base/bean/Music;->t:J

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    sget-object v1, Lcn/kuwo/mod/download/DownloadState;->c:Lcn/kuwo/mod/download/DownloadState;

    iput-object v1, v0, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$3;->c:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;

    iget-object v0, v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;->a:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->j()Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;Lcn/kuwo/base/bean/DownloadTask;)V

    :cond_0
    return-void
.end method
