.class final Lcn/kuwo/service/downloader/DownloadMgr$3;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 6

    invoke-static {}, Lcn/kuwo/service/downloader/DownloadMgr;->b()[Lcn/kuwo/service/downloader/DownloadMgr;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    if-nez v5, :cond_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-static {v5}, Lcn/kuwo/service/downloader/DownloadMgr;->b(Lcn/kuwo/service/downloader/DownloadMgr;)Lcn/kuwo/service/downloader/DownloadCore;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/downloader/DownloadCore;->a()V

    invoke-static {v5}, Lcn/kuwo/service/downloader/DownloadMgr;->a(Lcn/kuwo/service/downloader/DownloadMgr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_0

    invoke-static {v5}, Lcn/kuwo/service/downloader/DownloadMgr;->a(Lcn/kuwo/service/downloader/DownloadMgr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_3
    return-void
.end method
