.class Lcn/kuwo/service/downloader/DownloadCore$3;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/service/downloader/FinalDownloadTask;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcn/kuwo/service/DownloadDelegate$DataSrc;

.field final synthetic f:Lcn/kuwo/service/DownloadDelegate$HttpInfo;

.field final synthetic g:Lcn/kuwo/service/downloader/DownloadCore;


# direct methods
.method constructor <init>(Lcn/kuwo/service/downloader/DownloadCore;Lcn/kuwo/service/downloader/FinalDownloadTask;IIILcn/kuwo/service/DownloadDelegate$DataSrc;Lcn/kuwo/service/DownloadDelegate$HttpInfo;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/downloader/DownloadCore$3;->g:Lcn/kuwo/service/downloader/DownloadCore;

    iput-object p2, p0, Lcn/kuwo/service/downloader/DownloadCore$3;->a:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iput p3, p0, Lcn/kuwo/service/downloader/DownloadCore$3;->b:I

    iput p4, p0, Lcn/kuwo/service/downloader/DownloadCore$3;->c:I

    iput p5, p0, Lcn/kuwo/service/downloader/DownloadCore$3;->d:I

    iput-object p6, p0, Lcn/kuwo/service/downloader/DownloadCore$3;->e:Lcn/kuwo/service/DownloadDelegate$DataSrc;

    iput-object p7, p0, Lcn/kuwo/service/downloader/DownloadCore$3;->f:Lcn/kuwo/service/DownloadDelegate$HttpInfo;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 9

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->isExiting()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore$3;->a:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->d:Lcn/kuwo/service/DownloadDelegate;

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore$3;->a:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->a:I

    iget-object v2, p0, Lcn/kuwo/service/downloader/DownloadCore$3;->a:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v2, v2, Lcn/kuwo/service/downloader/FinalDownloadTask;->h:Ljava/lang/String;

    iget-object v3, p0, Lcn/kuwo/service/downloader/DownloadCore$3;->a:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v3, v3, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    iget v4, p0, Lcn/kuwo/service/downloader/DownloadCore$3;->b:I

    iget v5, p0, Lcn/kuwo/service/downloader/DownloadCore$3;->c:I

    iget v6, p0, Lcn/kuwo/service/downloader/DownloadCore$3;->d:I

    iget-object v7, p0, Lcn/kuwo/service/downloader/DownloadCore$3;->e:Lcn/kuwo/service/DownloadDelegate$DataSrc;

    iget-object v8, p0, Lcn/kuwo/service/downloader/DownloadCore$3;->f:Lcn/kuwo/service/DownloadDelegate$HttpInfo;

    invoke-interface/range {v0 .. v8}, Lcn/kuwo/service/DownloadDelegate;->DownloadDelegate_Start(ILjava/lang/String;Ljava/lang/String;IIILcn/kuwo/service/DownloadDelegate$DataSrc;Lcn/kuwo/service/DownloadDelegate$HttpInfo;)V

    goto :goto_0
.end method
