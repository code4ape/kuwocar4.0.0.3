.class public abstract Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;
.super Ljava/lang/Object;


# static fields
.field public static final MEDIA_INFO_BITRATE:I = 0x1

.field public static final MEDIA_INFO_CHANNEL:I = 0x3

.field public static final MEDIA_INFO_DURATION:I = 0x2

.field public static final MEDIA_INFO_LOG:I = 0x0

.field public static final MEDIA_INFO_SAMPLEPERFRAME:I = 0x5

.field public static final MEDIA_INFO_SAMPLERATE:I = 0x4

.field public static final STATE_COMPLETED:I = 0x5

.field public static final STATE_PAUSED:I = 0x3

.field public static final STATE_PLAYING:I = 0x4

.field public static final STATE_PREPARED:I = 0x2

.field public static final STATE_PREPARING:I = 0x1

.field public static final STATE_STOPPED:I


# instance fields
.field protected mAutoPlay:Z

.field protected mOnBufferingUpdateListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnBufferingUpdateListener;

.field protected mOnCompletionListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnCompletionListener;

.field protected mOnErrorListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnErrorListener;

.field protected mOnInfoListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnInfoListener;

.field protected mOnPreparedListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnPreparedListener;

.field protected mOnStateChangedListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnStateChangedListener;

.field protected mOnVideoSizeChangedListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnVideoSizeChangedListener;

.field private mPlayState:I

.field private final mPlayStateLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->mPlayStateLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->mPlayState:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->mAutoPlay:Z

    iput-object v1, p0, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->mOnPreparedListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnPreparedListener;

    iput-object v1, p0, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->mOnCompletionListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnCompletionListener;

    iput-object v1, p0, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->mOnErrorListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnErrorListener;

    iput-object v1, p0, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->mOnStateChangedListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnStateChangedListener;

    iput-object v1, p0, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->mOnInfoListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnInfoListener;

    iput-object v1, p0, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->mOnBufferingUpdateListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnBufferingUpdateListener;

    iput-object v1, p0, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->mOnVideoSizeChangedListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnVideoSizeChangedListener;

    return-void
.end method


# virtual methods
.method public abstract getBufferPercentage()I
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public getPlayState()I
    .locals 2

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->mPlayState:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public isComplete()Z
    .locals 2

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->getPlayState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 2

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->getPlayState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrepared()Z
    .locals 2

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreparing()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->getPlayState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopped()Z
    .locals 2

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->getPlayState()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->getPlayState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract pause()V
.end method

.method public abstract play(Ljava/lang/String;)Z
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract resume()V
.end method

.method public abstract seekTo(I)V
.end method

.method public setAutoPlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->mAutoPlay:Z

    return-void
.end method

.method public abstract setDisplay(Landroid/view/SurfaceHolder;)V
.end method

.method public setOnBufferingUpdateListener(Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnBufferingUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->mOnBufferingUpdateListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnCompletionListener(Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->mOnCompletionListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->mOnErrorListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->mOnInfoListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->mOnPreparedListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnStateChangedListener(Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnStateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->mOnStateChangedListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnStateChangedListener;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->mOnVideoSizeChangedListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public setPlayState(I)V
    .locals 2

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->mPlayState:I

    iput p1, p0, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->mPlayState:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->mOnStateChangedListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnStateChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->mOnStateChangedListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnStateChangedListener;

    invoke-interface {v0, p0}, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnStateChangedListener;->onStateChanged(Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;->reset()V

    return-void
.end method
