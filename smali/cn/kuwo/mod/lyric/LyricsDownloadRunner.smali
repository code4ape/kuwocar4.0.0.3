.class public final Lcn/kuwo/mod/lyric/LyricsDownloadRunner;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/mod/lyric/LyricsDownloadRunner;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcn/kuwo/base/bean/Music;
    .locals 4

    const/4 v0, 0x0

    const-class v1, Lcn/kuwo/mod/lyric/LyricsDownloadRunner;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcn/kuwo/mod/lyric/LyricsDownloadRunner;->a:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v2, Lcn/kuwo/mod/lyric/LyricsDownloadRunner;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    sput-object v2, Lcn/kuwo/mod/lyric/LyricsDownloadRunner;->a:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDownloadRunner;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    sget-object v2, Lcn/kuwo/mod/lyric/LyricsDownloadRunner;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized a(Lcn/kuwo/base/bean/Music;)Z
    .locals 3

    const-class v1, Lcn/kuwo/mod/lyric/LyricsDownloadRunner;

    monitor-enter v1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    :try_start_0
    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDownloadRunner;->a:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcn/kuwo/mod/lyric/LyricsDownloadRunner;->a:Ljava/util/List;

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDownloadRunner;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcn/kuwo/mod/lyric/LyricsDownloadRunner;

    invoke-direct {v0}, Lcn/kuwo/mod/lyric/LyricsDownloadRunner;-><init>()V

    sget-object v2, Lcn/kuwo/base/util/KwThreadPool$JobType;->NET:Lcn/kuwo/base/util/KwThreadPool$JobType;

    invoke-static {v2, v0}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDownloadRunner;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Lcn/kuwo/base/bean/Music;)V
    .locals 11

    invoke-static {p1}, Lcn/kuwo/mod/lyric/LyricsStream;->b(Lcn/kuwo/base/bean/Music;)Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;

    move-result-object v2

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v0, 0x2

    move v10, v1

    move-object v1, v2

    move v2, v10

    :goto_0
    if-nez v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/kuwo/mod/lyric/LyricsStream;->a(Lcn/kuwo/base/bean/Music;[I)Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x3a98

    cmp-long v0, v6, v8

    if-lez v0, :cond_1

    const/4 v0, 0x1

    move v2, v0

    move v0, v1

    move-object v1, v3

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    move v0, v1

    move-object v1, v3

    goto :goto_0
.end method

.method private b()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

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

.method private c(Lcn/kuwo/base/bean/Music;)V
    .locals 11

    new-instance v3, Lcn/kuwo/mod/lyric/KwImage;

    invoke-direct {v3}, Lcn/kuwo/mod/lyric/KwImage;-><init>()V

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-virtual {v3, v0}, Lcn/kuwo/mod/lyric/KwImage;->a(Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;)V

    invoke-virtual {v3, p1}, Lcn/kuwo/mod/lyric/KwImage;->a(Lcn/kuwo/base/bean/Music;)Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;

    move-result-object v2

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v0, 0x2

    move v10, v0

    move v0, v1

    move v1, v10

    :goto_0
    if-nez v2, :cond_1

    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {v3, p1}, Lcn/kuwo/mod/lyric/KwImage;->b(Lcn/kuwo/base/bean/Music;)Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x3a98

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v6, v1, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;->a:[B

    invoke-virtual {v3, p1, v6}, Lcn/kuwo/mod/lyric/KwImage;->b(Lcn/kuwo/base/bean/Music;[B)V

    move v10, v2

    move-object v2, v1

    move v1, v10

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    move v10, v2

    move-object v2, v1

    move v1, v10

    goto :goto_0
.end method

.method private d(Lcn/kuwo/base/bean/Music;)V
    .locals 12

    const/4 v3, 0x0

    new-instance v5, Lcn/kuwo/mod/lyric/KwImage;

    invoke-direct {v5}, Lcn/kuwo/mod/lyric/KwImage;-><init>()V

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-virtual {v5, v0}, Lcn/kuwo/mod/lyric/KwImage;->a(Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;)V

    invoke-virtual {v5, p1}, Lcn/kuwo/mod/lyric/KwImage;->c(Lcn/kuwo/base/bean/Music;)Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v0, 0x2

    move-object v4, v1

    move v1, v0

    move v0, v3

    :goto_0
    if-nez v4, :cond_1

    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/kuwo/mod/lyric/LyricsDownloadRunner;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "ajh"

    const-string v4, "Lrc downloader"

    invoke-static {v1, v4}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v4, 0x5

    invoke-virtual {v5, p1, v3, v1, v4}, Lcn/kuwo/mod/lyric/KwImage;->a(Lcn/kuwo/base/bean/Music;ZLcn/kuwo/base/bean/Music;I)Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-wide/16 v10, 0x3a98

    cmp-long v4, v8, v10

    if-lez v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v4, v1, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;->a:[B

    invoke-virtual {v5, p1, v4}, Lcn/kuwo/mod/lyric/KwImage;->b(Lcn/kuwo/base/bean/Music;[B)V

    move-object v4, v1

    move v1, v2

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    move-object v4, v1

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcn/kuwo/mod/lyric/LyricsDownloadRunner;->a()Lcn/kuwo/base/bean/Music;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcn/kuwo/mod/lyric/LyricsDownloadRunner;->b(Lcn/kuwo/base/bean/Music;)V

    invoke-direct {p0, v0}, Lcn/kuwo/mod/lyric/LyricsDownloadRunner;->c(Lcn/kuwo/base/bean/Music;)V

    const-string v1, "ajh.lrc"

    const-string v2, "lrc download lrc"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/kuwo/mod/lyric/LyricsDownloadRunner;->d(Lcn/kuwo/base/bean/Music;)V

    invoke-static {}, Lcn/kuwo/mod/lyric/LyricsDownloadRunner;->a()Lcn/kuwo/base/bean/Music;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method
