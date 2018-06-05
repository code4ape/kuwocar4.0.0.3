.class Lcn/kuwo/service/downloader/DownloadMgr$6;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/service/downloader/DownloadMgr;


# direct methods
.method constructor <init>(Lcn/kuwo/service/downloader/DownloadMgr;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/downloader/DownloadMgr$6;->a:Lcn/kuwo/service/downloader/DownloadMgr;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadMgr$6;->a:Lcn/kuwo/service/downloader/DownloadMgr;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcn/kuwo/service/downloader/DownloadMgr;->a(Lcn/kuwo/service/downloader/DownloadMgr;I)V

    return-void
.end method
