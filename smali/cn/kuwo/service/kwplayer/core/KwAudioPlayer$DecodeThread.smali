.class Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;
.super Ljava/lang/Thread;


# instance fields
.field public volatile decodePos:I

.field private volatile decodeTime:J

.field public volatile needStop:Z

.field final synthetic this$0:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;


# direct methods
.method constructor <init>(Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->this$0:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->release()V

    return-void
.end method

.method private decodingSamples()I
    .locals 6

    const/4 v0, -0x1

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->this$0:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;

    invoke-static {v1}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->access$000(Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->this$0:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;

    invoke-static {v1}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->access$100(Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;)Lcn/kuwo/service/kwplayer/codec/IDecoder;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/service/kwplayer/codec/IDecoder;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v2

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->this$0:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;

    invoke-static {v1}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->access$100(Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;)Lcn/kuwo/service/kwplayer/codec/IDecoder;

    move-result-object v1

    iget-object v3, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->this$0:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;

    invoke-static {v3}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->access$200(Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;)[S

    move-result-object v3

    invoke-interface {v1, v3}, Lcn/kuwo/service/kwplayer/codec/IDecoder;->readSamples([S)I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    iget-object v3, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->this$0:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;

    invoke-static {v3}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->access$100(Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;)Lcn/kuwo/service/kwplayer/codec/IDecoder;

    move-result-object v3

    invoke-interface {v3}, Lcn/kuwo/service/kwplayer/codec/IDecoder;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->this$0:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;

    invoke-static {v0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->access$100(Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;)Lcn/kuwo/service/kwplayer/codec/IDecoder;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/service/kwplayer/codec/IDecoder;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->decodePos:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->decodeTime:J

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method private notifyFinish()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->this$0:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;

    invoke-static {v0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->access$300(Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->this$0:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;

    invoke-static {v0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->access$400(Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->this$0:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->setPlayState(I)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->this$0:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;

    iget-object v0, v0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->mOnCompletionListener:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->this$0:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;

    iget-object v0, v0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->mOnCompletionListener:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnCompletionListener;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->this$0:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;

    invoke-interface {v0, v1}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnCompletionListener;->onCompletion(Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private release()V
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->needStop:Z

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->interrupt()V

    :try_start_0
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private writePCMAudioData(I)V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->this$0:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;

    invoke-static {v0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->access$300(Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->this$0:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;

    invoke-static {v0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->access$400(Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;)Landroid/media/AudioTrack;

    move-result-object v0

    iget-object v2, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->this$0:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;

    invoke-static {v2}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->access$200(Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;)[S

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p1}, Landroid/media/AudioTrack;->write([SII)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->this$0:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;

    iget-object v1, v1, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->mOnErrorListener:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnErrorListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->this$0:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;

    iget-object v1, v1, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->mOnErrorListener:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnErrorListener;

    iget-object v2, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->this$0:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;

    const-string v3, "write error in AudioPlayer.writePCMData"

    invoke-interface {v1, v2, v0, v3}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnErrorListener;->onError(Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;ILjava/lang/String;)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getCurrentPos()I
    .locals 6

    iget-wide v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->decodeTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->decodePos:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->decodeTime:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->this$0:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;

    invoke-static {v0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->access$000(Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->this$0:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;

    invoke-static {v0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->access$100(Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;)Lcn/kuwo/service/kwplayer/codec/IDecoder;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->this$0:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;

    invoke-static {v0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->access$100(Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;)Lcn/kuwo/service/kwplayer/codec/IDecoder;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/service/kwplayer/codec/IDecoder;->getCurrentPosition()I

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public run()V
    .locals 2

    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->needStop:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->this$0:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->isStopped()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->decodingSamples()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->notifyFinish()V

    :cond_1
    return-void

    :cond_2
    if-lez v0, :cond_3

    invoke-direct {p0, v0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->writePCMAudioData(I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->this$0:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->decodeTime:J

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
