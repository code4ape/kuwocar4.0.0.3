.class Lcn/kuwo/service/downloader/DownloadCore$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/service/downloader/FinalDownloadTask;

.field final synthetic b:Lcn/kuwo/service/downloader/DownloadCore;


# direct methods
.method constructor <init>(Lcn/kuwo/service/downloader/DownloadCore;Lcn/kuwo/service/downloader/FinalDownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/downloader/DownloadCore$1;->b:Lcn/kuwo/service/downloader/DownloadCore;

    iput-object p2, p0, Lcn/kuwo/service/downloader/DownloadCore$1;->a:Lcn/kuwo/service/downloader/FinalDownloadTask;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->isExiting()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore$1;->a:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->d:Lcn/kuwo/service/DownloadDelegate;

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore$1;->a:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->a:I

    sget-object v2, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->a:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    iget-object v3, p0, Lcn/kuwo/service/downloader/DownloadCore$1;->a:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v3, v3, Lcn/kuwo/service/downloader/FinalDownloadTask;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcn/kuwo/service/DownloadDelegate;->DownloadDelegate_Finish(ILcn/kuwo/service/DownloadDelegate$ErrorCode;Ljava/lang/String;)V

    goto :goto_0
.end method
