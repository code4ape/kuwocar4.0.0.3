.class public Lcn/kuwo/mod/lyric/BackgroudPicRunner;
.super Lcn/kuwo/mod/lyric/LyricsBaseRunner;


# direct methods
.method public constructor <init>(Lcn/kuwo/base/bean/Music;ZLcn/kuwo/base/bean/Music;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/mod/lyric/LyricsBaseRunner;-><init>()V

    iput-object p1, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->b:Lcn/kuwo/base/bean/Music;

    iput-boolean p2, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->d:Z

    iput-object p3, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->c:Lcn/kuwo/base/bean/Music;

    return-void
.end method

.method private a()V
    .locals 4

    const/4 v0, 0x0

    new-instance v2, Lcn/kuwo/mod/lyric/KwImage;

    invoke-direct {v2}, Lcn/kuwo/mod/lyric/KwImage;-><init>()V

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-virtual {v2, v1}, Lcn/kuwo/mod/lyric/KwImage;->a(Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;)V

    iget-boolean v1, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->d:Z

    if-nez v1, :cond_0

    const-string v0, "ajh.lrc"

    const-string v1, "readBackgroundFromCache background runner"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->b:Lcn/kuwo/base/bean/Music;

    invoke-virtual {v2, v0}, Lcn/kuwo/mod/lyric/KwImage;->c(Lcn/kuwo/base/bean/Music;)Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;

    move-result-object v0

    :cond_0
    iget-boolean v1, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->a:Z

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;->a:[B

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;->b:Z

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0, v0, v2}, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->a(Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;Lcn/kuwo/mod/lyric/KwImage;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0, v2}, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->b(Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;Lcn/kuwo/mod/lyric/KwImage;)V

    goto :goto_0
.end method

.method private a(Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;Lcn/kuwo/mod/lyric/KwImage;)V
    .locals 13

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;->a:[B

    invoke-virtual {p2, v0}, Lcn/kuwo/mod/lyric/KwImage;->a([B)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0, v2, p2}, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->b(Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;Lcn/kuwo/mod/lyric/KwImage;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->b:Lcn/kuwo/base/bean/Music;

    sget-object v3, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->b:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    iget-boolean v5, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->d:Z

    invoke-static {v1, v3, v0, v5}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Landroid/graphics/Bitmap;Z)V

    :cond_2
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v0, 0x2

    move v12, v0

    move v0, v1

    move-object v1, v2

    move v2, v12

    :goto_0
    if-nez v1, :cond_0

    add-int/lit8 v3, v2, -0x1

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->b:Lcn/kuwo/base/bean/Music;

    iget-boolean v2, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->d:Z

    iget-object v5, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->c:Lcn/kuwo/base/bean/Music;

    invoke-virtual {p2, v1, v2, v5, v4}, Lcn/kuwo/mod/lyric/KwImage;->a(Lcn/kuwo/base/bean/Music;ZLcn/kuwo/base/bean/Music;I)Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-wide/16 v10, 0x3a98

    cmp-long v2, v8, v10

    if-lez v2, :cond_3

    move v0, v4

    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->b:Lcn/kuwo/base/bean/Music;

    iget-object v5, v1, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;->a:[B

    invoke-virtual {p2, v2, v5}, Lcn/kuwo/mod/lyric/KwImage;->b(Lcn/kuwo/base/bean/Music;[B)V

    :cond_4
    iget-boolean v2, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->a:Z

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method private b(Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;Lcn/kuwo/mod/lyric/KwImage;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v2, 0x2

    move v4, v2

    move-object v3, p1

    move v2, v0

    :goto_0
    if-nez v3, :cond_2

    add-int/lit8 v5, v4, -0x1

    if-eqz v4, :cond_2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->b:Lcn/kuwo/base/bean/Music;

    iget-boolean v3, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->d:Z

    iget-object v4, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->c:Lcn/kuwo/base/bean/Music;

    invoke-virtual {p2, v0, v3, v4, v1}, Lcn/kuwo/mod/lyric/KwImage;->a(Lcn/kuwo/base/bean/Music;ZLcn/kuwo/base/bean/Music;I)Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-wide/16 v10, 0x3a98

    cmp-long v3, v8, v10

    if-lez v3, :cond_8

    move v2, v1

    move-object v3, v0

    move v0, v1

    :cond_0
    :goto_1
    iget-boolean v4, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->a:Z

    if-eqz v4, :cond_7

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-boolean v1, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->d:Z

    if-nez v1, :cond_3

    if-nez v3, :cond_3

    iget-object v1, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->b:Lcn/kuwo/base/bean/Music;

    invoke-virtual {p2, v1}, Lcn/kuwo/mod/lyric/KwImage;->e(Lcn/kuwo/base/bean/Music;)Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;

    move-result-object v3

    :cond_3
    iget-boolean v1, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->a:Z

    if-nez v1, :cond_1

    if-eqz v3, :cond_5

    iget-object v1, v3, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;->a:[B

    invoke-virtual {p2, v1}, Lcn/kuwo/mod/lyric/KwImage;->a([B)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->b:Lcn/kuwo/base/bean/Music;

    invoke-virtual {p2, v0, v1}, Lcn/kuwo/mod/lyric/KwImage;->a(Lcn/kuwo/base/bean/Music;Landroid/graphics/Bitmap;)V

    :cond_4
    iget-boolean v0, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->a:Z

    if-nez v0, :cond_1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->b:Lcn/kuwo/base/bean/Music;

    sget-object v2, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->b:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    iget-boolean v3, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->d:Z

    invoke-static {v0, v2, v1, v3}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Landroid/graphics/Bitmap;Z)V

    goto :goto_2

    :cond_5
    iget-boolean v0, p2, Lcn/kuwo/mod/lyric/KwImage;->a:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->b:Lcn/kuwo/base/bean/Music;

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->d:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    iget-boolean v2, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->d:Z

    invoke-static {v0, v1, v2}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->b(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Z)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->b:Lcn/kuwo/base/bean/Music;

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->c:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    iget-boolean v2, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->d:Z

    invoke-static {v0, v1, v2}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->b(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Z)V

    goto :goto_2

    :cond_7
    move v4, v5

    goto :goto_0

    :cond_8
    move-object v3, v0

    move v0, v1

    goto :goto_1
.end method

.method private b()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->d:Z

    if-nez v2, :cond_2

    const-string v2, "nowplay"

    const-string v3, "lyricbk_show"

    invoke-static {v2, v3, v0}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isWifi()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ""

    const-string v3, "2g3g_fecth_artist_big_picture_enable"

    invoke-static {v2, v3, v1}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isOnlyWifiConnect()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v0, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->b:Lcn/kuwo/base/bean/Music;

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->a:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    iget-boolean v2, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->d:Z

    invoke-static {v0, v1, v2}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->b(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Z)V

    :cond_0
    iget-boolean v0, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->b:Lcn/kuwo/base/bean/Music;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->b:Lcn/kuwo/base/bean/Music;

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->c:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    iget-boolean v2, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->d:Z

    invoke-static {v0, v1, v2}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->b(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->a:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->a()V

    goto :goto_0
.end method
