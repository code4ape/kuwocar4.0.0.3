.class public final Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;
.super Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field protected mOnInfoListener:Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer$OnInfoListener;

.field protected mOnPreparedListener:Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer$OnPreparedListener;

.field private realStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemAudioPlayer"

    sput-object v0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;-><init>()V

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mOnPreparedListener:Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer$OnPreparedListener;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mOnInfoListener:Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer$OnInfoListener;

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRealStartTime()J
    .locals 2

    iget-wide v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->realStartTime:J

    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mOnBufferingUpdateListener:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnBufferingUpdateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mOnBufferingUpdateListener:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnBufferingUpdateListener;

    invoke-interface {v0, p0, p2}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;I)V

    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->setPlayState(I)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mOnCompletionListener:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mOnCompletionListener:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnCompletionListener;

    invoke-interface {v0, p0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnCompletionListener;->onCompletion(Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;)V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    const/high16 v1, -0x80000000

    const/4 v3, 0x1

    const/16 v0, -0x26

    if-ne p2, v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/16 v0, 0x64

    if-eq p2, v0, :cond_0

    if-eq p2, v1, :cond_0

    if-ne p2, v3, :cond_2

    const/16 v0, -0x3ec

    if-eq p3, v0, :cond_0

    if-eq p3, v1, :cond_0

    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    if-eqz p3, :cond_0

    :cond_3
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mOnErrorListener:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mOnErrorListener:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnErrorListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error occurs in MediaPlayer. what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",extra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, p2, v1}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnErrorListener;->onError(Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;ILjava/lang/String;)Z

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->setPlayState(I)V

    goto :goto_0
.end method

.method public play(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->setError(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->reset()V

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->realStartTime:J

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->setPlayState(I)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->init()V

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->reset()V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "SystemAudioPlayer"

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSource error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->throwable2String(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->setError(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public release()V
    .locals 4

    const-string v0, "yjfs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " release()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "yjfs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " M.start()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    const-wide/16 v0, 0x64

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const-string v0, "yjfs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " M.release()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    const-string v0, "yjfs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMediaPlayer.release()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->setPlayState(I)V

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "yjfs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "yjfs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1
.end method

.method public reset()V
    .locals 0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->release()V

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->init()V

    return-void
.end method

.method public resume()V
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->setPlayState(I)V

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setOnInfoListener(Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mOnInfoListener:Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mOnPreparedListener:Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer$OnPreparedListener;

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemAudioPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method
