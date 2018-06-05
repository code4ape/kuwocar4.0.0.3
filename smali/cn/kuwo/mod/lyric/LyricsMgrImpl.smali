.class public final Lcn/kuwo/mod/lyric/LyricsMgrImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/base/util/KwTimer$Listener;
.implements Lcn/kuwo/core/observers/IBigBackgroundDownloadObserver;
.implements Lcn/kuwo/mod/lyric/ILyricsMgr;


# static fields
.field static a:I


# instance fields
.field b:I

.field private volatile c:Lcn/kuwo/mod/lyric/LyricsRunner;

.field private volatile d:Lcn/kuwo/mod/lyric/BackgroudPicRunner;

.field private volatile e:Lcn/kuwo/mod/lyric/HeadPicRunner;

.field private volatile f:Lcn/kuwo/mod/lyric/LyricsListRunner;

.field private g:Lcn/kuwo/mod/lyric/ILyrics;

.field private h:Lcn/kuwo/mod/lyric/ILyrics;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Bitmap;

.field private k:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

.field private l:Lcn/kuwo/base/util/KwTimer;

.field private m:Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;

.field private n:Lcn/kuwo/core/observers/ext/PlayControlObserver;

.field private o:Lcn/kuwo/core/observers/ext/AppObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    sput v0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->c:Lcn/kuwo/mod/lyric/LyricsRunner;

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->d:Lcn/kuwo/mod/lyric/BackgroudPicRunner;

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->e:Lcn/kuwo/mod/lyric/HeadPicRunner;

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->f:Lcn/kuwo/mod/lyric/LyricsListRunner;

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->g:Lcn/kuwo/mod/lyric/ILyrics;

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->h:Lcn/kuwo/mod/lyric/ILyrics;

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->i:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->j:Landroid/graphics/Bitmap;

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->a:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->k:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->m:Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;

    new-instance v0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$1;

    invoke-direct {v0, p0}, Lcn/kuwo/mod/lyric/LyricsMgrImpl$1;-><init>(Lcn/kuwo/mod/lyric/LyricsMgrImpl;)V

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->n:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    new-instance v0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$2;

    invoke-direct {v0, p0}, Lcn/kuwo/mod/lyric/LyricsMgrImpl$2;-><init>(Lcn/kuwo/mod/lyric/LyricsMgrImpl;)V

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->o:Lcn/kuwo/core/observers/ext/AppObserver;

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->b:I

    return-void
.end method

.method static synthetic a(Lcn/kuwo/mod/lyric/LyricsMgrImpl;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->j:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic a(Lcn/kuwo/mod/lyric/LyricsMgrImpl;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->j:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public a(Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->i:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a(Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->b:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->j:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->j:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->j:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->j:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public a()V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->n:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->o:Lcn/kuwo/core/observers/ext/AppObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->u:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    new-instance v0, Lcn/kuwo/base/util/KwTimer;

    invoke-direct {v0, p0}, Lcn/kuwo/base/util/KwTimer;-><init>(Lcn/kuwo/base/util/KwTimer$Listener;)V

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->l:Lcn/kuwo/base/util/KwTimer;

    return-void
.end method

.method public a(I)V
    .locals 1

    if-gtz p1, :cond_0

    const/16 v0, 0x14

    sput v0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->a:I

    :goto_0
    return-void

    :cond_0
    sput p1, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->a:I

    goto :goto_0
.end method

.method public a(Lcn/kuwo/base/bean/Music;)V
    .locals 0

    invoke-static {p1}, Lcn/kuwo/mod/lyric/LyricsDownloadRunner;->a(Lcn/kuwo/base/bean/Music;)Z

    return-void
.end method

.method public a(Lcn/kuwo/base/bean/Music;I)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->m:Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;

    invoke-direct {v0, p0}, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;-><init>(Lcn/kuwo/mod/lyric/LyricsMgrImpl;)V

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->m:Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->m:Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;

    invoke-virtual {v0, p1}, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;->a(Lcn/kuwo/base/bean/Music;)V

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->m:Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;

    invoke-virtual {v0, p2}, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;->setCount(I)V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->m:Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;

    invoke-virtual {v0}, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;->a()Lcn/kuwo/base/bean/Music;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->m:Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;

    invoke-virtual {v0}, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->m:Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;

    invoke-virtual {v0}, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->m:Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;

    invoke-virtual {v0}, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;->a()Lcn/kuwo/base/bean/Music;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->m:Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;

    invoke-virtual {v0}, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;->a()Lcn/kuwo/base/bean/Music;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/kuwo/base/bean/Music;->a(Lcn/kuwo/base/bean/Music;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    const-string v0, "ajh.test"

    const-string v1, "\u4e0d\u5b58\u5728\uff0c\u6dfb\u52a0\u65b0\u7684\u7ebf\u7a0b"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->m:Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;

    invoke-virtual {v0}, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;->c()V

    new-instance v0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;

    invoke-direct {v0, p0}, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;-><init>(Lcn/kuwo/mod/lyric/LyricsMgrImpl;)V

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->m:Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->m:Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;

    invoke-virtual {v0, p1}, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;->a(Lcn/kuwo/base/bean/Music;)V

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->m:Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;

    invoke-virtual {v0, p2}, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;->setCount(I)V

    sget-object v0, Lcn/kuwo/base/util/KwThreadPool$JobType;->NET:Lcn/kuwo/base/util/KwThreadPool$JobType;

    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->m:Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;

    invoke-static {v0, v1}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v0, "ajh.test"

    const-string v1, "\u5df2\u5b58\u5728"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcn/kuwo/base/bean/Music;ZLcn/kuwo/base/bean/Music;)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->c:Lcn/kuwo/mod/lyric/LyricsRunner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->c:Lcn/kuwo/mod/lyric/LyricsRunner;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/kuwo/mod/lyric/LyricsRunner;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->c:Lcn/kuwo/mod/lyric/LyricsRunner;

    :cond_0
    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->k:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    new-instance v0, Lcn/kuwo/mod/lyric/LyricsRunner;

    invoke-direct {v0, p1, p2, p3}, Lcn/kuwo/mod/lyric/LyricsRunner;-><init>(Lcn/kuwo/base/bean/Music;ZLcn/kuwo/base/bean/Music;)V

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->c:Lcn/kuwo/mod/lyric/LyricsRunner;

    sget-object v0, Lcn/kuwo/base/util/KwThreadPool$JobType;->NET:Lcn/kuwo/base/util/KwThreadPool$JobType;

    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->c:Lcn/kuwo/mod/lyric/LyricsRunner;

    invoke-static {v0, v1}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Lcn/kuwo/mod/lyric/ILyrics;Lcn/kuwo/mod/lyric/ILyrics;Z)V
    .locals 1

    if-eqz p4, :cond_3

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->b:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->g:Lcn/kuwo/mod/lyric/ILyrics;

    iput-object p3, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->h:Lcn/kuwo/mod/lyric/ILyrics;

    :cond_0
    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->a:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->g:Lcn/kuwo/mod/lyric/ILyrics;

    if-nez v0, :cond_2

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->a:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->k:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->c:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->k:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    goto :goto_0

    :cond_3
    iput-object p2, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->g:Lcn/kuwo/mod/lyric/ILyrics;

    iput-object p3, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->h:Lcn/kuwo/mod/lyric/ILyrics;

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->b:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    if-ne p1, v0, :cond_4

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->c:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->k:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    goto :goto_0

    :cond_4
    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->c:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    if-ne p1, v0, :cond_5

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->d:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->k:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    goto :goto_0

    :cond_5
    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->d:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;->a:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->k:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    goto :goto_0
.end method

.method public b()V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->o:Lcn/kuwo/core/observers/ext/AppObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->n:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->u:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-virtual {p0}, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->f()V

    return-void
.end method

.method public b(Lcn/kuwo/base/bean/Music;)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->e:Lcn/kuwo/mod/lyric/HeadPicRunner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->e:Lcn/kuwo/mod/lyric/HeadPicRunner;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/kuwo/mod/lyric/HeadPicRunner;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->e:Lcn/kuwo/mod/lyric/HeadPicRunner;

    :cond_0
    new-instance v0, Lcn/kuwo/mod/lyric/HeadPicRunner;

    invoke-direct {v0, p1}, Lcn/kuwo/mod/lyric/HeadPicRunner;-><init>(Lcn/kuwo/base/bean/Music;)V

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->e:Lcn/kuwo/mod/lyric/HeadPicRunner;

    sget-object v0, Lcn/kuwo/base/util/KwThreadPool$JobType;->NET:Lcn/kuwo/base/util/KwThreadPool$JobType;

    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->e:Lcn/kuwo/mod/lyric/HeadPicRunner;

    invoke-static {v0, v1}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcn/kuwo/base/bean/Music;ZLcn/kuwo/base/bean/Music;)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->d:Lcn/kuwo/mod/lyric/BackgroudPicRunner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->d:Lcn/kuwo/mod/lyric/BackgroudPicRunner;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->d:Lcn/kuwo/mod/lyric/BackgroudPicRunner;

    :cond_0
    new-instance v0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;

    invoke-direct {v0, p1, p2, p3}, Lcn/kuwo/mod/lyric/BackgroudPicRunner;-><init>(Lcn/kuwo/base/bean/Music;ZLcn/kuwo/base/bean/Music;)V

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->d:Lcn/kuwo/mod/lyric/BackgroudPicRunner;

    sget-object v0, Lcn/kuwo/base/util/KwThreadPool$JobType;->NET:Lcn/kuwo/base/util/KwThreadPool$JobType;

    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->d:Lcn/kuwo/mod/lyric/BackgroudPicRunner;

    invoke-static {v0, v1}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->k:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsSearchStatus;

    return-object v0
.end method

.method public d()Lcn/kuwo/mod/lyric/ILyrics;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->h:Lcn/kuwo/mod/lyric/ILyrics;

    return-object v0
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public f()V
    .locals 2

    const-string v0, "ajh.background"

    const-string v1, "stop background loop"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->l:Lcn/kuwo/base/util/KwTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->l:Lcn/kuwo/base/util/KwTimer;

    invoke-virtual {v0}, Lcn/kuwo/base/util/KwTimer;->stop()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->c:Lcn/kuwo/mod/lyric/LyricsRunner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->c:Lcn/kuwo/mod/lyric/LyricsRunner;

    iput-boolean v2, v0, Lcn/kuwo/mod/lyric/LyricsRunner;->a:Z

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->c:Lcn/kuwo/mod/lyric/LyricsRunner;

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->e:Lcn/kuwo/mod/lyric/HeadPicRunner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->e:Lcn/kuwo/mod/lyric/HeadPicRunner;

    iput-boolean v2, v0, Lcn/kuwo/mod/lyric/HeadPicRunner;->a:Z

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->e:Lcn/kuwo/mod/lyric/HeadPicRunner;

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->d:Lcn/kuwo/mod/lyric/BackgroudPicRunner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->d:Lcn/kuwo/mod/lyric/BackgroudPicRunner;

    iput-boolean v2, v0, Lcn/kuwo/mod/lyric/BackgroudPicRunner;->a:Z

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->d:Lcn/kuwo/mod/lyric/BackgroudPicRunner;

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->m:Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->m:Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;

    invoke-virtual {v0}, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;->c()V

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->m:Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;

    :cond_3
    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->d:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    invoke-static {v1, v0, v3}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Z)V

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->d:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    invoke-static {v1, v0, v1}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Landroid/graphics/Bitmap;)V

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->d:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    invoke-static {v1, v0, v1, v3}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public onTimer(Lcn/kuwo/base/util/KwTimer;)V
    .locals 3

    const-string v0, "ajh.background"

    const-string v1, "onTimer"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->e()Lcn/kuwo/base/bean/Music;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/mod/playcontrol/IPlayControl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v1

    sget-object v2, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->b:I

    rem-int/lit8 v1, v1, 0xa

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    new-instance v2, Lcn/kuwo/mod/lyric/LyricsMgrImpl$3;

    invoke-direct {v2, p0, v0}, Lcn/kuwo/mod/lyric/LyricsMgrImpl$3;-><init>(Lcn/kuwo/mod/lyric/LyricsMgrImpl;Lcn/kuwo/base/bean/Music;)V

    invoke-virtual {v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    :cond_0
    iget v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->b:I

    const v1, 0x3fffffff    # 1.9999999f

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->b:I

    :cond_1
    return-void
.end method
