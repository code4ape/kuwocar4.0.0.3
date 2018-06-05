.class public final Lcn/kuwo/service/downloader/antistealing/AntiStealing;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/base/http/IHttpNotify;
.implements Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$OnFinishedListener;


# static fields
.field private static final b:[Lcn/kuwo/base/bean/MusicQuality;

.field private static c:Lcn/kuwo/core/observers/ext/AppObserver;

.field private static j:I

.field private static k:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

.field private static l:Ljava/util/HashMap;


# instance fields
.field private a:Ljava/lang/String;

.field private d:Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingDelegate;

.field private e:I

.field private f:Lcn/kuwo/base/http/HttpSession;

.field private g:Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/kuwo/base/bean/MusicQuality;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcn/kuwo/base/bean/MusicQuality;->a:Lcn/kuwo/base/bean/MusicQuality;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcn/kuwo/base/bean/MusicQuality;->b:Lcn/kuwo/base/bean/MusicQuality;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcn/kuwo/base/bean/MusicQuality;->c:Lcn/kuwo/base/bean/MusicQuality;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcn/kuwo/base/bean/MusicQuality;->d:Lcn/kuwo/base/bean/MusicQuality;

    aput-object v2, v0, v1

    sput-object v0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->b:[Lcn/kuwo/base/bean/MusicQuality;

    const/16 v0, 0x64

    sput v0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->j:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->l:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingDelegate;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AntiStealing"

    iput-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->a:Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->d:Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingDelegate;

    sget-object v0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->c:Lcn/kuwo/core/observers/ext/AppObserver;

    if-nez v0, :cond_1

    new-instance v0, Lcn/kuwo/service/downloader/antistealing/AntiStealing$1;

    invoke-direct {v0, p0}, Lcn/kuwo/service/downloader/antistealing/AntiStealing$1;-><init>(Lcn/kuwo/service/downloader/antistealing/AntiStealing;)V

    sput-object v0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->c:Lcn/kuwo/core/observers/ext/AppObserver;

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/service/downloader/antistealing/AntiStealing$2;

    invoke-direct {v1, p0}, Lcn/kuwo/service/downloader/antistealing/AntiStealing$2;-><init>(Lcn/kuwo/service/downloader/antistealing/AntiStealing;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcn/kuwo/service/downloader/antistealing/AntiStealing;)I
    .locals 1

    iget v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->e:I

    return v0
.end method

.method private a(Ljava/lang/String;)Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;
    .locals 8

    const/4 v0, 0x0

    const-string v1, "\\n|\\r\\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v1, v4

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;

    invoke-direct {v1}, Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;-><init>()V

    array-length v5, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_8

    aget-object v2, v4, v3

    const-string v6, "="

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "format="

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    iput-object v6, v1, Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;->a:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v7, "bitrate="

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;->d:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    :cond_5
    const-string v7, "url="

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    iput-object v6, v1, Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;->b:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string v7, "sig="

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    iput-object v6, v1, Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;->c:Ljava/lang/String;

    goto :goto_2

    :cond_7
    const-string v7, "quality="

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v6, v1, Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;->e:Ljava/lang/String;

    goto :goto_2

    :cond_8
    iget-object v2, v1, Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method private a(Lcn/kuwo/service/DownloadProxy$Quality;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->g:Lcn/kuwo/service/DownloadProxy$Quality;

    if-ne p1, v0, :cond_0

    const-string v0, "MP4"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->f:Lcn/kuwo/service/DownloadProxy$Quality;

    if-ne p1, v0, :cond_1

    const-string v0, "MP4L"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcn/kuwo/core/messagemgr/ThreadMessageHandler;)V
    .locals 0

    sput-object p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->k:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    return-void
.end method

.method private a(Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;)V
    .locals 2

    iget-object v0, p1, Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/CdnUtils;->translateDownloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;->b:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->d:Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingDelegate;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingDelegate;->onAntiStealingFinished(Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;Z)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->e:I

    return-void
.end method

.method static synthetic a(Lcn/kuwo/service/downloader/antistealing/AntiStealing;Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->a(Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;)V

    return-void
.end method

.method private b(Lcn/kuwo/service/DownloadProxy$Quality;)Lcn/kuwo/base/bean/MusicQuality;
    .locals 2

    sget-object v0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->b:[Lcn/kuwo/base/bean/MusicQuality;

    invoke-virtual {p1}, Lcn/kuwo/service/DownloadProxy$Quality;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method static synthetic b()Lcn/kuwo/core/messagemgr/ThreadMessageHandler;
    .locals 1

    sget-object v0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->k:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    return-object v0
.end method

.method private b(Lcn/kuwo/service/downloader/FinalDownloadTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->f:Lcn/kuwo/service/DownloadProxy$DownType;

    sget-object v1, Lcn/kuwo/service/DownloadProxy$DownType;->d:Lcn/kuwo/service/DownloadProxy$DownType;

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->e:Lcn/kuwo/base/bean/Music;

    iget-wide v0, v0, Lcn/kuwo/base/bean/Music;->a:J

    iget-object v2, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->g:Lcn/kuwo/service/DownloadProxy$Quality;

    invoke-direct {p0, v2}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->a(Lcn/kuwo/service/DownloadProxy$Quality;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/util/UrlManagerUtils;->getMVUrl(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v1, v2, p2}, Lcn/kuwo/base/util/UrlManagerUtils;->getMVUrl(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->f:Lcn/kuwo/service/DownloadProxy$DownType;

    sget-object v2, Lcn/kuwo/service/DownloadProxy$DownType;->c:Lcn/kuwo/service/DownloadProxy$DownType;

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->g:Lcn/kuwo/service/DownloadProxy$Quality;

    sget-object v2, Lcn/kuwo/service/DownloadProxy$Quality;->a:Lcn/kuwo/service/DownloadProxy$Quality;

    if-eq v1, v2, :cond_2

    iget-object v1, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->e:Lcn/kuwo/base/bean/Music;

    iget-object v2, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->g:Lcn/kuwo/service/DownloadProxy$Quality;

    invoke-direct {p0, v2}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->b(Lcn/kuwo/service/DownloadProxy$Quality;)Lcn/kuwo/base/bean/MusicQuality;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/kuwo/base/bean/Music;->b(Lcn/kuwo/base/bean/MusicQuality;)Lcn/kuwo/base/bean/NetResource;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v2, v1, Lcn/kuwo/base/bean/NetResource;->b:I

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v1, Lcn/kuwo/base/bean/NetResource;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "k"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcn/kuwo/base/bean/NetResource;->c:Lcn/kuwo/base/bean/MusicFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->g:Lcn/kuwo/service/DownloadProxy$Quality;

    iget-object v1, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->f:Lcn/kuwo/service/DownloadProxy$DownType;

    invoke-static {v0, v1}, Lcn/kuwo/service/downloader/BitrateInfo;->a(Lcn/kuwo/service/DownloadProxy$Quality;Lcn/kuwo/service/DownloadProxy$DownType;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_4
    iget-object v1, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->e:Lcn/kuwo/base/bean/Music;

    iget-wide v2, v1, Lcn/kuwo/base/bean/Music;->a:J

    long-to-int v2, v2

    iget-object v1, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->f:Lcn/kuwo/service/DownloadProxy$DownType;

    sget-object v3, Lcn/kuwo/service/DownloadProxy$DownType;->c:Lcn/kuwo/service/DownloadProxy$DownType;

    if-ne v1, v3, :cond_5

    const-string v1, "mp3|aac|flac"

    :goto_1
    invoke-static {v2, v1, v0, p2}, Lcn/kuwo/base/util/UrlManagerUtils;->getSongUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v1, "aac|mp3"

    goto :goto_1
.end method

.method static synthetic b(Lcn/kuwo/service/downloader/antistealing/AntiStealing;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;)V
    .locals 4

    new-instance v0, Lcn/kuwo/service/downloader/antistealing/AntiStealing$CacheItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/kuwo/service/downloader/antistealing/AntiStealing$CacheItem;-><init>(Lcn/kuwo/service/downloader/antistealing/AntiStealing$1;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcn/kuwo/service/downloader/antistealing/AntiStealing$CacheItem;->a:J

    iput-object p1, v0, Lcn/kuwo/service/downloader/antistealing/AntiStealing$CacheItem;->b:Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;

    sget-object v1, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->l:Ljava/util/HashMap;

    iget-object v2, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic c()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->l:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d()Lcn/kuwo/core/observers/ext/AppObserver;
    .locals 1

    sget-object v0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->c:Lcn/kuwo/core/observers/ext/AppObserver;

    return-object v0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendHTTPRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcn/kuwo/base/http/HttpSession;

    invoke-direct {v0}, Lcn/kuwo/base/http/HttpSession;-><init>()V

    iput-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->f:Lcn/kuwo/base/http/HttpSession;

    iget-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->f:Lcn/kuwo/base/http/HttpSession;

    sget-object v1, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->k:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v1}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/http/HttpSession;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->f:Lcn/kuwo/base/http/HttpSession;

    iget-object v1, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/base/http/HttpSession;->a(Ljava/lang/String;Lcn/kuwo/base/http/IHttpNotify;)Z

    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendTCPRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;

    sget-object v1, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->k:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-direct {v0, v1, p0}, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;-><init>(Lcn/kuwo/core/messagemgr/ThreadMessageHandler;Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$OnFinishedListener;)V

    iput-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->g:Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;

    iget-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->g:Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;

    iget-object v1, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->a(Ljava/lang/String;Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy$OnFinishedListener;)V

    return-void
.end method

.method private g()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->i:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed retry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->i:I

    iget v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->i:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->f()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->e()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->d:Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v3}, Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingDelegate;->onAntiStealingFinished(Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;Z)V

    iput v3, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->e:I

    goto :goto_0
.end method


# virtual methods
.method public IHttpNotifyFailed(Lcn/kuwo/base/http/HttpSession;Lcn/kuwo/base/http/HttpResult;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->f:Lcn/kuwo/base/http/HttpSession;

    invoke-direct {p0}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->g()V

    return-void
.end method

.method public IHttpNotifyFinish(Lcn/kuwo/base/http/HttpSession;Lcn/kuwo/base/http/HttpResult;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->f:Lcn/kuwo/base/http/HttpSession;

    invoke-virtual {p2}, Lcn/kuwo/base/http/HttpResult;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcn/kuwo/base/http/HttpResult;->c:[B

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->g()V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p2, Lcn/kuwo/base/http/HttpResult;->c:[B

    const-string v2, "gbk"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v0}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->a(Ljava/lang/String;)Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->g()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->g()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->b(Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;)V

    invoke-direct {p0, v0}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->a(Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;)V

    goto :goto_0
.end method

.method public IHttpNotifyProgress(Lcn/kuwo/base/http/HttpSession;II[BI)V
    .locals 0

    return-void
.end method

.method public IHttpNotifyStart(Lcn/kuwo/base/http/HttpSession;ILcn/kuwo/base/http/HttpResult;)V
    .locals 0

    return-void
.end method

.method public a()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->e:I

    iget-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->f:Lcn/kuwo/base/http/HttpSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->f:Lcn/kuwo/base/http/HttpSession;

    invoke-virtual {v0}, Lcn/kuwo/base/http/HttpSession;->a()Z

    iput-object v1, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->f:Lcn/kuwo/base/http/HttpSession;

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->g:Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->g:Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;

    invoke-virtual {v0}, Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;->a()V

    iput-object v1, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->g:Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;

    :cond_1
    return-void
.end method

.method public a(Lcn/kuwo/service/downloader/FinalDownloadTask;Ljava/lang/String;)V
    .locals 8

    const-wide/32 v6, 0x2bf20

    invoke-virtual {p0}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->a()V

    sget v0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->j:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->j:I

    iput v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->e:I

    iget-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->i:I

    invoke-direct {p0, p1, p2}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->b(Lcn/kuwo/service/downloader/FinalDownloadTask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->h:Ljava/lang/String;

    sget-object v0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->l:Ljava/util/HashMap;

    iget-object v1, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/service/downloader/antistealing/AntiStealing$CacheItem;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcn/kuwo/service/downloader/antistealing/AntiStealing$CacheItem;->a:J

    sub-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-gez v1, :cond_1

    iget-object v1, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    sget-object v2, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->k:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v2}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcn/kuwo/service/downloader/antistealing/AntiStealing$3;

    iget v4, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->e:I

    invoke-direct {v3, p0, v4, v0}, Lcn/kuwo/service/downloader/antistealing/AntiStealing$3;-><init>(Lcn/kuwo/service/downloader/antistealing/AntiStealing;ILcn/kuwo/service/downloader/antistealing/AntiStealing$CacheItem;)V

    invoke-virtual {v1, v2, v3}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    :goto_0
    sget-object v0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/service/downloader/antistealing/AntiStealing$CacheItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcn/kuwo/service/downloader/antistealing/AntiStealing$CacheItem;->a:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->e()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onAntiStealingTCPProxyFinished(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->g:Lcn/kuwo/service/downloader/antistealing/AntiStealingTCPProxy;

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->g()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->a(Ljava/lang/String;)Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->g()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->b(Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;)V

    invoke-direct {p0, v0}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->a(Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;)V

    goto :goto_0
.end method
