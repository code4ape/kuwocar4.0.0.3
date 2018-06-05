.class public final Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;
.super Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;


# static fields
.field private static final MIN_BUFFER_LEN:I = 0x2000


# instance fields
.field private audioTrack:Landroid/media/AudioTrack;

.field private final audioTrackLock:Ljava/lang/Object;

.field private buffer:[S

.field private decodeThread:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;

.field private decoder:Lcn/kuwo/service/kwplayer/codec/IDecoder;

.field private final decoderLock:Ljava/lang/Object;

.field private realStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->audioTrackLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->decoderLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->decoderLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;)Lcn/kuwo/service/kwplayer/codec/IDecoder;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->decoder:Lcn/kuwo/service/kwplayer/codec/IDecoder;

    return-object v0
.end method

.method static synthetic access$200(Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;)[S
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->buffer:[S

    return-object v0
.end method

.method static synthetic access$300(Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->audioTrackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;)Landroid/media/AudioTrack;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->audioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method private initAudioTrack()Z
    .locals 9

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->decoder:Lcn/kuwo/service/kwplayer/codec/IDecoder;

    invoke-interface {v0}, Lcn/kuwo/service/kwplayer/codec/IDecoder;->getChannelNum()I

    move-result v0

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->decoder:Lcn/kuwo/service/kwplayer/codec/IDecoder;

    invoke-interface {v1}, Lcn/kuwo/service/kwplayer/codec/IDecoder;->getSamplerate()I

    move-result v2

    if-gt v0, v8, :cond_0

    const/4 v3, 0x4

    :goto_0
    invoke-static {v2, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    shl-int/lit8 v5, v1, 0x1

    if-gtz v5, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bufferSize error:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " channelNum:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " samplerate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " channelConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->setError(Ljava/lang/String;)V

    move v0, v7

    :goto_1
    return v0

    :cond_0
    const/16 v3, 0xc

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AudioTrack state error"

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->setError(Ljava/lang/String;)V

    move v0, v7

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "KwAudioPlayer"

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioTrack error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->throwable2String(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->setError(Ljava/lang/String;)V

    move v0, v7

    goto :goto_1

    :cond_2
    shr-int/lit8 v0, v5, 0x1

    add-int/lit16 v0, v0, 0x2000

    add-int/lit8 v0, v0, -0x1

    and-int/lit16 v0, v0, -0x2000

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->buffer:[S

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->buffer:[S

    array-length v1, v1

    if-eq v1, v0, :cond_4

    :cond_3
    :try_start_1
    new-array v0, v0, [S

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->buffer:[S
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    move v0, v8

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->buffer:[S

    const-string v1, "KwAudioPlayer"

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alloc buffer error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->throwable2String(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->setError(Ljava/lang/String;)V

    move v0, v7

    goto :goto_1
.end method

.method private initDecoder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p2}, Lcn/kuwo/service/kwplayer/codec/DecoderManager;->getDecoder(Ljava/lang/String;)Lcn/kuwo/service/kwplayer/codec/IDecoder;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->decoder:Lcn/kuwo/service/kwplayer/codec/IDecoder;

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->decoder:Lcn/kuwo/service/kwplayer/codec/IDecoder;

    if-nez v0, :cond_1

    invoke-static {p1}, Lcn/kuwo/base/util/KwFileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcn/kuwo/service/kwplayer/codec/DecoderManager;->getDecoder(Ljava/lang/String;)Lcn/kuwo/service/kwplayer/codec/IDecoder;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->decoder:Lcn/kuwo/service/kwplayer/codec/IDecoder;

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->decoder:Lcn/kuwo/service/kwplayer/codec/IDecoder;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initDecoder error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->setError(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportFormat(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcn/kuwo/service/kwplayer/codec/DecoderManager;->getSupportFormats()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->decoder:Lcn/kuwo/service/kwplayer/codec/IDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->decodeThread:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->decodeThread:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->getCurrentPos()I

    move-result v0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->decoder:Lcn/kuwo/service/kwplayer/codec/IDecoder;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->decoderLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->decoder:Lcn/kuwo/service/kwplayer/codec/IDecoder;

    if-nez v2, :cond_1

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
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->decoder:Lcn/kuwo/service/kwplayer/codec/IDecoder;

    invoke-interface {v0}, Lcn/kuwo/service/kwplayer/codec/IDecoder;->getDuration()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getRealStartTime()J
    .locals 2

    iget-wide v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->realStartTime:J

    return-wide v0
.end method

.method public pause()V
    .locals 2

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->setPlayState(I)V

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->audioTrackLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public play(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->setError(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->reset()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcn/kuwo/base/util/KwFileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->initDecoder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->decoder:Lcn/kuwo/service/kwplayer/codec/IDecoder;

    invoke-interface {v1, p1}, Lcn/kuwo/service/kwplayer/codec/IDecoder;->load(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decode error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exist:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcn/kuwo/base/util/KwFileUtils;->isExist(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcn/kuwo/base/util/KwFileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " loadMv ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->setError(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->reset()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->initAudioTrack()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->reset()V

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->setPlayState(I)V

    new-instance v0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;

    invoke-direct {v0, p0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;-><init>(Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;)V

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->decodeThread:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->decodeThread:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->start()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->realStartTime:J

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "KwAudioPlayer"

    invoke-static {v2, v1}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioTrack _play error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcn/kuwo/base/util/StringUtils;->throwable2String(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->setError(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->reset()V

    goto/16 :goto_0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->reset()V

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->buffer:[S

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->mOnCompletionListener:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnCompletionListener;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->mOnErrorListener:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnErrorListener;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->mOnStateChangedListener:Lcn/kuwo/service/kwplayer/core/BaseAudioPlayer$OnStateChangedListener;

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->decodeThread:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->decodeThread:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;

    invoke-static {v0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;->access$500(Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;)V

    iput-object v1, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->decodeThread:Lcn/kuwo/service/kwplayer/core/KwAudioPlayer$DecodeThread;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->setPlayState(I)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->decoder:Lcn/kuwo/service/kwplayer/codec/IDecoder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->decoder:Lcn/kuwo/service/kwplayer/codec/IDecoder;

    invoke-interface {v0}, Lcn/kuwo/service/kwplayer/codec/IDecoder;->release()V

    iput-object v1, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->decoder:Lcn/kuwo/service/kwplayer/codec/IDecoder;

    :cond_1
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    :cond_2
    iput-object v1, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->audioTrack:Landroid/media/AudioTrack;

    return-void
.end method

.method public resume()V
    .locals 2

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->audioTrackLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->setPlayState(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public seekTo(I)V
    .locals 2

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->decoderLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->decoder:Lcn/kuwo/service/kwplayer/codec/IDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->decoder:Lcn/kuwo/service/kwplayer/codec/IDecoder;

    invoke-interface {v0, p1}, Lcn/kuwo/service/kwplayer/codec/IDecoder;->seekTo(I)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setVolume(FF)V
    .locals 2

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->audioTrackLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/KwAudioPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
