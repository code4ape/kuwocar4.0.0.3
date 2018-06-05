.class public Lcn/kuwo/service/downloader/strategies/FileStrategyBase;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/service/downloader/strategies/IStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcn/kuwo/service/downloader/FinalDownloadTask;)Z
    .locals 2

    iget-object v0, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    iget-object v1, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/kuwo/service/downloader/DownCacheMgr;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Lcn/kuwo/service/downloader/FinalDownloadTask;)Ljava/lang/String;
    .locals 1

    iget-object v0, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->k:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/service/downloader/strategies/FileStrategyBase;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcn/kuwo/service/downloader/FinalDownloadTask;)Ljava/lang/String;
    .locals 1

    iget-object v0, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->k:Ljava/lang/String;

    return-object v0
.end method
