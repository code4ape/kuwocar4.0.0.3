.class Lcn/kuwo/service/downloader/strategies/PlayMusicStrategy$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/service/downloader/FinalDownloadTask;

.field final synthetic b:Lcn/kuwo/service/downloader/strategies/PlayMusicStrategy;


# direct methods
.method constructor <init>(Lcn/kuwo/service/downloader/strategies/PlayMusicStrategy;Lcn/kuwo/service/downloader/FinalDownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/downloader/strategies/PlayMusicStrategy$1;->b:Lcn/kuwo/service/downloader/strategies/PlayMusicStrategy;

    iput-object p2, p0, Lcn/kuwo/service/downloader/strategies/PlayMusicStrategy$1;->a:Lcn/kuwo/service/downloader/FinalDownloadTask;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/service/downloader/strategies/PlayMusicStrategy$1;->b:Lcn/kuwo/service/downloader/strategies/PlayMusicStrategy;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->j()Lcn/kuwo/mod/vip/IVipMgr;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/service/downloader/strategies/PlayMusicStrategy$1;->a:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v2, v2, Lcn/kuwo/service/downloader/FinalDownloadTask;->g:Lcn/kuwo/service/DownloadProxy$Quality;

    invoke-interface {v1, v2}, Lcn/kuwo/mod/vip/IVipMgr;->a(Lcn/kuwo/service/DownloadProxy$Quality;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/kuwo/service/downloader/strategies/PlayMusicStrategy;->a(Lcn/kuwo/service/downloader/strategies/PlayMusicStrategy;I)I

    return-void
.end method
