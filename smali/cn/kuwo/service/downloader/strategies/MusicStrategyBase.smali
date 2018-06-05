.class public Lcn/kuwo/service/downloader/strategies/MusicStrategyBase;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/service/downloader/strategies/IStrategy;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    invoke-static {v0}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuwo/service/downloader/strategies/MusicStrategyBase;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%s%d.%d.%s.%s.%s"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcn/kuwo/service/downloader/strategies/MusicStrategyBase;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    aput-object p4, v2, v3

    const/4 v3, 0x5

    const-string v4, "dat"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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
    .locals 5

    iget-object v0, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->e:Lcn/kuwo/base/bean/Music;

    iget-wide v0, v0, Lcn/kuwo/base/bean/Music;->a:J

    iget v2, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->j:I

    iget-object v3, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->m:Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;

    iget-object v3, v3, Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;->c:Ljava/lang/String;

    iget-object v4, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcn/kuwo/service/downloader/strategies/MusicStrategyBase;->a(JILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcn/kuwo/service/downloader/FinalDownloadTask;)Ljava/lang/String;
    .locals 6

    iget-object v0, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownCacheMgr;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%s%d.%d.%s.%s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcn/kuwo/service/downloader/strategies/MusicStrategyBase;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->e:Lcn/kuwo/base/bean/Music;

    iget-wide v4, v4, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->j:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->i:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "song"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    goto :goto_0
.end method

.method protected final e(Lcn/kuwo/service/downloader/FinalDownloadTask;)V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    iget-object v2, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->e:Lcn/kuwo/base/bean/Music;

    iget-object v2, v2, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_music"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "album"

    iget-object v2, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->e:Lcn/kuwo/base/bean/Music;

    iget-object v2, v2, Lcn/kuwo/base/bean/Music;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "artist"

    iget-object v2, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->e:Lcn/kuwo/base/bean/Music;

    iget-object v2, v2, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mime_type"

    iget-object v2, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_data"

    iget-object v2, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/kwmusiccar/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcn/kuwo/kwmusiccar/App;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x2

    invoke-static {v0}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_1
    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcn/kuwo/kwmusiccar/App;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
