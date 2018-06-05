.class final Lcn/kuwo/service/downloader/DownloadCore$ProgressRunner;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field a:Lcn/kuwo/service/downloader/FinalDownloadTask;

.field b:I

.field c:I

.field d:F


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/kuwo/service/downloader/FinalDownloadTask;IIF)Lcn/kuwo/service/downloader/DownloadCore$ProgressRunner;
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/downloader/DownloadCore$ProgressRunner;->a:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iput p2, p0, Lcn/kuwo/service/downloader/DownloadCore$ProgressRunner;->b:I

    iput p3, p0, Lcn/kuwo/service/downloader/DownloadCore$ProgressRunner;->c:I

    iput p4, p0, Lcn/kuwo/service/downloader/DownloadCore$ProgressRunner;->d:F

    return-object p0
.end method

.method public call()V
    .locals 5

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->isExiting()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore$ProgressRunner;->a:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->d:Lcn/kuwo/service/DownloadDelegate;

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore$ProgressRunner;->a:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->a:I

    iget v2, p0, Lcn/kuwo/service/downloader/DownloadCore$ProgressRunner;->b:I

    iget v3, p0, Lcn/kuwo/service/downloader/DownloadCore$ProgressRunner;->c:I

    iget v4, p0, Lcn/kuwo/service/downloader/DownloadCore$ProgressRunner;->d:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcn/kuwo/service/DownloadDelegate;->DownloadDelegate_Progress(IIIF)V

    goto :goto_0
.end method
