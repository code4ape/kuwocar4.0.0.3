.class public Lcn/kuwo/service/kwplayer/LocalPlayCtrl;
.super Lcn/kuwo/service/kwplayer/BasePlayCtrl;


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalPlayCtrl"


# instance fields
.field private durationCache:I

.field private format:Ljava/lang/String;

.field private lastCheckPlayPosTime:J

.field private lastPlayPos:I


# direct methods
.method public constructor <init>(Lcn/kuwo/core/messagemgr/ThreadMessageHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/service/kwplayer/BasePlayCtrl;-><init>(Lcn/kuwo/core/messagemgr/ThreadMessageHandler;)V

    return-void
.end method


# virtual methods
.method public cancle(Z)V
    .locals 2

    const-string v0, "LocalPlayCtrl"

    const-string v1, "Local cancle"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->e:Lcn/kuwo/service/PlayProxy$Status;

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->setStatus(Lcn/kuwo/service/PlayProxy$Status;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->notifyStop(Z)V

    :cond_0
    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->STOP:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->currentStep:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->process()V

    return-void
.end method

.method public getBufferPos()I
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->getDuration()I

    move-result v0

    return v0
.end method

.method public getCurrentPos()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->getDuration()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v1

    sget-object v2, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    iget v0, p0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->durationCache:I

    if-lez v0, :cond_0

    iget v0, p0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->durationCache:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->durationCache:I

    iget v0, p0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->durationCache:I

    goto :goto_0
.end method

.method public getPlayLogInfo(Lcn/kuwo/service/PlayProxy$PlayLogInfo;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v1

    sget-object v2, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->format:Ljava/lang/String;

    iput-object v1, p1, Lcn/kuwo/service/PlayProxy$PlayLogInfo;->b:Ljava/lang/String;

    iput v0, p1, Lcn/kuwo/service/PlayProxy$PlayLogInfo;->a:I

    iput-boolean v0, p1, Lcn/kuwo/service/PlayProxy$PlayLogInfo;->c:Z

    iput v0, p1, Lcn/kuwo/service/PlayProxy$PlayLogInfo;->d:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPreparingPercent()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getStatus()Lcn/kuwo/service/PlayProxy$Status;
    .locals 1

    invoke-super {p0}, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    return-object v0
.end method

.method public onCompletion(Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;)V
    .locals 3

    const-string v0, "LocalPlayCtrl"

    const-string v1, "onCompletion"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->msgHandler:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v1}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/kuwo/service/kwplayer/LocalPlayCtrl$2;

    invoke-direct {v2, p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl$2;-><init>(Lcn/kuwo/service/kwplayer/LocalPlayCtrl;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method

.method public onError(Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;ILjava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    const-string v0, "LocalPlayCtrl"

    const-string v1, "onError"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->r:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    const v1, 0x1000002

    if-ne p2, v1, :cond_2

    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->j:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    :cond_1
    :goto_1
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->msgHandler:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v2}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcn/kuwo/service/kwplayer/LocalPlayCtrl$1;

    invoke-direct {v3, p0, v0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl$1;-><init>(Lcn/kuwo/service/kwplayer/LocalPlayCtrl;Lcn/kuwo/service/PlayDelegate$ErrorCode;)V

    invoke-virtual {v1, v2, v3}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto :goto_0

    :cond_2
    const v1, 0x1000001

    if-ne p2, v1, :cond_1

    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->k:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    goto :goto_1
.end method

.method public onStateChanged(Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;)V
    .locals 0

    return-void
.end method

.method public onTimer(Lcn/kuwo/base/util/KwTimer;)V
    .locals 0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->process()V

    return-void
.end method

.method public open(Lcn/kuwo/base/bean/Music;I)Lcn/kuwo/service/PlayDelegate$ErrorCode;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->r:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "LocalPlayCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->d:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->stepStop()Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    :cond_2
    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->s:Ljava/lang/String;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->format:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->format:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownCacheMgr;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->format:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->useSystemPlayer()V

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    iget-object v1, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    iget-object v2, p0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->format:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->play(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->getLastError()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "useSystemPlayer unknown error"

    :cond_4
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->format:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->isSupportFormat(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->k:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->useKwPlayer()V

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    iget-object v1, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    iget-object v2, p0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->format:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->play(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->getLastError()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "useKwPlayer unknown error"

    :cond_6
    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->j:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->PLAYING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->currentStep:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->setStatus(Lcn/kuwo/service/PlayProxy$Status;)V

    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->savePath:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->startTimer()V

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->getRealStartTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->notifyStart(J)V

    iput v3, p0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->lastPlayPos:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->lastCheckPlayPosTime:J

    iput v3, p0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->durationCache:I

    if-lez p2, :cond_8

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->getDuration()I

    move-result v0

    if-ge p2, v0, :cond_8

    invoke-virtual {p0, p2}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->seek(I)V

    :cond_8
    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->a:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 2

    const-string v0, "LocalPlayCtrl"

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->pause()V

    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->d:Lcn/kuwo/service/PlayProxy$Status;

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->setStatus(Lcn/kuwo/service/PlayProxy$Status;)V

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->PAUSED:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->currentStep:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->notifyPause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->d:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->resume()V

    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->setStatus(Lcn/kuwo/service/PlayProxy$Status;)V

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->PLAYING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->currentStep:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->notifyResume()V

    :cond_0
    return-void
.end method

.method public seek(I)V
    .locals 2

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->getDuration()I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method protected stepPlaying()Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;
    .locals 2

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->getDuration()I

    move-result v0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->getCurrentPos()I

    move-result v1

    invoke-virtual {p0, v0, v1, v0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->notifyProgress(III)V

    iget v0, p0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->lastPlayPos:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->lastCheckPlayPosTime:J

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->isOutOfTime(J)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->r:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->setError(Lcn/kuwo/service/PlayDelegate$ErrorCode;)V

    const-string v0, "LocalPlayCtrl"

    const-string v1, "_play pos pause out of time"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->ERROR:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    :goto_0
    return-object v0

    :cond_0
    iput v1, p0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->lastPlayPos:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->lastCheckPlayPosTime:J

    :cond_1
    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->WAITING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    goto :goto_0
.end method
