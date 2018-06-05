.class public final Lcn/kuwo/mod/lyric/LyricsListRunner;
.super Lcn/kuwo/mod/lyric/LyricsBaseRunner;


# direct methods
.method private a()V
    .locals 12

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move v1, v2

    move-object v4, v5

    move-object v6, v5

    :goto_0
    if-nez v4, :cond_1

    add-int/lit8 v3, v1, -0x1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsListRunner;->b:Lcn/kuwo/base/bean/Music;

    invoke-static {v1}, Lcn/kuwo/mod/lyric/LyricsStream;->c(Lcn/kuwo/base/bean/Music;)Lcn/kuwo/mod/lyric/LyricsDefine$LyricsListInfo;

    move-result-object v4

    iget-object v1, v4, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsListInfo;->a:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v8

    const-wide/16 v10, 0x3a98

    cmp-long v6, v6, v10

    if-lez v6, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-boolean v6, p0, Lcn/kuwo/mod/lyric/LyricsListRunner;->a:Z

    if-eqz v6, :cond_5

    :goto_1
    return-void

    :cond_1
    if-nez v4, :cond_3

    if-eqz v6, :cond_2

    iget v0, v6, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsListInfo;->b:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsListRunner;->b:Lcn/kuwo/base/bean/Music;

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->d:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    invoke-static {v0, v1}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->b(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsListRunner;->b:Lcn/kuwo/base/bean/Music;

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->c:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    invoke-static {v0, v1}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->b(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;)V

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsListRunner;->b:Lcn/kuwo/base/bean/Music;

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->d:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    invoke-static {v0, v1, v5}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Ljava/util/List;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsListRunner;->b:Lcn/kuwo/base/bean/Music;

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->b:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    invoke-static {v0, v1, v4}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Ljava/util/List;)V

    goto :goto_1

    :cond_5
    move-object v6, v4

    move-object v4, v1

    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcn/kuwo/mod/lyric/LyricsListRunner;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsListRunner;->b:Lcn/kuwo/base/bean/Music;

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->a:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    invoke-static {v0, v1}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->b(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;)V

    :cond_0
    iget-boolean v0, p0, Lcn/kuwo/mod/lyric/LyricsListRunner;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsListRunner;->b:Lcn/kuwo/base/bean/Music;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsListRunner;->b:Lcn/kuwo/base/bean/Music;

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->c:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    invoke-static {v0, v1}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->b(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcn/kuwo/mod/lyric/LyricsListRunner;->a:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/kuwo/mod/lyric/LyricsListRunner;->a()V

    goto :goto_0
.end method
