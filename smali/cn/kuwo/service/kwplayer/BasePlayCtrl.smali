.class public abstract Lcn/kuwo/service/kwplayer/BasePlayCtrl;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/base/util/KwTimer$Listener;
.implements Lcn/kuwo/service/kwplayer/IPlayCtrl;
.implements Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnCompletionListener;
.implements Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnErrorListener;
.implements Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnStateChangedListener;


# static fields
.field protected static final PLAY_TIME_OUT:J = 0x1388L

.field private static TAG:Ljava/lang/String;

.field protected static currentNotifyVersion:I

.field private static kwAudioPlayer:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

.field private static lastNeedDelete:Ljava/lang/String;

.field private static nextNotifyVersion:I

.field protected static progressRunner:Lcn/kuwo/service/kwplayer/BasePlayCtrl$ProgressRunner;

.field private static systemAudioPlayer:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;


# instance fields
.field private currentPlayer:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

.field protected currentStep:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

.field protected delegate:Lcn/kuwo/service/PlayDelegate;

.field protected isRadio:Z

.field protected lastError:Lcn/kuwo/service/PlayDelegate$ErrorCode;

.field private lastStep:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

.field protected msgHandler:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

.field protected savePath:Ljava/lang/String;

.field private volatile status:Lcn/kuwo/service/PlayProxy$Status;

.field private timer:Lcn/kuwo/base/util/KwTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "BasePlayCtrl"

    sput-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->TAG:Ljava/lang/String;

    new-instance v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$ProgressRunner;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/kuwo/service/kwplayer/BasePlayCtrl$ProgressRunner;-><init>(Lcn/kuwo/service/kwplayer/BasePlayCtrl$1;)V

    sput-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->progressRunner:Lcn/kuwo/service/kwplayer/BasePlayCtrl$ProgressRunner;

    const/16 v0, 0x64

    sput v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->nextNotifyVersion:I

    return-void
.end method

.method public constructor <init>(Lcn/kuwo/core/messagemgr/ThreadMessageHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->status:Lcn/kuwo/service/PlayProxy$Status;

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->msgHandler:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/service/kwplayer/BasePlayCtrl;)Lcn/kuwo/service/PlayProxy$Status;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->status:Lcn/kuwo/service/PlayProxy$Status;

    return-object v0
.end method

.method private initPlayer()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentPlayer:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    invoke-virtual {v0, p0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->setOnStateChangedListener(Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnStateChangedListener;)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentPlayer:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    invoke-virtual {v0, p0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->setOnErrorListener(Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentPlayer:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    invoke-virtual {v0, p0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->setOnCompletionListener(Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnCompletionListener;)V

    return-void
.end method

.method private isCacheFile(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x7

    invoke-static {v0}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private final processStep()Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;
    .locals 3

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentStep:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->lastStep:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processStep\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentStep:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentStep:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->lastStep:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    :cond_0
    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$8;->$SwitchMap$cn$kuwo$service$kwplayer$BasePlayCtrl$Step:[I

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentStep:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    invoke-virtual {v1}, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->WAITING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->stepBuffering()Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->stepPlaying()Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->stepPaused()Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->stepComplete()Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->stepError()Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->stepStop()Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

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
    .end packed-switch
.end method


# virtual methods
.method public abstract cancle(Z)V
.end method

.method protected doDeleteWhenNext(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->lastNeedDelete:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->lastNeedDelete:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->lastNeedDelete:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sput-object v1, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->lastNeedDelete:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->lastNeedDelete:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownCacheMgr;->i(Ljava/lang/String;)V

    sput-object v1, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->lastNeedDelete:Ljava/lang/String;

    goto :goto_0
.end method

.method protected downErr2playErr(Lcn/kuwo/service/DownloadDelegate$ErrorCode;)Lcn/kuwo/service/PlayDelegate$ErrorCode;
    .locals 2

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$8;->$SwitchMap$cn$kuwo$service$DownloadDelegate$ErrorCode:[I

    invoke-virtual {p1}, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->r:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->a:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->b:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->q:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->b:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->o:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->m:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->n:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->s:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->r:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    goto :goto_0

    nop

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
        :pswitch_8
    .end packed-switch
.end method

.method public getPlayer()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentPlayer:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    return-object v0
.end method

.method public getStatus()Lcn/kuwo/service/PlayProxy$Status;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->status:Lcn/kuwo/service/PlayProxy$Status;

    return-object v0
.end method

.method protected goError(Lcn/kuwo/service/PlayDelegate$ErrorCode;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->goError(Lcn/kuwo/service/PlayDelegate$ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method protected goError(Lcn/kuwo/service/PlayDelegate$ErrorCode;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->setError(Lcn/kuwo/service/PlayDelegate$ErrorCode;)V

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->ERROR:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentStep:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->process()V

    return-void
.end method

.method protected isOutOfTime(J)Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected notifyBuffering()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->delegate:Lcn/kuwo/service/PlayDelegate;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/service/kwplayer/BasePlayCtrl$6;

    sget v2, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentNotifyVersion:I

    invoke-direct {v1, p0, v2}, Lcn/kuwo/service/kwplayer/BasePlayCtrl$6;-><init>(Lcn/kuwo/service/kwplayer/BasePlayCtrl;I)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto :goto_0
.end method

.method protected notifyBufferingFinish()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->delegate:Lcn/kuwo/service/PlayDelegate;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/service/kwplayer/BasePlayCtrl$7;

    sget v2, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentNotifyVersion:I

    invoke-direct {v1, p0, v2}, Lcn/kuwo/service/kwplayer/BasePlayCtrl$7;-><init>(Lcn/kuwo/service/kwplayer/BasePlayCtrl;I)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto :goto_0
.end method

.method protected notifyError(Lcn/kuwo/service/PlayDelegate$ErrorCode;)V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->delegate:Lcn/kuwo/service/PlayDelegate;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/service/kwplayer/BasePlayCtrl$5;

    sget v2, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentNotifyVersion:I

    invoke-direct {v1, p0, v2, p1}, Lcn/kuwo/service/kwplayer/BasePlayCtrl$5;-><init>(Lcn/kuwo/service/kwplayer/BasePlayCtrl;ILcn/kuwo/service/PlayDelegate$ErrorCode;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto :goto_0
.end method

.method protected notifyPause()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->delegate:Lcn/kuwo/service/PlayDelegate;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->TAG:Ljava/lang/String;

    const-string v1, "notifyPause"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/service/kwplayer/BasePlayCtrl$2;

    sget v2, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentNotifyVersion:I

    invoke-direct {v1, p0, v2}, Lcn/kuwo/service/kwplayer/BasePlayCtrl$2;-><init>(Lcn/kuwo/service/kwplayer/BasePlayCtrl;I)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto :goto_0
.end method

.method protected notifyProgress(III)V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->delegate:Lcn/kuwo/service/PlayDelegate;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->progressRunner:Lcn/kuwo/service/kwplayer/BasePlayCtrl$ProgressRunner;

    iget-object v2, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->delegate:Lcn/kuwo/service/PlayDelegate;

    invoke-virtual {v1, v2, p1, p2, p3}, Lcn/kuwo/service/kwplayer/BasePlayCtrl$ProgressRunner;->pack(Lcn/kuwo/service/PlayDelegate;III)Lcn/kuwo/service/kwplayer/BasePlayCtrl$ProgressRunner;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto :goto_0
.end method

.method protected notifyResume()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->delegate:Lcn/kuwo/service/PlayDelegate;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->TAG:Ljava/lang/String;

    const-string v1, "notifyResume"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/service/kwplayer/BasePlayCtrl$3;

    sget v2, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentNotifyVersion:I

    invoke-direct {v1, p0, v2}, Lcn/kuwo/service/kwplayer/BasePlayCtrl$3;-><init>(Lcn/kuwo/service/kwplayer/BasePlayCtrl;I)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto :goto_0
.end method

.method protected notifyStart(J)V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->delegate:Lcn/kuwo/service/PlayDelegate;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    :cond_1
    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->TAG:Ljava/lang/String;

    const-string v1, "notifyStart"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/service/kwplayer/BasePlayCtrl$1;

    sget v2, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentNotifyVersion:I

    invoke-direct {v1, p0, v2, p1, p2}, Lcn/kuwo/service/kwplayer/BasePlayCtrl$1;-><init>(Lcn/kuwo/service/kwplayer/BasePlayCtrl;IJ)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto :goto_0
.end method

.method protected notifyStop(Z)V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->delegate:Lcn/kuwo/service/PlayDelegate;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->TAG:Ljava/lang/String;

    const-string v1, "notifyStop"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->savePath:Ljava/lang/String;

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    new-instance v2, Lcn/kuwo/service/kwplayer/BasePlayCtrl$4;

    invoke-direct {v2, p0, p1, v0}, Lcn/kuwo/service/kwplayer/BasePlayCtrl$4;-><init>(Lcn/kuwo/service/kwplayer/BasePlayCtrl;ZLjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto :goto_0
.end method

.method public abstract onTimer(Lcn/kuwo/base/util/KwTimer;)V
.end method

.method public abstract open(Lcn/kuwo/base/bean/Music;I)Lcn/kuwo/service/PlayDelegate$ErrorCode;
.end method

.method public play(Lcn/kuwo/base/bean/Music;ZI)Lcn/kuwo/service/PlayDelegate$ErrorCode;
    .locals 2

    sget v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->nextNotifyVersion:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->nextNotifyVersion:I

    sput v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentNotifyVersion:I

    iput-boolean p2, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->isRadio:Z

    invoke-virtual {p0, p1, p3}, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->open(Lcn/kuwo/base/bean/Music;I)Lcn/kuwo/service/PlayDelegate$ErrorCode;

    move-result-object v0

    return-object v0
.end method

.method protected player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentPlayer:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->useSystemPlayer()V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentPlayer:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    return-object v0
.end method

.method protected final process()V
    .locals 2

    :goto_0
    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->processStep()Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->WAITING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentStep:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    goto :goto_0
.end method

.method protected rememberNeedDeleteWhenNext(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->lastNeedDelete:Ljava/lang/String;

    iget-boolean v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->isRadio:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcn/kuwo/service/downloader/DownCacheMgr;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->isCacheFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sput-object p1, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->lastNeedDelete:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setDelegate(Lcn/kuwo/service/PlayDelegate;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->delegate:Lcn/kuwo/service/PlayDelegate;

    return-void
.end method

.method protected setError(Lcn/kuwo/service/PlayDelegate$ErrorCode;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->setError(Lcn/kuwo/service/PlayDelegate$ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method protected setError(Lcn/kuwo/service/PlayDelegate$ErrorCode;Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->lastError:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    if-nez p2, :cond_0

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setStatus(Lcn/kuwo/service/PlayProxy$Status;)V
    .locals 3

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->status:Lcn/kuwo/service/PlayProxy$Status;

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {p1}, Lcn/kuwo/service/PlayProxy$Status;->ordinal()I

    move-result v1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v2

    invoke-interface {v2}, Lcn/kuwo/mod/playcontrol/IPlayControl;->e()Lcn/kuwo/base/bean/Music;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/kuwo/kwmusiccar/KwCarPlay;->sendPlayerStatusBroadcast(Landroid/content/Context;ILcn/kuwo/base/bean/Music;)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->getPlayer()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->setVolume(FF)V

    return-void
.end method

.method protected final startTimer()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->timer:Lcn/kuwo/base/util/KwTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/base/util/KwTimer;

    invoke-direct {v0, p0}, Lcn/kuwo/base/util/KwTimer;-><init>(Lcn/kuwo/base/util/KwTimer$Listener;)V

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->timer:Lcn/kuwo/base/util/KwTimer;

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->timer:Lcn/kuwo/base/util/KwTimer;

    invoke-virtual {v0, p0}, Lcn/kuwo/base/util/KwTimer;->setListener(Lcn/kuwo/base/util/KwTimer$Listener;)V

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->timer:Lcn/kuwo/base/util/KwTimer;

    sget-boolean v0, Lcn/kuwo/kwmusiccar/App;->IS_FORGROUND:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3e8

    :goto_0
    invoke-virtual {v1, v0}, Lcn/kuwo/base/util/KwTimer;->start(I)V

    return-void

    :cond_1
    const/16 v0, 0xbb8

    goto :goto_0
.end method

.method protected stepBuffering()Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;
    .locals 1

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->WAITING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    return-object v0
.end method

.method protected stepComplete()Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;
    .locals 1

    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->e:Lcn/kuwo/service/PlayProxy$Status;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->status:Lcn/kuwo/service/PlayProxy$Status;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->notifyStop(Z)V

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->STOP:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    return-object v0
.end method

.method protected stepError()Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;
    .locals 1

    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->e:Lcn/kuwo/service/PlayProxy$Status;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->status:Lcn/kuwo/service/PlayProxy$Status;

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->lastError:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->notifyError(Lcn/kuwo/service/PlayDelegate$ErrorCode;)V

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->STOP:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    return-object v0
.end method

.method protected stepPaused()Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;
    .locals 1

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->WAITING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    return-object v0
.end method

.method protected stepPlaying()Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;
    .locals 1

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->WAITING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    return-object v0
.end method

.method protected stepStop()Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;
    .locals 1

    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->e:Lcn/kuwo/service/PlayProxy$Status;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->status:Lcn/kuwo/service/PlayProxy$Status;

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->stopTimer()V

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->stop()V

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->WAITING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    return-object v0
.end method

.method public stop(Z)V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentNotifyVersion:I

    invoke-virtual {p0, p1}, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->cancle(Z)V

    return-void
.end method

.method protected final stopTimer()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->timer:Lcn/kuwo/base/util/KwTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->timer:Lcn/kuwo/base/util/KwTimer;

    invoke-virtual {v0}, Lcn/kuwo/base/util/KwTimer;->stop()V

    :cond_0
    return-void
.end method

.method protected final useKwPlayer()V
    .locals 2

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->TAG:Ljava/lang/String;

    const-string v1, "useKwPlayer"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentPlayer:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentPlayer:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->stop()V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentPlayer:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentPlayer:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    sget-object v1, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->kwAudioPlayer:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    if-eq v0, v1, :cond_3

    :cond_1
    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->kwAudioPlayer:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    if-nez v0, :cond_2

    new-instance v0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;

    invoke-direct {v0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;-><init>()V

    sput-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->kwAudioPlayer:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    :cond_2
    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->kwAudioPlayer:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentPlayer:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    :cond_3
    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->initPlayer()V

    return-void
.end method

.method protected final useSystemPlayer()V
    .locals 2

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->TAG:Ljava/lang/String;

    const-string v1, "useSystemPlayer"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentPlayer:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentPlayer:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->stop()V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentPlayer:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentPlayer:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    sget-object v1, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->systemAudioPlayer:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    if-eq v0, v1, :cond_3

    :cond_1
    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->systemAudioPlayer:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    if-nez v0, :cond_2

    new-instance v0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;

    invoke-direct {v0}, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;-><init>()V

    sput-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->systemAudioPlayer:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    :cond_2
    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->systemAudioPlayer:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentPlayer:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    :cond_3
    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->initPlayer()V

    return-void
.end method
