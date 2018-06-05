.class Lcn/kuwo/service/downloader/DownloadMgr$5;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/service/downloader/DownloadMgr;


# direct methods
.method constructor <init>(Lcn/kuwo/service/downloader/DownloadMgr;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/downloader/DownloadMgr$5;->a:Lcn/kuwo/service/downloader/DownloadMgr;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadMgr$5;->a:Lcn/kuwo/service/downloader/DownloadMgr;

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownloadMgr;->c(Lcn/kuwo/service/downloader/DownloadMgr;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "do schedule"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadMgr$5;->a:Lcn/kuwo/service/downloader/DownloadMgr;

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownloadMgr;->a(Lcn/kuwo/service/downloader/DownloadMgr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadMgr$5;->a:Lcn/kuwo/service/downloader/DownloadMgr;

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownloadMgr;->a(Lcn/kuwo/service/downloader/DownloadMgr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-boolean v1, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->c:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadMgr$5;->a:Lcn/kuwo/service/downloader/DownloadMgr;

    invoke-static {v1}, Lcn/kuwo/service/downloader/DownloadMgr;->b(Lcn/kuwo/service/downloader/DownloadMgr;)Lcn/kuwo/service/downloader/DownloadCore;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/service/downloader/DownloadCore;->a()V

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadMgr$5;->a:Lcn/kuwo/service/downloader/DownloadMgr;

    invoke-static {v1}, Lcn/kuwo/service/downloader/DownloadMgr;->b(Lcn/kuwo/service/downloader/DownloadMgr;)Lcn/kuwo/service/downloader/DownloadCore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/kuwo/service/downloader/DownloadCore;->a(Lcn/kuwo/service/downloader/FinalDownloadTask;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadMgr$5;->a:Lcn/kuwo/service/downloader/DownloadMgr;

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownloadMgr;->c(Lcn/kuwo/service/downloader/DownloadMgr;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no more task"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
