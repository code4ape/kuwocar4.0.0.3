.class public Lcn/kuwo/service/kwplayer/NetPlayCtrl;
.super Lcn/kuwo/service/kwplayer/BasePlayCtrl;

# interfaces
.implements Lcn/kuwo/service/DownloadDelegate;


# static fields
.field private static final AAC_BUFFER_START_LEN:I = 0x64000

.field private static final BUFFER_PAUSE_SECOND:I = 0x2

.field private static final BUFFER_RESUME_SECOND:I = 0x12

.field private static final BUFFER_START_SECOND:I = 0x8

.field private static final START_BUFFER_TIME_OUT:J = 0x4e20L

.field public static final TAG:Ljava/lang/String; = "NetPlayCtrl"

.field private static final WAITING_BUFFER_TIME_OUT:J = 0x4e20L


# instance fields
.field private averageSpeed:I

.field private blankAACDataLen:I

.field private cacheFile:Ljava/lang/String;

.field private continuePos:I

.field private dataSrc:Lcn/kuwo/service/DownloadDelegate$DataSrc;

.field private volatile downFailed:Z

.field private volatile downFailedCode:Lcn/kuwo/service/PlayDelegate$ErrorCode;

.field private downTaskID:I

.field private downloadedLen:I

.field private durationCache:I

.field private httpInfo:Lcn/kuwo/service/DownloadDelegate$HttpInfo;

.field private lastCheckPlayBufferPosTime:J

.field private lastCheckPlayPos:I

.field private lastCheckPlayPosTime:J

.field private lastCheckStartBufferLen:I

.field private lastCheckStartBufferLenTime:J

.field private lastCheckblankAACDataLen:I

.field private music:Lcn/kuwo/base/bean/Music;

.field private musicBitrate:I

.field private musicFormatStr:Ljava/lang/String;

.field private networkStateChangeTool:Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;

.field private quality:Lcn/kuwo/service/DownloadProxy$Quality;

.field private startDownloadTime:J

.field private startLen:I

.field private startWhenDownFinish:Z

.field private totalFileLen:I


# direct methods
.method public constructor <init>(Lcn/kuwo/core/messagemgr/ThreadMessageHandler;)V
    .locals 2

    invoke-direct {p0, p1}, Lcn/kuwo/service/kwplayer/BasePlayCtrl;-><init>(Lcn/kuwo/core/messagemgr/ThreadMessageHandler;)V

    new-instance v0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;-><init>(Lcn/kuwo/service/kwplayer/NetPlayCtrl;Lcn/kuwo/service/kwplayer/NetPlayCtrl$1;)V

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->networkStateChangeTool:Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;

    return-void
.end method

.method static synthetic access$100(Lcn/kuwo/service/kwplayer/NetPlayCtrl;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downFailed:Z

    return v0
.end method

.method static synthetic access$202(Lcn/kuwo/service/kwplayer/NetPlayCtrl;I)I
    .locals 0

    iput p1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downTaskID:I

    return p1
.end method

.method static synthetic access$300(Lcn/kuwo/service/kwplayer/NetPlayCtrl;)Lcn/kuwo/base/bean/Music;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->music:Lcn/kuwo/base/bean/Music;

    return-object v0
.end method

.method static synthetic access$400(Lcn/kuwo/service/kwplayer/NetPlayCtrl;)Lcn/kuwo/service/DownloadProxy$Quality;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->quality:Lcn/kuwo/service/DownloadProxy$Quality;

    return-object v0
.end method

.method private canStart()Z
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->isDownComplete()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->getStartLen()I

    move-result v1

    if-lez v1, :cond_2

    iget v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downloadedLen:I

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->getStartLen()I

    move-result v2

    if-ge v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkBuffer()Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;
    .locals 4

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->isDownComplete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->getBufferPos()I

    move-result v0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->getCurrentPosition()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x4650

    if-le v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->resume()V

    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->setStatus(Lcn/kuwo/service/PlayProxy$Status;)V

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->notifyBufferingFinish()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->lastCheckPlayPosTime:J

    const-string v0, "NetPlayCtrl"

    const-string v1, "enouth bufer,_play"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->PLAYING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    :goto_0
    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downFailed:Z

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->lastCheckPlayBufferPosTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downFailedCode:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    sget-object v1, Lcn/kuwo/service/PlayDelegate$ErrorCode;->a:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->b:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    :goto_1
    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->setError(Lcn/kuwo/service/PlayDelegate$ErrorCode;)V

    const-string v0, "NetPlayCtrl"

    const-string v1, "wait buffer time out"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->ERROR:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downFailedCode:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    goto :goto_1

    :cond_4
    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->WAITING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    goto :goto_0
.end method

.method private checkStart()Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;
    .locals 4

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->updateBlankAACDataLen()V

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->canStart()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NetPlayCtrl"

    const-string v1, "start buffer enough,_play"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->realStart()Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->lastCheckStartBufferLen:I

    iget v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downloadedLen:I

    if-ne v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->lastCheckStartBufferLenTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->b:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->setError(Lcn/kuwo/service/PlayDelegate$ErrorCode;)V

    const-string v0, "NetPlayCtrl"

    const-string v1, "start buffer time out"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->ERROR:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->WAITING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    goto :goto_0
.end method

.method private getStartLen()I
    .locals 2

    iget-boolean v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->startWhenDownFinish:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->totalFileLen:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->startLen:I

    iget v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->totalFileLen:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private init()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v2, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->music:Lcn/kuwo/base/bean/Music;

    sget-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->a:Lcn/kuwo/service/DownloadProxy$Quality;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->quality:Lcn/kuwo/service/DownloadProxy$Quality;

    iput-object v2, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->musicFormatStr:Ljava/lang/String;

    iput v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->musicBitrate:I

    iput v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downTaskID:I

    iput-object v2, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->cacheFile:Ljava/lang/String;

    iput v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->totalFileLen:I

    iput v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downloadedLen:I

    iput v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->startLen:I

    iput v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->lastCheckblankAACDataLen:I

    iput v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->blankAACDataLen:I

    iput v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->lastCheckPlayPos:I

    iput-wide v4, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->lastCheckPlayPosTime:J

    iput v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->lastCheckStartBufferLen:I

    iput-wide v4, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->lastCheckStartBufferLenTime:J

    iput-wide v4, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->lastCheckPlayBufferPosTime:J

    iput-boolean v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->startWhenDownFinish:Z

    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->a:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downFailedCode:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    iput-boolean v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downFailed:Z

    iput v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->continuePos:I

    iput v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->durationCache:I

    iput v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->averageSpeed:I

    return-void
.end method

.method private initStartLenInfo()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->musicFormatStr:Ljava/lang/String;

    const-string v1, "aac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x64000

    iput v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->startLen:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->musicBitrate:I

    mul-int/lit8 v0, v0, 0x8

    mul-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->startLen:I

    goto :goto_0
.end method

.method private isDownComplete()Z
    .locals 2

    iget v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->totalFileLen:I

    if-lez v0, :cond_0

    iget v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downloadedLen:I

    iget v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->totalFileLen:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private realStart()Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;
    .locals 3

    const-string v0, "NetPlayCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "realStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->cacheFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downloadedLen:I

    iget v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->totalFileLen:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->useSystemPlayer()V

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->cacheFile:Ljava/lang/String;

    iget-object v2, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->musicFormatStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->play(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->getLastError()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "useSystemPlayer unknown error"

    :cond_0
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->useKwPlayer()V

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->cacheFile:Ljava/lang/String;

    iget-object v2, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->musicFormatStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->play(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->getLastError()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "useKwPlayer unknown error"

    :cond_1
    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->j:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->setError(Lcn/kuwo/service/PlayDelegate$ErrorCode;)V

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->ERROR:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->useKwPlayer()V

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->cacheFile:Ljava/lang/String;

    iget-object v2, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->musicFormatStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->play(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->startWhenDownFinish:Z

    iget v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->totalFileLen:I

    iput v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->startLen:I

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->BUFFERING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    goto :goto_0

    :cond_3
    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->setStatus(Lcn/kuwo/service/PlayProxy$Status;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->lastCheckPlayPosTime:J

    iget v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->continuePos:I

    if-lez v0, :cond_4

    iget v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->continuePos:I

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->seek(I)V

    :cond_4
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->getRealStartTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->notifyStart(J)V

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->PLAYING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    goto :goto_0
.end method

.method private updateBlankAACDataLen()V
    .locals 2

    iget v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downloadedLen:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->musicFormatStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->musicFormatStr:Ljava/lang/String;

    const-string v1, "aac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downloadedLen:I

    iget v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->totalFileLen:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downloadedLen:I

    div-int/lit16 v0, v0, 0x2800

    iget v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->lastCheckblankAACDataLen:I

    div-int/lit16 v1, v1, 0x2800

    if-le v0, v1, :cond_0

    :cond_2
    iget v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downloadedLen:I

    iput v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->lastCheckblankAACDataLen:I

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->cacheFile:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->getValidFramePosition(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->blankAACDataLen:I

    iget v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->blankAACDataLen:I

    if-lez v0, :cond_0

    iget v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->blankAACDataLen:I

    iget v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->musicBitrate:I

    mul-int/lit8 v1, v1, 0x8

    mul-int/lit16 v1, v1, 0x80

    add-int/2addr v0, v1

    iput v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->startLen:I

    goto :goto_0
.end method


# virtual methods
.method public DownloadDelegate_Finish(ILcn/kuwo/service/DownloadDelegate$ErrorCode;Ljava/lang/String;)V
    .locals 4

    const-string v0, "NetPlayCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "down finish,success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downTaskID:I

    sget-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->a:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    if-eq p2, v0, :cond_2

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->c:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p2}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downErr2playErr(Lcn/kuwo/service/DownloadDelegate$ErrorCode;)Lcn/kuwo/service/PlayDelegate$ErrorCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->goError(Lcn/kuwo/service/PlayDelegate$ErrorCode;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downFailed:Z

    invoke-virtual {p0, p2}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downErr2playErr(Lcn/kuwo/service/DownloadDelegate$ErrorCode;)Lcn/kuwo/service/PlayDelegate$ErrorCode;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downFailedCode:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->networkStateChangeTool:Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;->attach()V

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->startDownloadTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    if-lez v0, :cond_3

    iget v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->totalFileLen:I

    div-int v0, v1, v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->averageSpeed:I

    :cond_3
    iget v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->totalFileLen:I

    iput v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downloadedLen:I

    iput-object p3, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->cacheFile:Ljava/lang/String;

    iput-object p3, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->savePath:Ljava/lang/String;

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->updateBlankAACDataLen()V

    invoke-virtual {p0, p3}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->rememberNeedDeleteWhenNext(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->delegate:Lcn/kuwo/service/PlayDelegate;

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/service/kwplayer/NetPlayCtrl$3;

    sget v2, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->currentNotifyVersion:I

    invoke-direct {v1, p0, v2, p3}, Lcn/kuwo/service/kwplayer/NetPlayCtrl$3;-><init>(Lcn/kuwo/service/kwplayer/NetPlayCtrl;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto :goto_0
.end method

.method public DownloadDelegate_Progress(IIIF)V
    .locals 4

    iget v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downloadedLen:I

    if-ge v0, p3, :cond_0

    iput p3, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downloadedLen:I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->startDownloadTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    if-lez v0, :cond_1

    div-int v0, p3, v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->averageSpeed:I

    :cond_1
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->currentStep:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    sget-object v1, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->BUFFERING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->process()V

    :cond_2
    return-void
.end method

.method public DownloadDelegate_Start(ILjava/lang/String;Ljava/lang/String;IIILcn/kuwo/service/DownloadDelegate$DataSrc;Lcn/kuwo/service/DownloadDelegate$HttpInfo;)V
    .locals 2

    iput-object p8, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->httpInfo:Lcn/kuwo/service/DownloadDelegate$HttpInfo;

    iput p5, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downloadedLen:I

    iget-boolean v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downFailed:Z

    if-nez v0, :cond_2

    iput p6, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->musicBitrate:I

    iput-object p7, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->dataSrc:Lcn/kuwo/service/DownloadDelegate$DataSrc;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->startDownloadTime:J

    invoke-static {p3}, Lcn/kuwo/service/downloader/DownCacheMgr;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->musicFormatStr:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->musicFormatStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "aac"

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->musicFormatStr:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->initStartLenInfo()V

    iput-object p3, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->cacheFile:Ljava/lang/String;

    iput p4, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->totalFileLen:I

    invoke-virtual {p0, p3}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->doDeleteWhenNext(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->rememberNeedDeleteWhenNext(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->currentStep:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    sget-object v1, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->BUFFERING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->process()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downFailed:Z

    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->a:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downFailedCode:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    goto :goto_0
.end method

.method public cancle(Z)V
    .locals 2

    const-string v0, "NetPlayCtrl"

    const-string v1, "Net cancle"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->e:Lcn/kuwo/service/PlayProxy$Status;

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->setStatus(Lcn/kuwo/service/PlayProxy$Status;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->notifyStop(Z)V

    :cond_0
    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->STOP:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->currentStep:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->process()V

    return-void
.end method

.method public getBufferPos()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v1

    sget-object v2, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->getDuration()I

    move-result v1

    iget v2, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downloadedLen:I

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->totalFileLen:I

    iget v2, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->blankAACDataLen:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downloadedLen:I

    iget v3, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->blankAACDataLen:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    if-lez v0, :cond_2

    :goto_1
    int-to-float v0, v0

    div-float v0, v2, v0

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->totalFileLen:I

    goto :goto_1
.end method

.method public getCurrentPos()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v1

    sget-object v2, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->durationCache:I

    if-lez v1, :cond_1

    iget v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->durationCache:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v1

    sget-object v2, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->isDownComplete()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->durationCache:I

    :cond_3
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->getDuration()I

    move-result v0

    goto :goto_0
.end method

.method public getPlayLogInfo(Lcn/kuwo/service/PlayProxy$PlayLogInfo;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v2

    sget-object v3, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->musicFormatStr:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->musicFormatStr:Ljava/lang/String;

    iput-object v2, p1, Lcn/kuwo/service/PlayProxy$PlayLogInfo;->b:Ljava/lang/String;

    iget v2, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->musicBitrate:I

    iput v2, p1, Lcn/kuwo/service/PlayProxy$PlayLogInfo;->a:I

    iget-object v2, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->dataSrc:Lcn/kuwo/service/DownloadDelegate$DataSrc;

    sget-object v3, Lcn/kuwo/service/DownloadDelegate$DataSrc;->c:Lcn/kuwo/service/DownloadDelegate$DataSrc;

    if-eq v2, v3, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p1, Lcn/kuwo/service/PlayProxy$PlayLogInfo;->c:Z

    iget v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->averageSpeed:I

    iput v0, p1, Lcn/kuwo/service/PlayProxy$PlayLogInfo;->d:I

    goto :goto_0
.end method

.method public getPreparingPercent()I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downloadedLen:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->canStart()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x64

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->getStartLen()I

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downloadedLen:I

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method public getStatus()Lcn/kuwo/service/PlayProxy$Status;
    .locals 1

    invoke-super {p0}, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    return-object v0
.end method

.method public onCompletion(Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;)V
    .locals 3

    const-string v0, "NetPlayCtrl"

    const-string v1, "onCompletion"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->msgHandler:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v1}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/kuwo/service/kwplayer/NetPlayCtrl$2;

    invoke-direct {v2, p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl$2;-><init>(Lcn/kuwo/service/kwplayer/NetPlayCtrl;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method

.method public onError(Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;ILjava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    const-string v0, "NetPlayCtrl"

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

    iget-object v2, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->msgHandler:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v2}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcn/kuwo/service/kwplayer/NetPlayCtrl$1;

    invoke-direct {v3, p0, v0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl$1;-><init>(Lcn/kuwo/service/kwplayer/NetPlayCtrl;Lcn/kuwo/service/PlayDelegate$ErrorCode;)V

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

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->process()V

    return-void
.end method

.method public open(Lcn/kuwo/base/bean/Music;I)Lcn/kuwo/service/PlayDelegate$ErrorCode;
    .locals 6

    const-string v0, "NetPlayCtrl"

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

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->e:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->stepStop()Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    :cond_0
    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->init()V

    const-string v0, ""

    const-string v1, "download_when_play_setting_enable"

    invoke-static {}, Lcn/kuwo/mod/settings/SettingsDefualtValueUtls;->b()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->t:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    :goto_0
    return-object v0

    :cond_1
    iput-object p1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->music:Lcn/kuwo/base/bean/Music;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->savePath:Ljava/lang/String;

    iput p2, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->continuePos:I

    const-string v0, ""

    const-string v1, "music_quality_when_play"

    invoke-static {}, Lcn/kuwo/mod/settings/SettingsDefualtValueUtls;->a()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Lcn/kuwo/service/DownloadProxy$Quality;->values()[Lcn/kuwo/service/DownloadProxy$Quality;

    move-result-object v2

    long-to-int v0, v0

    aget-object v0, v2, v0

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->quality:Lcn/kuwo/service/DownloadProxy$Quality;

    sget-object v0, Lcn/kuwo/service/DownloadProxy$DownGroup;->a:Lcn/kuwo/service/DownloadProxy$DownGroup;

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownloadMgr;->a(Lcn/kuwo/service/DownloadProxy$DownGroup;)Lcn/kuwo/service/downloader/DownloadMgr;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->music:Lcn/kuwo/base/bean/Music;

    iget-boolean v2, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->isRadio:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcn/kuwo/service/DownloadProxy$DownType;->g:Lcn/kuwo/service/DownloadProxy$DownType;

    :goto_1
    iget-object v3, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->quality:Lcn/kuwo/service/DownloadProxy$Quality;

    iget-object v4, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->msgHandler:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v4}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v5

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcn/kuwo/service/downloader/DownloadMgr;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$DownType;Lcn/kuwo/service/DownloadProxy$Quality;Lcn/kuwo/service/DownloadDelegate;Landroid/os/Handler;)I

    move-result v0

    iput v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downTaskID:I

    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->c:Lcn/kuwo/service/PlayProxy$Status;

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->setStatus(Lcn/kuwo/service/PlayProxy$Status;)V

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->BUFFERING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->currentStep:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->lastCheckStartBufferLenTime:J

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->startTimer()V

    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->a:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    goto :goto_0

    :cond_2
    sget-object v2, Lcn/kuwo/service/DownloadProxy$DownType;->c:Lcn/kuwo/service/DownloadProxy$DownType;

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->c:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->d:Lcn/kuwo/service/PlayProxy$Status;

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->setStatus(Lcn/kuwo/service/PlayProxy$Status;)V

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->PAUSED:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->currentStep:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->notifyPause()V

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->pause()V

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 2

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->d:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->canStart()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->resume()V

    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->setStatus(Lcn/kuwo/service/PlayProxy$Status;)V

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->PLAYING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->currentStep:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    :goto_0
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->notifyResume()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->realStart()Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    goto :goto_1

    :cond_2
    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->c:Lcn/kuwo/service/PlayProxy$Status;

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->setStatus(Lcn/kuwo/service/PlayProxy$Status;)V

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->BUFFERING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->currentStep:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    goto :goto_0
.end method

.method public seek(I)V
    .locals 2

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downloadedLen:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->getDuration()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->getDuration()I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->isDownComplete()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->getBufferPos()I

    move-result v0

    sub-int/2addr v0, p1

    const/16 v1, 0x7d0

    if-le v0, v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method public stepBuffering()Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->cacheFile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->WAITING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->checkBuffer()Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->checkStart()Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    move-result-object v0

    goto :goto_0
.end method

.method public stepPlaying()Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;
    .locals 4

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->getDuration()I

    move-result v1

    iget v2, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->lastCheckPlayPos:I

    if-ne v2, v0, :cond_0

    iget-wide v2, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->lastCheckPlayPosTime:J

    invoke-virtual {p0, v2, v3}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->isOutOfTime(J)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->r:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->setError(Lcn/kuwo/service/PlayDelegate$ErrorCode;)V

    const-string v0, "NetPlayCtrl"

    const-string v1, "_play pos pause out of time"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->ERROR:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->lastCheckPlayPosTime:J

    iput v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->lastCheckPlayPos:I

    :cond_1
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->getBufferPos()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->notifyProgress(III)V

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->isDownComplete()Z

    move-result v1

    if-nez v1, :cond_2

    sub-int v0, v2, v0

    const/16 v1, 0x7d0

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->player()Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->pause()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->lastCheckPlayBufferPosTime:J

    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->c:Lcn/kuwo/service/PlayProxy$Status;

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->setStatus(Lcn/kuwo/service/PlayProxy$Status;)V

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->notifyBuffering()V

    const-string v0, "NetPlayCtrl"

    const-string v1, "need buffer"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->BUFFERING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    goto :goto_0

    :cond_2
    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->WAITING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    goto :goto_0
.end method

.method public stepStop()Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;
    .locals 1

    iget v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downTaskID:I

    if-lez v0, :cond_0

    iget v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downTaskID:I

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownloadMgr;->a(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->downTaskID:I

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->networkStateChangeTool:Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;->detach()V

    invoke-super {p0}, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->stepStop()Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    move-result-object v0

    return-object v0
.end method
