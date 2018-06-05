.class public abstract Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;
.super Ljava/lang/Object;


# static fields
.field public static final AUDIO_CODEC_NOT_FOUND:I = 0x1

.field public static final STATE_COMPLETED:I = 0x3

.field public static final STATE_PAUSED:I = 0x1

.field public static final STATE_PLAYING:I = 0x2

.field public static final STATE_PREPARING:I = 0x4

.field public static final STATE_STOPPED:I


# instance fields
.field private lastError:Ljava/lang/String;

.field protected mOnBufferingUpdateListener:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnBufferingUpdateListener;

.field protected mOnCompletionListener:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnCompletionListener;

.field protected mOnErrorListener:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnErrorListener;

.field protected mOnStateChangedListener:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnStateChangedListener;

.field private volatile mPlayState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->mPlayState:I

    iput-object v1, p0, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->mOnCompletionListener:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnCompletionListener;

    iput-object v1, p0, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->mOnErrorListener:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnErrorListener;

    iput-object v1, p0, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->mOnStateChangedListener:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnStateChangedListener;

    iput-object v1, p0, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->mOnBufferingUpdateListener:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnBufferingUpdateListener;

    return-void
.end method


# virtual methods
.method public fade(FF)V
    .locals 6

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2, p2}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->setVolume(FF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    const/high16 v1, 0x40a00000    # 5.0f

    div-float v1, v0, v1

    const-wide/16 v2, 0x32

    const/4 v0, 0x0

    :goto_1
    const/4 v4, 0x5

    if-ge v0, v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    add-float/2addr p1, v1

    invoke-virtual {p0, p1, p1}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->setVolume(FF)V

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v4, v0, 0xa

    int-to-long v4, v4

    sub-long/2addr v2, v4

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public final getLastError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->lastError:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayState()I
    .locals 1

    iget v0, p0, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->mPlayState:I

    return v0
.end method

.method public abstract getRealStartTime()J
.end method

.method public isComplete()Z
    .locals 2

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->getPlayState()I

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

.method public isPaused()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->getPlayState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopped()Z
    .locals 2

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->getPlayState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

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

.method public abstract play(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract resume()V
.end method

.method public abstract seekTo(I)V
.end method

.method protected final setError(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->lastError:Ljava/lang/String;

    return-void
.end method

.method public setOnBufferingUpdateListener(Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnBufferingUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->mOnBufferingUpdateListener:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnCompletionListener(Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->mOnCompletionListener:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->mOnErrorListener:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnErrorListener;

    return-void
.end method

.method public setOnStateChangedListener(Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnStateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->mOnStateChangedListener:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnStateChangedListener;

    return-void
.end method

.method public setPlayState(I)V
    .locals 1

    iget v0, p0, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->mPlayState:I

    iput p1, p0, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->mPlayState:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->mOnStateChangedListener:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnStateChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->mOnStateChangedListener:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnStateChangedListener;

    invoke-interface {v0, p0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnStateChangedListener;->onStateChanged(Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;)V

    :cond_0
    return-void
.end method

.method public abstract setVolume(FF)V
.end method

.method public stop()V
    .locals 0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;->reset()V

    return-void
.end method
