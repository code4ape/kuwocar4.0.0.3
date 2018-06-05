.class Lcn/kuwo/service/DownloadProxy$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/base/bean/Music;


# virtual methods
.method public call()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/DownloadProxy$2;->a:Lcn/kuwo/base/bean/Music;

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownloadMgr;->a(Lcn/kuwo/base/bean/Music;)V

    return-void
.end method
