.class public Lcn/kuwo/service/downloader/strategies/DownloadMusicStrategy;
.super Lcn/kuwo/service/downloader/strategies/MusicStrategyBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/service/downloader/strategies/MusicStrategyBase;-><init>()V

    return-void
.end method

.method public static d(Lcn/kuwo/service/downloader/FinalDownloadTask;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-static {v1}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/service/downloader/FinalDownloadTask;->e:Lcn/kuwo/base/bean/Music;

    iget-object v1, v1, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-static {v1}, Lcn/kuwo/base/util/KwFileUtils;->delInvalidFileNameStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/service/downloader/FinalDownloadTask;->e:Lcn/kuwo/base/bean/Music;

    iget-object v2, v2, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-static {v2}, Lcn/kuwo/base/util/KwFileUtils;->delInvalidFileNameStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/service/downloader/FinalDownloadTask;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcn/kuwo/service/downloader/FinalDownloadTask;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    iget-object v2, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->e:Lcn/kuwo/base/bean/Music;

    iget-wide v2, v1, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {v2, v3, v0}, Lcn/kuwo/service/downloader/DownCacheMgr;->a(JI)Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;

    move-result-object v1

    iget-object v2, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    iget-object v3, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->k:Ljava/lang/String;

    invoke-static {v2, v3}, Lcn/kuwo/service/downloader/DownCacheMgr;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->e:Lcn/kuwo/base/bean/Music;

    iget-wide v2, v0, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {v2, v3}, Lcn/kuwo/service/downloader/DownCacheMgr;->a(J)V

    if-eqz v1, :cond_1

    iget-object v0, v1, Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;->a:Ljava/lang/String;

    iget-object v2, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->deleteFile(Ljava/lang/String;)Z

    :cond_1
    iget-object v0, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->e:Lcn/kuwo/base/bean/Music;

    iget-object v1, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->k:Ljava/lang/String;

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    iget-object v0, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->e:Lcn/kuwo/base/bean/Music;

    iget-object v1, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->k:Ljava/lang/String;

    invoke-static {v1}, Lcn/kuwo/base/util/KwFileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->s:Ljava/lang/String;

    iget-object v0, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->e:Lcn/kuwo/base/bean/Music;

    iget-object v1, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->k:Ljava/lang/String;

    invoke-static {v1}, Lcn/kuwo/base/util/KwFileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcn/kuwo/base/bean/Music;->t:J

    iget v0, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->j:I

    if-lez v0, :cond_2

    iget-object v0, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->e:Lcn/kuwo/base/bean/Music;

    iget-wide v0, v0, Lcn/kuwo/base/bean/Music;->a:J

    iget v2, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->j:I

    iget-object v3, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/service/downloader/DownCacheMgr;->a(JILjava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcn/kuwo/service/downloader/strategies/DownloadMusicStrategy;->e(Lcn/kuwo/service/downloader/FinalDownloadTask;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcn/kuwo/service/downloader/FinalDownloadTask;)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Lcn/kuwo/service/downloader/strategies/MusicStrategyBase;->b(Lcn/kuwo/service/downloader/FinalDownloadTask;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcn/kuwo/service/downloader/FinalDownloadTask;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcn/kuwo/service/downloader/strategies/DownloadMusicStrategy;->d(Lcn/kuwo/service/downloader/FinalDownloadTask;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
