.class public Lcn/kuwo/mod/lyric/HeadPicRunner;
.super Lcn/kuwo/mod/lyric/LyricsBaseRunner;


# direct methods
.method public constructor <init>(Lcn/kuwo/base/bean/Music;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/mod/lyric/LyricsBaseRunner;-><init>()V

    iput-object p1, p0, Lcn/kuwo/mod/lyric/HeadPicRunner;->b:Lcn/kuwo/base/bean/Music;

    return-void
.end method

.method private a()V
    .locals 4

    new-instance v1, Lcn/kuwo/mod/lyric/KwImage;

    invoke-direct {v1}, Lcn/kuwo/mod/lyric/KwImage;-><init>()V

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/lyric/KwImage;->a(Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;)V

    iget-object v0, p0, Lcn/kuwo/mod/lyric/HeadPicRunner;->b:Lcn/kuwo/base/bean/Music;

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/lyric/KwImage;->a(Lcn/kuwo/base/bean/Music;)Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;

    move-result-object v2

    iget-boolean v0, p0, Lcn/kuwo/mod/lyric/HeadPicRunner;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;->a:[B

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;->b:Z

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0, v2, v1}, Lcn/kuwo/mod/lyric/HeadPicRunner;->a(Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;Lcn/kuwo/mod/lyric/KwImage;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2, v1}, Lcn/kuwo/mod/lyric/HeadPicRunner;->b(Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;Lcn/kuwo/mod/lyric/KwImage;)V

    goto :goto_0
.end method

.method private a(Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;Lcn/kuwo/mod/lyric/KwImage;)V
    .locals 10

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;->a:[B

    invoke-virtual {p2, v0}, Lcn/kuwo/mod/lyric/KwImage;->a([B)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0, v2, p2}, Lcn/kuwo/mod/lyric/HeadPicRunner;->b(Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;Lcn/kuwo/mod/lyric/KwImage;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcn/kuwo/mod/lyric/HeadPicRunner;->b:Lcn/kuwo/base/bean/Music;

    sget-object v3, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->b:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    invoke-static {v1, v3, v0}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Landroid/graphics/Bitmap;)V

    :cond_2
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v0, 0x2

    move-object v3, v2

    move v2, v1

    :goto_0
    if-nez v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcn/kuwo/mod/lyric/HeadPicRunner;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/kuwo/mod/lyric/HeadPicRunner;->b:Lcn/kuwo/base/bean/Music;

    invoke-virtual {p2, v0}, Lcn/kuwo/mod/lyric/KwImage;->b(Lcn/kuwo/base/bean/Music;)Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x3a98

    cmp-long v0, v6, v8

    if-lez v0, :cond_4

    const/4 v2, 0x1

    move v0, v2

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcn/kuwo/mod/lyric/HeadPicRunner;->b:Lcn/kuwo/base/bean/Music;

    iget-object v6, v2, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;->a:[B

    invoke-virtual {p2, v3, v6}, Lcn/kuwo/mod/lyric/KwImage;->b(Lcn/kuwo/base/bean/Music;[B)V

    :cond_3
    iget-boolean v3, p0, Lcn/kuwo/mod/lyric/HeadPicRunner;->a:Z

    if-nez v3, :cond_0

    move-object v3, v2

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    move-object v2, v3

    goto :goto_1
.end method

.method private b(Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;Lcn/kuwo/mod/lyric/KwImage;)V
    .locals 12

    const/4 v1, 0x1

    const/4 v0, 0x0

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

    invoke-direct {p0}, Lcn/kuwo/mod/lyric/HeadPicRunner;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/lyric/HeadPicRunner;->b:Lcn/kuwo/base/bean/Music;

    invoke-virtual {p2, v0}, Lcn/kuwo/mod/lyric/KwImage;->b(Lcn/kuwo/base/bean/Music;)Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;

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
    iget-boolean v4, p0, Lcn/kuwo/mod/lyric/HeadPicRunner;->a:Z

    if-eqz v4, :cond_7

    :cond_1
    :goto_2
    return-void

    :cond_2
    if-nez v3, :cond_3

    iget-object v1, p0, Lcn/kuwo/mod/lyric/HeadPicRunner;->b:Lcn/kuwo/base/bean/Music;

    invoke-virtual {p2, v1}, Lcn/kuwo/mod/lyric/KwImage;->e(Lcn/kuwo/base/bean/Music;)Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;

    move-result-object v3

    :cond_3
    iget-boolean v1, p0, Lcn/kuwo/mod/lyric/HeadPicRunner;->a:Z

    if-nez v1, :cond_1

    if-eqz v3, :cond_5

    iget-object v1, v3, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;->a:[B

    invoke-virtual {p2, v1}, Lcn/kuwo/mod/lyric/KwImage;->a([B)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/kuwo/mod/lyric/HeadPicRunner;->b:Lcn/kuwo/base/bean/Music;

    invoke-virtual {p2, v0, v1}, Lcn/kuwo/mod/lyric/KwImage;->a(Lcn/kuwo/base/bean/Music;Landroid/graphics/Bitmap;)V

    :cond_4
    iget-boolean v0, p0, Lcn/kuwo/mod/lyric/HeadPicRunner;->a:Z

    if-nez v0, :cond_1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcn/kuwo/mod/lyric/HeadPicRunner;->b:Lcn/kuwo/base/bean/Music;

    sget-object v2, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->b:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    invoke-static {v0, v2, v1}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_5
    iget-boolean v0, p2, Lcn/kuwo/mod/lyric/KwImage;->a:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/kuwo/mod/lyric/HeadPicRunner;->b:Lcn/kuwo/base/bean/Music;

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->d:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    invoke-static {v0, v1}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcn/kuwo/mod/lyric/HeadPicRunner;->b:Lcn/kuwo/base/bean/Music;

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->c:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    invoke-static {v0, v1}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;)V

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
    .locals 1

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isOnlyWifiConnect()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcn/kuwo/mod/lyric/HeadPicRunner;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/lyric/HeadPicRunner;->b:Lcn/kuwo/base/bean/Music;

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->a:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    invoke-static {v0, v1}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;)V

    :cond_0
    iget-boolean v0, p0, Lcn/kuwo/mod/lyric/HeadPicRunner;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/lyric/HeadPicRunner;->b:Lcn/kuwo/base/bean/Music;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/lyric/HeadPicRunner;->b:Lcn/kuwo/base/bean/Music;

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->c:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    invoke-static {v0, v1}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcn/kuwo/mod/lyric/HeadPicRunner;->a:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/kuwo/mod/lyric/HeadPicRunner;->a()V

    goto :goto_0
.end method
