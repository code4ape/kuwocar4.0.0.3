.class public final Lcn/kuwo/service/downloader/DownloadCore;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/base/http/IHttpNotify;
.implements Lcn/kuwo/base/util/KwTimer$Listener;
.implements Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingDelegate;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcn/kuwo/service/downloader/DownloadCore$Step;

.field private c:Lcn/kuwo/service/downloader/DownloadCore$OnTaskFinishedListener;

.field private d:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

.field private e:J

.field private f:Lcn/kuwo/service/downloader/DownloadCore$Step;

.field private g:Lcn/kuwo/service/downloader/FinalDownloadTask;

.field private h:Lcn/kuwo/base/http/HttpSession;

.field private i:Lcn/kuwo/service/downloader/antistealing/AntiStealing;

.field private j:Lcn/kuwo/service/downloader/DownloadCore$ProgressRunner;

.field private k:Ljava/io/File;

.field private l:I

.field private m:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

.field private n:Lcn/kuwo/base/util/KwTimer;

.field private o:I

.field private p:I

.field private q:Lcn/kuwo/service/DownloadDelegate$HttpInfo;

.field private r:[I

.field private s:I


# direct methods
.method protected constructor <init>(Lcn/kuwo/core/messagemgr/ThreadMessageHandler;Lcn/kuwo/service/downloader/DownloadCore$OnTaskFinishedListener;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DownloadCore"

    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->a:Ljava/lang/String;

    new-instance v0, Lcn/kuwo/service/downloader/DownloadCore$ProgressRunner;

    invoke-direct {v0}, Lcn/kuwo/service/downloader/DownloadCore$ProgressRunner;-><init>()V

    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->j:Lcn/kuwo/service/downloader/DownloadCore$ProgressRunner;

    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->r:[I

    iput-object p1, p0, Lcn/kuwo/service/downloader/DownloadCore;->d:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {p1}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->e:J

    iput-object p2, p0, Lcn/kuwo/service/downloader/DownloadCore;->c:Lcn/kuwo/service/downloader/DownloadCore$OnTaskFinishedListener;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->a:Ljava/lang/String;

    :cond_0
    new-instance v0, Lcn/kuwo/service/downloader/antistealing/AntiStealing;

    invoke-direct {v0, p0, p3}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;-><init>(Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingDelegate;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->i:Lcn/kuwo/service/downloader/antistealing/AntiStealing;

    new-instance v0, Lcn/kuwo/base/util/KwTimer;

    invoke-direct {v0, p0}, Lcn/kuwo/base/util/KwTimer;-><init>(Lcn/kuwo/base/util/KwTimer$Listener;)V

    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->n:Lcn/kuwo/base/util/KwTimer;

    return-void
.end method

.method private a(IIILcn/kuwo/service/DownloadDelegate$DataSrc;Lcn/kuwo/service/DownloadDelegate$HttpInfo;)V
    .locals 8

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-boolean v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->d:Lcn/kuwo/service/DownloadDelegate;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    new-instance v0, Lcn/kuwo/service/downloader/DownloadCore$3;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcn/kuwo/service/downloader/DownloadCore$3;-><init>(Lcn/kuwo/service/downloader/DownloadCore;Lcn/kuwo/service/downloader/FinalDownloadTask;IIILcn/kuwo/service/DownloadDelegate$DataSrc;Lcn/kuwo/service/DownloadDelegate$HttpInfo;)V

    invoke-direct {p0, v0}, Lcn/kuwo/service/downloader/DownloadCore;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->b:Z

    return-void
.end method

.method private a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V
    .locals 2

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->isExiting()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->l:Landroid/os/Handler;

    if-nez v0, :cond_1

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0, p1}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->l:Landroid/os/Handler;

    goto :goto_1
.end method

.method private a(Lcn/kuwo/service/DownloadDelegate$ErrorCode;)V
    .locals 3

    iput-object p1, p0, Lcn/kuwo/service/downloader/DownloadCore;->m:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "down failed,err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(I)Z
    .locals 4

    invoke-static {}, Lcn/kuwo/base/util/KwFileUtils;->getAvailableExternalMemorySize()J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->n:Lcn/kuwo/base/util/KwTimer;

    invoke-virtual {v0}, Lcn/kuwo/base/util/KwTimer;->stop()V

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->h:Lcn/kuwo/base/http/HttpSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->h:Lcn/kuwo/base/http/HttpSession;

    invoke-virtual {v0}, Lcn/kuwo/base/http/HttpSession;->a()Z

    iput-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->h:Lcn/kuwo/base/http/HttpSession;

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->i:Lcn/kuwo/service/downloader/antistealing/AntiStealing;

    invoke-virtual {v0}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->a()V

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iput-boolean v2, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->c:Z

    iput-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    :cond_1
    iput-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->k:Ljava/io/File;

    sget-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->a:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    invoke-direct {p0, v0}, Lcn/kuwo/service/downloader/DownloadCore;->a(Lcn/kuwo/service/DownloadDelegate$ErrorCode;)V

    iput v2, p0, Lcn/kuwo/service/downloader/DownloadCore;->o:I

    iput v2, p0, Lcn/kuwo/service/downloader/DownloadCore;->p:I

    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->h:Lcn/kuwo/service/downloader/DownloadCore$Step;

    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->f:Lcn/kuwo/service/downloader/DownloadCore$Step;

    iput-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->q:Lcn/kuwo/service/DownloadDelegate$HttpInfo;

    return-void
.end method

.method private c()V
    .locals 2

    :goto_0
    invoke-direct {p0}, Lcn/kuwo/service/downloader/DownloadCore;->l()Lcn/kuwo/service/downloader/DownloadCore$Step;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/downloader/DownloadCore$Step;->h:Lcn/kuwo/service/downloader/DownloadCore$Step;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->f:Lcn/kuwo/service/downloader/DownloadCore$Step;

    goto :goto_0
.end method

.method private d()Lcn/kuwo/service/downloader/DownloadCore$Step;
    .locals 6

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->f:Lcn/kuwo/service/DownloadProxy$DownType;

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->g:Lcn/kuwo/service/DownloadProxy$Quality;

    iget-object v2, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v2, v2, Lcn/kuwo/service/downloader/FinalDownloadTask;->e:Lcn/kuwo/base/bean/Music;

    iget-wide v2, v2, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/service/downloader/DownCacheMgr;->a(Lcn/kuwo/service/DownloadProxy$DownType;Lcn/kuwo/service/DownloadProxy$Quality;J)Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->f:Lcn/kuwo/service/DownloadProxy$DownType;

    sget-object v2, Lcn/kuwo/service/DownloadProxy$DownType;->f:Lcn/kuwo/service/DownloadProxy$DownType;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->e:Lcn/kuwo/base/bean/Music;

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownCacheMgr;->a(Lcn/kuwo/base/bean/Music;)Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v2, v0, Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;->a:Ljava/lang/String;

    iput-object v2, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget v0, v0, Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;->b:I

    iput v0, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->j:I

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    invoke-static {v1}, Lcn/kuwo/service/downloader/DownCacheMgr;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->i:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->o:I

    invoke-direct {p0}, Lcn/kuwo/service/downloader/DownloadCore;->h()Lcn/kuwo/service/downloader/DownloadCore$Step;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/downloader/DownloadCore$Step;->g:Lcn/kuwo/service/downloader/DownloadCore$Step;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->g:Lcn/kuwo/service/downloader/DownloadCore$Step;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->k:Ljava/lang/String;

    iput-object v1, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    iget v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->o:I

    iget v2, p0, Lcn/kuwo/service/downloader/DownloadCore;->o:I

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget v3, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->j:I

    sget-object v4, Lcn/kuwo/service/DownloadDelegate$DataSrc;->c:Lcn/kuwo/service/DownloadDelegate$DataSrc;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/kuwo/service/downloader/DownloadCore;->a(IIILcn/kuwo/service/DownloadDelegate$DataSrc;Lcn/kuwo/service/DownloadDelegate$HttpInfo;)V

    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->f:Lcn/kuwo/service/downloader/DownloadCore$Step;

    goto :goto_0

    :cond_2
    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->b:Lcn/kuwo/service/downloader/DownloadCore$Step;

    goto :goto_0
.end method

.method private e()Lcn/kuwo/service/downloader/DownloadCore$Step;
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->c:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    invoke-direct {p0, v0}, Lcn/kuwo/service/downloader/DownloadCore;->a(Lcn/kuwo/service/DownloadDelegate$ErrorCode;)V

    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->g:Lcn/kuwo/service/downloader/DownloadCore$Step;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isOnlyWifiConnect()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->h:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    invoke-direct {p0, v0}, Lcn/kuwo/service/downloader/DownloadCore;->a(Lcn/kuwo/service/DownloadDelegate$ErrorCode;)V

    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->g:Lcn/kuwo/service/downloader/DownloadCore$Step;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->f:Lcn/kuwo/service/DownloadProxy$DownType;

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->g:Lcn/kuwo/service/DownloadProxy$Quality;

    iget-object v2, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v2, v2, Lcn/kuwo/service/downloader/FinalDownloadTask;->e:Lcn/kuwo/base/bean/Music;

    iget-wide v2, v2, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/service/downloader/DownCacheMgr;->b(Lcn/kuwo/service/DownloadProxy$DownType;Lcn/kuwo/service/DownloadProxy$Quality;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    :cond_2
    :goto_1
    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iput-object v0, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    invoke-static {v1}, Lcn/kuwo/service/downloader/DownCacheMgr;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->i:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    invoke-static {v1}, Lcn/kuwo/service/downloader/DownCacheMgr;->l(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->j:I

    :cond_3
    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->c:Lcn/kuwo/service/downloader/DownloadCore$Step;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    invoke-static {v1}, Lcn/kuwo/base/util/KwFileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_7

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    invoke-static {v1}, Lcn/kuwo/service/downloader/DownCacheMgr;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcn/kuwo/service/downloader/DownCacheMgr;->a(Ljava/io/File;)I

    move-result v1

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownCacheMgr;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Lcn/kuwo/service/downloader/DownCacheMgr;->a(Ljava/io/File;)I

    move-result v6

    int-to-float v1, v1

    long-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v6

    long-to-float v3, v4

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iput-object v7, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->m:Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iput-object v7, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->m:Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;

    goto :goto_1
.end method

.method private f()Lcn/kuwo/service/downloader/DownloadCore$Step;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownCacheMgr;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->i:Lcn/kuwo/service/downloader/antistealing/AntiStealing;

    iget-object v2, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    invoke-virtual {v1, v2, v0}, Lcn/kuwo/service/downloader/antistealing/AntiStealing;->a(Lcn/kuwo/service/downloader/FinalDownloadTask;Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->h:Lcn/kuwo/service/downloader/DownloadCore$Step;

    return-object v0
.end method

.method private g()Lcn/kuwo/service/downloader/DownloadCore$Step;
    .locals 4

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->c:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    invoke-direct {p0, v0}, Lcn/kuwo/service/downloader/DownloadCore;->a(Lcn/kuwo/service/DownloadDelegate$ErrorCode;)V

    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->g:Lcn/kuwo/service/downloader/DownloadCore$Step;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownCacheMgr;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->k:Ljava/io/File;

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->k:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->k:Ljava/io/File;

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownCacheMgr;->a(Ljava/io/File;)I

    move-result v0

    iput v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->p:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    invoke-static {v1}, Lcn/kuwo/service/downloader/DownCacheMgr;->g(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->e:Lcn/kuwo/service/downloader/DownloadCore$Step;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    invoke-static {v1}, Lcn/kuwo/base/util/KwFileUtils;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/kuwo/base/util/KwFileUtils;->isExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcn/kuwo/base/util/KwFileUtils;->mkdir(Ljava/lang/String;)Z

    :cond_2
    const/high16 v1, 0x100000

    invoke-direct {p0, v1}, Lcn/kuwo/service/downloader/DownloadCore;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->g:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    invoke-direct {p0, v0}, Lcn/kuwo/service/downloader/DownloadCore;->a(Lcn/kuwo/service/DownloadDelegate$ErrorCode;)V

    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->g:Lcn/kuwo/service/downloader/DownloadCore$Step;

    goto :goto_0

    :cond_3
    new-instance v1, Lcn/kuwo/base/http/HttpSession;

    invoke-direct {v1}, Lcn/kuwo/base/http/HttpSession;-><init>()V

    iput-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->h:Lcn/kuwo/base/http/HttpSession;

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->h:Lcn/kuwo/base/http/HttpSession;

    iget-object v2, p0, Lcn/kuwo/service/downloader/DownloadCore;->d:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v2}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/kuwo/base/http/HttpSession;->a(Landroid/os/Handler;)V

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->h:Lcn/kuwo/base/http/HttpSession;

    iget-object v2, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v2, v2, Lcn/kuwo/service/downloader/FinalDownloadTask;->h:Ljava/lang/String;

    iget-object v3, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v3, v3, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, p0}, Lcn/kuwo/base/http/HttpSession;->a(Ljava/lang/String;ILjava/lang/String;Lcn/kuwo/base/http/IHttpNotify;)Z

    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->h:Lcn/kuwo/service/downloader/DownloadCore$Step;

    goto :goto_0
.end method

.method private h()Lcn/kuwo/service/downloader/DownloadCore$Step;
    .locals 6

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->o:Lcn/kuwo/service/downloader/strategies/IStrategy;

    iget-object v2, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    invoke-interface {v1, v2}, Lcn/kuwo/service/downloader/strategies/IStrategy;->c(Lcn/kuwo/service/downloader/FinalDownloadTask;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->k:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->k:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->isExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->mkdir(Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v2, v2, Lcn/kuwo/service/downloader/FinalDownloadTask;->o:Lcn/kuwo/service/downloader/strategies/IStrategy;

    iget-object v3, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    invoke-interface {v2, v3}, Lcn/kuwo/service/downloader/strategies/IStrategy;->a(Lcn/kuwo/service/downloader/FinalDownloadTask;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->e:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    invoke-direct {p0, v0}, Lcn/kuwo/service/downloader/DownloadCore;->a(Lcn/kuwo/service/DownloadDelegate$ErrorCode;)V

    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->g:Lcn/kuwo/service/downloader/DownloadCore$Step;

    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v2, v2, Lcn/kuwo/service/downloader/FinalDownloadTask;->k:Ljava/lang/String;

    invoke-static {v2}, Lcn/kuwo/base/util/KwFileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v2

    iget v4, p0, Lcn/kuwo/service/downloader/DownloadCore;->o:I

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_2

    iget v4, p0, Lcn/kuwo/service/downloader/DownloadCore;->o:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v5, v5, Lcn/kuwo/service/downloader/FinalDownloadTask;->k:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "download size err,expire:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcn/kuwo/service/downloader/DownloadCore;->o:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " real:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " temp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->q:Lcn/kuwo/service/DownloadDelegate$HttpInfo;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->q:Lcn/kuwo/service/DownloadDelegate$HttpInfo;

    invoke-virtual {v1}, Lcn/kuwo/service/DownloadDelegate$HttpInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_3
    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->f:Lcn/kuwo/service/downloader/DownloadCore$Step;

    goto :goto_0
.end method

.method private i()Lcn/kuwo/service/downloader/DownloadCore$Step;
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->d:Lcn/kuwo/service/DownloadDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    new-instance v1, Lcn/kuwo/service/downloader/DownloadCore$1;

    invoke-direct {v1, p0, v0}, Lcn/kuwo/service/downloader/DownloadCore$1;-><init>(Lcn/kuwo/service/downloader/DownloadCore;Lcn/kuwo/service/downloader/FinalDownloadTask;)V

    invoke-direct {p0, v1}, Lcn/kuwo/service/downloader/DownloadCore;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    :cond_0
    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->i:Lcn/kuwo/service/downloader/DownloadCore$Step;

    return-object v0
.end method

.method private j()Lcn/kuwo/service/downloader/DownloadCore$Step;
    .locals 3

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->m:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    sget-object v1, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->e:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lcn/kuwo/service/downloader/DownloadCore;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->g:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->m:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->m:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    sget-object v1, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->a:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->i:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->m:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    :cond_1
    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->d:Lcn/kuwo/service/DownloadDelegate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->m:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    new-instance v2, Lcn/kuwo/service/downloader/DownloadCore$2;

    invoke-direct {v2, p0, v0, v1}, Lcn/kuwo/service/downloader/DownloadCore$2;-><init>(Lcn/kuwo/service/downloader/DownloadCore;Lcn/kuwo/service/downloader/FinalDownloadTask;Lcn/kuwo/service/DownloadDelegate$ErrorCode;)V

    invoke-direct {p0, v2}, Lcn/kuwo/service/downloader/DownloadCore;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    :cond_2
    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->i:Lcn/kuwo/service/downloader/DownloadCore$Step;

    return-object v0
.end method

.method private k()Lcn/kuwo/service/downloader/DownloadCore$Step;
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->c:Lcn/kuwo/service/downloader/DownloadCore$OnTaskFinishedListener;

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    invoke-interface {v0, v1}, Lcn/kuwo/service/downloader/DownloadCore$OnTaskFinishedListener;->onTaskFinished(Lcn/kuwo/service/downloader/FinalDownloadTask;)V

    invoke-direct {p0}, Lcn/kuwo/service/downloader/DownloadCore;->b()V

    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->h:Lcn/kuwo/service/downloader/DownloadCore$Step;

    return-object v0
.end method

.method private l()Lcn/kuwo/service/downloader/DownloadCore$Step;
    .locals 3

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->b:Lcn/kuwo/service/downloader/DownloadCore$Step;

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->f:Lcn/kuwo/service/downloader/DownloadCore$Step;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Step "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/service/downloader/DownloadCore;->f:Lcn/kuwo/service/downloader/DownloadCore$Step;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->f:Lcn/kuwo/service/downloader/DownloadCore$Step;

    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->b:Lcn/kuwo/service/downloader/DownloadCore$Step;

    :cond_0
    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$4;->a:[I

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->f:Lcn/kuwo/service/downloader/DownloadCore$Step;

    invoke-virtual {v1}, Lcn/kuwo/service/downloader/DownloadCore$Step;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->i:Lcn/kuwo/service/downloader/DownloadCore$Step;

    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0}, Lcn/kuwo/service/downloader/DownloadCore;->d()Lcn/kuwo/service/downloader/DownloadCore$Step;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcn/kuwo/service/downloader/DownloadCore;->e()Lcn/kuwo/service/downloader/DownloadCore$Step;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcn/kuwo/service/downloader/DownloadCore;->f()Lcn/kuwo/service/downloader/DownloadCore$Step;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcn/kuwo/service/downloader/DownloadCore;->g()Lcn/kuwo/service/downloader/DownloadCore$Step;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcn/kuwo/service/downloader/DownloadCore;->h()Lcn/kuwo/service/downloader/DownloadCore$Step;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcn/kuwo/service/downloader/DownloadCore;->i()Lcn/kuwo/service/downloader/DownloadCore$Step;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcn/kuwo/service/downloader/DownloadCore;->j()Lcn/kuwo/service/downloader/DownloadCore$Step;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcn/kuwo/service/downloader/DownloadCore;->k()Lcn/kuwo/service/downloader/DownloadCore$Step;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private m()Z
    .locals 4

    const/4 v3, -0x1

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v2, v2, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    const/16 v2, 0x32

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Lcn/kuwo/base/util/IOUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_0

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_0

    const-string v2, "style"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eq v0, v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public IHttpNotifyFailed(Lcn/kuwo/base/http/HttpSession;Lcn/kuwo/base/http/HttpResult;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->h:Lcn/kuwo/base/http/HttpSession;

    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lcn/kuwo/service/downloader/DownloadCore;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->l:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    sget-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->g:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    invoke-direct {p0, v0}, Lcn/kuwo/service/downloader/DownloadCore;->a(Lcn/kuwo/service/DownloadDelegate$ErrorCode;)V

    :goto_0
    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->g:Lcn/kuwo/service/downloader/DownloadCore$Step;

    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->f:Lcn/kuwo/service/downloader/DownloadCore$Step;

    :goto_1
    invoke-direct {p0}, Lcn/kuwo/service/downloader/DownloadCore;->c()V

    return-void

    :cond_1
    sget-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->d:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    invoke-direct {p0, v0}, Lcn/kuwo/service/downloader/DownloadCore;->a(Lcn/kuwo/service/DownloadDelegate$ErrorCode;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->n:Lcn/kuwo/base/util/KwTimer;

    invoke-virtual {v0}, Lcn/kuwo/base/util/KwTimer;->stop()V

    iget v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->l:I

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retry,retryTimes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/kuwo/service/downloader/DownloadCore;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/kuwo/base/util/CopyrightInfo;->CLIENT_IP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " local ip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcn/kuwo/base/util/CopyrightInfo;->getLocalIP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " statuscode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcn/kuwo/base/http/HttpResult;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " url302:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcn/kuwo/base/http/HttpResult;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcn/kuwo/base/http/HttpResult;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcn/kuwo/base/http/HttpResult;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcn/kuwo/base/http/HttpResult;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->d:Lcn/kuwo/service/downloader/DownloadCore$Step;

    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->f:Lcn/kuwo/service/downloader/DownloadCore$Step;

    goto/16 :goto_1
.end method

.method public IHttpNotifyFinish(Lcn/kuwo/base/http/HttpSession;Lcn/kuwo/base/http/HttpResult;)V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "down finish ip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/kuwo/base/util/CopyrightInfo;->CLIENT_IP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " local ip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcn/kuwo/base/util/CopyrightInfo;->getLocalIP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " statuscode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcn/kuwo/base/http/HttpResult;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " url302:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcn/kuwo/base/http/HttpResult;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcn/kuwo/base/http/HttpResult;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/kuwo/service/downloader/DownloadCore;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->deleteFile(Ljava/lang/String;)Z

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/service/downloader/DownloadCore;->IHttpNotifyFailed(Lcn/kuwo/base/http/HttpSession;Lcn/kuwo/base/http/HttpResult;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->h:Lcn/kuwo/base/http/HttpSession;

    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->e:Lcn/kuwo/service/downloader/DownloadCore$Step;

    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->f:Lcn/kuwo/service/downloader/DownloadCore$Step;

    invoke-direct {p0}, Lcn/kuwo/service/downloader/DownloadCore;->c()V

    goto :goto_0
.end method

.method public IHttpNotifyProgress(Lcn/kuwo/base/http/HttpSession;II[BI)V
    .locals 2

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->isExiting()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->k:Ljava/io/File;

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->f:Lcn/kuwo/service/DownloadProxy$DownType;

    invoke-static {v0, v1, p3}, Lcn/kuwo/service/downloader/DownCacheMgr;->a(Ljava/io/File;Lcn/kuwo/service/DownloadProxy$DownType;I)V

    iput p3, p0, Lcn/kuwo/service/downloader/DownloadCore;->p:I

    goto :goto_0
.end method

.method public IHttpNotifyStart(Lcn/kuwo/base/http/HttpSession;ILcn/kuwo/base/http/HttpResult;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->a:Ljava/lang/String;

    const-string v1, "down start"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcn/kuwo/service/downloader/DownloadCore;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->g:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    invoke-direct {p0, v0}, Lcn/kuwo/service/downloader/DownloadCore;->a(Lcn/kuwo/service/DownloadDelegate$ErrorCode;)V

    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->g:Lcn/kuwo/service/downloader/DownloadCore$Step;

    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->f:Lcn/kuwo/service/downloader/DownloadCore$Step;

    invoke-direct {p0}, Lcn/kuwo/service/downloader/DownloadCore;->c()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->k:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->f:Lcn/kuwo/service/DownloadProxy$DownType;

    invoke-static {v0, v1, p2}, Lcn/kuwo/service/downloader/DownCacheMgr;->a(Ljava/lang/String;Lcn/kuwo/service/DownloadProxy$DownType;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->k:Ljava/io/File;

    :cond_3
    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->d:Lcn/kuwo/service/DownloadDelegate;

    if-eqz v0, :cond_4

    iget v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->l:I

    if-nez v0, :cond_4

    iget v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->p:I

    if-lez v0, :cond_5

    sget-object v4, Lcn/kuwo/service/DownloadDelegate$DataSrc;->b:Lcn/kuwo/service/DownloadDelegate$DataSrc;

    :goto_1
    new-instance v0, Lcn/kuwo/service/DownloadDelegate$HttpInfo;

    invoke-direct {v0}, Lcn/kuwo/service/DownloadDelegate$HttpInfo;-><init>()V

    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->q:Lcn/kuwo/service/DownloadDelegate$HttpInfo;

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->q:Lcn/kuwo/service/DownloadDelegate$HttpInfo;

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->h:Ljava/lang/String;

    iput-object v1, v0, Lcn/kuwo/service/DownloadDelegate$HttpInfo;->a:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->q:Lcn/kuwo/service/DownloadDelegate$HttpInfo;

    iget-object v1, p3, Lcn/kuwo/base/http/HttpResult;->l:Ljava/lang/String;

    iput-object v1, v0, Lcn/kuwo/service/DownloadDelegate$HttpInfo;->b:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->q:Lcn/kuwo/service/DownloadDelegate$HttpInfo;

    iget v1, p3, Lcn/kuwo/base/http/HttpResult;->b:I

    iput v1, v0, Lcn/kuwo/service/DownloadDelegate$HttpInfo;->c:I

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->q:Lcn/kuwo/service/DownloadDelegate$HttpInfo;

    iget-object v1, p3, Lcn/kuwo/base/http/HttpResult;->i:Ljava/lang/String;

    iput-object v1, v0, Lcn/kuwo/service/DownloadDelegate$HttpInfo;->d:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->q:Lcn/kuwo/service/DownloadDelegate$HttpInfo;

    iget-object v1, p3, Lcn/kuwo/base/http/HttpResult;->j:Ljava/lang/String;

    iput-object v1, v0, Lcn/kuwo/service/DownloadDelegate$HttpInfo;->e:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->q:Lcn/kuwo/service/DownloadDelegate$HttpInfo;

    iget-wide v2, p3, Lcn/kuwo/base/http/HttpResult;->m:J

    iput-wide v2, v0, Lcn/kuwo/service/DownloadDelegate$HttpInfo;->f:J

    iget v2, p0, Lcn/kuwo/service/downloader/DownloadCore;->p:I

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->m:Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;

    if-nez v0, :cond_6

    move v3, v6

    :goto_2
    iget-object v5, p0, Lcn/kuwo/service/downloader/DownloadCore;->q:Lcn/kuwo/service/DownloadDelegate$HttpInfo;

    move-object v0, p0

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lcn/kuwo/service/downloader/DownloadCore;->a(IIILcn/kuwo/service/DownloadDelegate$DataSrc;Lcn/kuwo/service/DownloadDelegate$HttpInfo;)V

    :cond_4
    iput p2, p0, Lcn/kuwo/service/downloader/DownloadCore;->o:I

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->n:Lcn/kuwo/base/util/KwTimer;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcn/kuwo/base/util/KwTimer;->start(I)V

    move v0, v6

    :goto_3
    const/4 v1, 0x5

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->r:[I

    aput v6, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    sget-object v4, Lcn/kuwo/service/DownloadDelegate$DataSrc;->a:Lcn/kuwo/service/DownloadDelegate$DataSrc;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget v3, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->j:I

    goto :goto_2

    :cond_7
    iput v6, p0, Lcn/kuwo/service/downloader/DownloadCore;->s:I

    goto/16 :goto_0
.end method

.method protected a()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->a:Ljava/lang/String;

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/kuwo/service/downloader/DownloadCore;->b()V

    return-void
.end method

.method protected a(Lcn/kuwo/service/downloader/FinalDownloadTask;)V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->a:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->c:Z

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->o:Lcn/kuwo/service/downloader/strategies/IStrategy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->f:Lcn/kuwo/service/DownloadProxy$DownType;

    invoke-static {v1}, Lcn/kuwo/service/downloader/strategies/StrategyCreator;->a(Lcn/kuwo/service/DownloadProxy$DownType;)Lcn/kuwo/service/downloader/strategies/IStrategy;

    move-result-object v1

    iput-object v1, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->o:Lcn/kuwo/service/downloader/strategies/IStrategy;

    :cond_0
    invoke-static {}, Lcn/kuwo/base/util/SDCardUtils;->isAvaliable()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->f:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    invoke-direct {p0, v0}, Lcn/kuwo/service/downloader/DownloadCore;->a(Lcn/kuwo/service/DownloadDelegate$ErrorCode;)V

    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->g:Lcn/kuwo/service/downloader/DownloadCore$Step;

    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->f:Lcn/kuwo/service/downloader/DownloadCore$Step;

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->l:I

    invoke-direct {p0}, Lcn/kuwo/service/downloader/DownloadCore;->c()V

    return-void

    :cond_2
    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->e:Lcn/kuwo/base/bean/Music;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v2, v2, Lcn/kuwo/service/downloader/FinalDownloadTask;->e:Lcn/kuwo/base/bean/Music;

    iget-object v2, v2, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->a:Lcn/kuwo/service/downloader/DownloadCore$Step;

    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->f:Lcn/kuwo/service/downloader/DownloadCore$Step;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v2, v2, Lcn/kuwo/service/downloader/FinalDownloadTask;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->o:Lcn/kuwo/service/downloader/strategies/IStrategy;

    iget-object v2, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    invoke-interface {v1, v2}, Lcn/kuwo/service/downloader/strategies/IStrategy;->b(Lcn/kuwo/service/downloader/FinalDownloadTask;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    :cond_4
    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->d:Lcn/kuwo/service/downloader/DownloadCore$Step;

    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->f:Lcn/kuwo/service/downloader/DownloadCore$Step;

    goto :goto_0
.end method

.method public onAntiStealingFinished(Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;Z)V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Antistealing success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iput-object p1, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->m:Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, p1, Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;->b:Ljava/lang/String;

    iput-object v1, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->h:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, p1, Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;->a:Ljava/lang/String;

    iput-object v1, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->i:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget v1, p1, Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;->d:I

    iput v1, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->j:I

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->f:Lcn/kuwo/service/DownloadProxy$DownType;

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->g:Lcn/kuwo/service/DownloadProxy$Quality;

    iget-object v2, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v2, v2, Lcn/kuwo/service/downloader/FinalDownloadTask;->e:Lcn/kuwo/base/bean/Music;

    iget-wide v2, v2, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/service/downloader/DownCacheMgr;->a(Lcn/kuwo/service/DownloadProxy$DownType;Lcn/kuwo/service/DownloadProxy$Quality;J)Lcn/kuwo/service/downloader/DownCacheMgr$DownloadSongInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->e:Lcn/kuwo/service/downloader/DownloadCore$Step;

    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->f:Lcn/kuwo/service/downloader/DownloadCore$Step;

    :goto_1
    invoke-direct {p0}, Lcn/kuwo/service/downloader/DownloadCore;->c()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->e:Lcn/kuwo/base/bean/Music;

    iget-wide v0, v0, Lcn/kuwo/base/bean/Music;->a:J

    iget-object v2, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v2, v2, Lcn/kuwo/service/downloader/FinalDownloadTask;->m:Lcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;

    invoke-static {v0, v1, v2}, Lcn/kuwo/service/downloader/DownCacheMgr;->a(JLcn/kuwo/service/downloader/antistealing/AntiStealing$AntiStealingResult;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v0, v0, Lcn/kuwo/service/downloader/FinalDownloadTask;->o:Lcn/kuwo/service/downloader/strategies/IStrategy;

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    invoke-interface {v0, v1}, Lcn/kuwo/service/downloader/strategies/IStrategy;->b(Lcn/kuwo/service/downloader/FinalDownloadTask;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    invoke-static {v1}, Lcn/kuwo/service/downloader/DownCacheMgr;->j(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iput-object v0, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->d:Lcn/kuwo/service/downloader/DownloadCore$Step;

    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->f:Lcn/kuwo/service/downloader/DownloadCore$Step;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->a:Ljava/lang/String;

    const-string v1, "Antistealing failed"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->b:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    invoke-direct {p0, v0}, Lcn/kuwo/service/downloader/DownloadCore;->a(Lcn/kuwo/service/DownloadDelegate$ErrorCode;)V

    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->g:Lcn/kuwo/service/downloader/DownloadCore$Step;

    iput-object v0, p0, Lcn/kuwo/service/downloader/DownloadCore;->f:Lcn/kuwo/service/downloader/DownloadCore$Step;

    goto :goto_1
.end method

.method public onTimer(Lcn/kuwo/base/util/KwTimer;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget-object v1, v1, Lcn/kuwo/service/downloader/FinalDownloadTask;->d:Lcn/kuwo/service/DownloadDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->r:[I

    iget v2, p0, Lcn/kuwo/service/downloader/DownloadCore;->s:I

    iget v3, p0, Lcn/kuwo/service/downloader/DownloadCore;->p:I

    aput v3, v1, v2

    iget v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->s:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->s:I

    iget v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->s:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->s:I

    :cond_0
    iget v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->p:I

    iget-object v2, p0, Lcn/kuwo/service/downloader/DownloadCore;->r:[I

    iget v3, p0, Lcn/kuwo/service/downloader/DownloadCore;->s:I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr v1, v2

    cmpg-float v2, v1, v0

    if-gez v2, :cond_2

    :goto_0
    iget-object v1, p0, Lcn/kuwo/service/downloader/DownloadCore;->j:Lcn/kuwo/service/downloader/DownloadCore$ProgressRunner;

    iget-object v2, p0, Lcn/kuwo/service/downloader/DownloadCore;->g:Lcn/kuwo/service/downloader/FinalDownloadTask;

    iget v3, p0, Lcn/kuwo/service/downloader/DownloadCore;->o:I

    iget v4, p0, Lcn/kuwo/service/downloader/DownloadCore;->p:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcn/kuwo/service/downloader/DownloadCore$ProgressRunner;->a(Lcn/kuwo/service/downloader/FinalDownloadTask;IIF)Lcn/kuwo/service/downloader/DownloadCore$ProgressRunner;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/kuwo/service/downloader/DownloadCore;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
