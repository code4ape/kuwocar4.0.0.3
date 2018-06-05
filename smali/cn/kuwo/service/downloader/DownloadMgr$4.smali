.class Lcn/kuwo/service/downloader/DownloadMgr$4;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/service/downloader/FinalDownloadTask;

.field final synthetic b:Lcn/kuwo/service/downloader/DownloadMgr;


# direct methods
.method constructor <init>(Lcn/kuwo/service/downloader/DownloadMgr;Lcn/kuwo/service/downloader/FinalDownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/downloader/DownloadMgr$4;->b:Lcn/kuwo/service/downloader/DownloadMgr;

    iput-object p2, p0, Lcn/kuwo/service/downloader/DownloadMgr$4;->a:Lcn/kuwo/service/downloader/FinalDownloadTask;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadMgr$4;->b:Lcn/kuwo/service/downloader/DownloadMgr;

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadMgr$4;->a:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->f:Lcn/kuwo/service/DownloadProxy$DownType;

    invoke-static {v0, v1}, Lcn/kuwo/service/downloader/DownloadMgr;->a(Lcn/kuwo/service/downloader/DownloadMgr;Lcn/kuwo/service/DownloadProxy$DownType;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadMgr$4;->a:Lcn/kuwo/service/downloader/FinalDownloadTask;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method
