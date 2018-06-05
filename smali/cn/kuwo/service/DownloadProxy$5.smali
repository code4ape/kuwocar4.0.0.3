.class Lcn/kuwo/service/DownloadProxy$5;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcn/kuwo/service/DownloadProxy$ChecHaskLocalFileDelegate;


# virtual methods
.method public call()V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/service/DownloadProxy$5;->a:Ljava/util/List;

    iget v1, p0, Lcn/kuwo/service/DownloadProxy$5;->b:I

    iget v2, p0, Lcn/kuwo/service/DownloadProxy$5;->c:I

    iget-object v3, p0, Lcn/kuwo/service/DownloadProxy$5;->d:Lcn/kuwo/service/DownloadProxy$ChecHaskLocalFileDelegate;

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/service/downloader/DownloadMgr;->a(Ljava/util/List;IILcn/kuwo/service/DownloadProxy$ChecHaskLocalFileDelegate;)V

    return-void
.end method
