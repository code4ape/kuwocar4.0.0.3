.class Lcn/kuwo/service/DownloadProxy$4;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/base/bean/Music;

.field final synthetic b:Lcn/kuwo/service/DownloadProxy;


# direct methods
.method constructor <init>(Lcn/kuwo/service/DownloadProxy;Lcn/kuwo/base/bean/Music;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/DownloadProxy$4;->b:Lcn/kuwo/service/DownloadProxy;

    iput-object p2, p0, Lcn/kuwo/service/DownloadProxy$4;->a:Lcn/kuwo/base/bean/Music;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/DownloadProxy$4;->a:Lcn/kuwo/base/bean/Music;

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownloadMgr;->b(Lcn/kuwo/base/bean/Music;)V

    return-void
.end method
