.class final Lcn/kuwo/service/downloader/DownloadMgr$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/service/downloader/DownloadMgr$2;->a:I

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 10

    invoke-static {}, Lcn/kuwo/service/downloader/DownloadMgr;->b()[Lcn/kuwo/service/downloader/DownloadMgr;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_5

    aget-object v5, v3, v2

    if-nez v5, :cond_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-static {v5}, Lcn/kuwo/service/downloader/DownloadMgr;->a(Lcn/kuwo/service/downloader/DownloadMgr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget v8, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->a:I

    iget v9, p0, Lcn/kuwo/service/downloader/DownloadMgr$2;->a:I

    if-ne v8, v9, :cond_3

    iget-boolean v2, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->c:Z

    if-eqz v2, :cond_4

    invoke-static {v5}, Lcn/kuwo/service/downloader/DownloadMgr;->b(Lcn/kuwo/service/downloader/DownloadMgr;)Lcn/kuwo/service/downloader/DownloadCore;

    move-result-object v2

    invoke-virtual {v2}, Lcn/kuwo/service/downloader/DownloadCore;->a()V

    const/16 v2, 0x3e8

    invoke-static {v5, v2}, Lcn/kuwo/service/downloader/DownloadMgr;->a(Lcn/kuwo/service/downloader/DownloadMgr;I)V

    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method
