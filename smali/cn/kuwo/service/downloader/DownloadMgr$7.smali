.class final Lcn/kuwo/service/downloader/DownloadMgr$7;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/service/DownloadProxy$ChecHaskLocalFileDelegate;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:I

.field final synthetic d:I


# direct methods
.method constructor <init>(Lcn/kuwo/service/DownloadProxy$ChecHaskLocalFileDelegate;Ljava/util/List;II)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/downloader/DownloadMgr$7;->a:Lcn/kuwo/service/DownloadProxy$ChecHaskLocalFileDelegate;

    iput-object p2, p0, Lcn/kuwo/service/downloader/DownloadMgr$7;->b:Ljava/util/List;

    iput p3, p0, Lcn/kuwo/service/downloader/DownloadMgr$7;->c:I

    iput p4, p0, Lcn/kuwo/service/downloader/DownloadMgr$7;->d:I

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadMgr$7;->a:Lcn/kuwo/service/DownloadProxy$ChecHaskLocalFileDelegate;

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadMgr$7;->b:Ljava/util/List;

    iget v2, p0, Lcn/kuwo/service/downloader/DownloadMgr$7;->c:I

    iget v3, p0, Lcn/kuwo/service/downloader/DownloadMgr$7;->d:I

    invoke-interface {v0, v1, v2, v3}, Lcn/kuwo/service/DownloadProxy$ChecHaskLocalFileDelegate;->a(Ljava/util/List;II)V

    return-void
.end method
