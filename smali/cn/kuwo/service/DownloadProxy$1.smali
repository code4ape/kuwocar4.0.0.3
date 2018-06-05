.class Lcn/kuwo/service/DownloadProxy$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Ljava/lang/String;


# virtual methods
.method public call()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/DownloadProxy$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/service/downloader/strategies/FileStrategyBase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownCacheMgr;->j(Ljava/lang/String;)V

    return-void
.end method
