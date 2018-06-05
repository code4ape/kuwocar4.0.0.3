.class public final Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;
.super Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x3

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x4

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SystemVideoPlayer"


# instance fields
.field protected isBufferCount:Z

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mFilePath:Ljava/lang/String;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;-><init>()V

    iput-object v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iput v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCurrentState:I

    iput v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mTargetState:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->isBufferCount:Z

    new-instance v0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyBufferingUpdateListener;

    invoke-direct {v0, p0}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyBufferingUpdateListener;-><init>(Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;)V

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    new-instance v0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyCompletionListener;

    invoke-direct {v0, p0}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyCompletionListener;-><init>(Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;)V

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyErrorListener;

    invoke-direct {v0, p0}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyErrorListener;-><init>(Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;)V

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iput-object v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyPreparedListener;

    invoke-direct {v0, p0}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyPreparedListener;-><init>(Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;)V

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyVideoSizeChangedListener;

    invoke-direct {v0, p0}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyVideoSizeChangedListener;-><init>(Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;)V

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method static synthetic access$002(Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;I)I
    .locals 0

    iput p1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$100(Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;)I
    .locals 1

    iget v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCurrentState:I

    return v0
.end method

.method static synthetic access$102(Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;I)I
    .locals 0

    iput p1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCurrentState:I

    return p1
.end method

.method static synthetic access$202(Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;I)I
    .locals 0

    iput p1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mTargetState:I

    return p1
.end method

.method static synthetic access$302(Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCanSeekForward:Z

    return p1
.end method

.method static synthetic access$402(Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCanSeekBack:Z

    return p1
.end method

.method static synthetic access$502(Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCanPause:Z

    return p1
.end method

.method static synthetic access$602(Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;I)I
    .locals 0

    iput p1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$702(Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;I)I
    .locals 0

    iput p1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mVideoHeight:I

    return p1
.end method

.method public static createInstance()Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;
    .locals 1

    new-instance v0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;

    invoke-direct {v0}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;-><init>()V

    return-object v0
.end method

.method private isInPlaybackState()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private release(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iput v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCurrentState:I

    if-eqz p1, :cond_0

    iput v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mTargetState:I

    :cond_0
    iget v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCurrentState:I

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->setPlayState(I)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCanSeekForward:Z

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCurrentBufferPercentage:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mDuration:I

    if-lez v0, :cond_0

    iget v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mDuration:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mDuration:I

    iget v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mDuration:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mDuration:I

    iget v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mDuration:I

    goto :goto_0
.end method

.method public getTargetState()I
    .locals 1

    iget v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mTargetState:I

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mVideoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mVideoWidth:I

    return v0
.end method

.method public isInitForContext(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mContext:Landroid/content/Context;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openVideo(Z)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    invoke-direct {p0, v5}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->release(Z)V

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_3

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mDuration:I

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCurrentBufferPercentage:I

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_1
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    const/4 v0, 0x1

    iput v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCurrentState:I

    iget v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCurrentState:I

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->setPlayState(I)V

    :cond_3
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SystemVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v4, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCurrentState:I

    iput v4, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mTargetState:I

    iget v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCurrentState:I

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->setPlayState(I)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v6, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "SystemVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v4, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCurrentState:I

    iput v4, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mTargetState:I

    iget v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCurrentState:I

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->setPlayState(I)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v6, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 2

    const/4 v1, 0x3

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCurrentState:I

    iget v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCurrentState:I

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->setPlayState(I)V

    :cond_0
    iput v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mTargetState:I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public play(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->reset()V

    invoke-virtual {p0, p1}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->setVideoPath(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->start()V

    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->release(Z)V

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->stopPlayback()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->setAutoPlay(Z)V

    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    :sswitch_0
    return p1

    :sswitch_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :sswitch_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public resume()V
    .locals 0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->start()V

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mSeekWhenPrepared:I

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    iput p1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mSeekWhenPrepared:I

    goto :goto_1
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 4

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SystemVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDisplay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    :cond_0
    return-void
.end method

.method public setVideoContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mFilePath:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mSeekWhenPrepared:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mUri:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mFilePath:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mSeekWhenPrepared:I

    return-void
.end method

.method public start()V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mSeekWhenPrepared:I

    if-lez v0, :cond_0

    iget v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mSeekWhenPrepared:I

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->seekTo(I)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCurrentState:I

    iget v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mCurrentState:I

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->setPlayState(I)V

    :cond_1
    iput v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mTargetState:I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stopPlayback()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->release(Z)V

    return-void
.end method
