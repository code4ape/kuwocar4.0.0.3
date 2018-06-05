.class final Lcn/kuwo/service/downloader/DownloadMgr$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/kuwo/service/DownloadProxy$DownGroup;


# direct methods
.method constructor <init>(ILcn/kuwo/service/DownloadProxy$DownGroup;)V
    .locals 0

    iput p1, p0, Lcn/kuwo/service/downloader/DownloadMgr$1;->a:I

    iput-object p2, p0, Lcn/kuwo/service/downloader/DownloadMgr$1;->b:Lcn/kuwo/service/DownloadProxy$DownGroup;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 5

    invoke-static {}, Lcn/kuwo/service/downloader/DownloadMgr;->b()[Lcn/kuwo/service/downloader/DownloadMgr;

    move-result-object v0

    iget v1, p0, Lcn/kuwo/service/downloader/DownloadMgr$1;->a:I

    new-instance v2, Lcn/kuwo/service/downloader/DownloadMgr;

    iget-object v3, p0, Lcn/kuwo/service/downloader/DownloadMgr$1;->b:Lcn/kuwo/service/DownloadProxy$DownGroup;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcn/kuwo/service/downloader/DownloadMgr;-><init>(Lcn/kuwo/service/DownloadProxy$DownGroup;Lcn/kuwo/service/downloader/DownloadMgr$1;)V

    aput-object v2, v0, v1

    return-void
.end method
