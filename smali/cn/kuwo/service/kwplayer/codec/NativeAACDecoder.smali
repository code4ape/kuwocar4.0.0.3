.class public final Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/service/kwplayer/codec/IDecoder;


# static fields
.field public static formats:[Ljava/lang/String;

.field private static volatile loaded:Z


# instance fields
.field private floatBuffer:Ljava/nio/FloatBuffer;

.field private handle:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "aac"

    aput-object v2, v0, v1

    const-string v1, "m4a"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "m4b"

    aput-object v2, v0, v1

    sput-object v0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->formats:[Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "armeabi-v7a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "kwaacV7"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->loaded:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    sget-boolean v0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->loaded:Z

    if-nez v0, :cond_1

    :try_start_1
    const-string v0, "kwaac"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->loaded:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->loadLib()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->handle:I

    invoke-static {}, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->loadLib()V

    return-void
.end method

.method private native closeFile(I)V
.end method

.method private native downsampling(ILjava/lang/String;)I
.end method

.method private native getBitrate(I)I
.end method

.method private native getChannelNum(I)I
.end method

.method private native getCurrentPosition(I)I
.end method

.method private native getDuration(I)I
.end method

.method private native getSamplePerFrame(I)I
.end method

.method private native getSamplerate(I)I
.end method

.method public static getValidFramePosition(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->native_get_valid_frame_position(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->loadLib()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native isReadFinished(I)I
.end method

.method private static loadLib()V
    .locals 1

    sget-boolean v0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->loaded:Z

    if-nez v0, :cond_0

    const-string v0, "kwaac"

    invoke-static {v0}, Lcn/kuwo/base/natives/NativeLibLoadHelper;->load(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->loaded:Z

    :cond_0
    return-void
.end method

.method private static native native_get_valid_frame_position(Ljava/lang/String;)I
.end method

.method private native openFile(Ljava/lang/String;)I
.end method

.method private native seekTo(II)I
.end method


# virtual methods
.method public downsampling(Ljava/lang/String;)I
    .locals 2

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->handle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->handle:I

    invoke-direct {p0, v0, p1}, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->downsampling(ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitrate()I
    .locals 1

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->handle:I

    invoke-direct {p0, v0}, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->getBitrate(I)I

    move-result v0

    return v0
.end method

.method public getChannelNum()I
    .locals 2

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->handle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->handle:I

    invoke-direct {p0, v0}, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->getChannelNum(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 2

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->handle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->handle:I

    invoke-direct {p0, v0}, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->getCurrentPosition(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->handle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->handle:I

    invoke-direct {p0, v0}, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->getDuration(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFormats()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->formats:[Ljava/lang/String;

    return-object v0
.end method

.method public getHandle()I
    .locals 1

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->handle:I

    return v0
.end method

.method public getSamplePerFrame()I
    .locals 1

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->handle:I

    invoke-direct {p0, v0}, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->getSamplePerFrame(I)I

    move-result v0

    return v0
.end method

.method public getSamplerate()I
    .locals 1

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->handle:I

    invoke-direct {p0, v0}, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->getSamplerate(I)I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->handle:I

    invoke-direct {p0, v1}, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->isReadFinished(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->getCurrentPosition()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->getDuration()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReleased()Z
    .locals 2

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->handle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Ljava/lang/String;)I
    .locals 2

    invoke-direct {p0, p1}, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->openFile(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, -0x1

    iput v1, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->handle:I

    :goto_0
    return v0

    :cond_0
    iput v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->handle:I

    goto :goto_0
.end method

.method public native readSamples(ILjava/nio/FloatBuffer;I)I
.end method

.method public native readSamples(ILjava/nio/ShortBuffer;I)I
.end method

.method public native readSamples(I[SI)I
.end method

.method public readSamples([F)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->floatBuffer:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    array-length v2, p1

    if-eq v1, v2, :cond_1

    :cond_0
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->floatBuffer:Ljava/nio/FloatBuffer;

    :cond_1
    iget v1, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->handle:I

    iget-object v2, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->floatBuffer:Ljava/nio/FloatBuffer;

    array-length v3, p1

    invoke-virtual {p0, v1, v2, v3}, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->readSamples(ILjava/nio/FloatBuffer;I)I

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->handle:I

    invoke-direct {p0, v1}, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->closeFile(I)V

    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    array-length v0, p1

    goto :goto_0
.end method

.method public readSamples([S)I
    .locals 2

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->handle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->handle:I

    array-length v1, p1

    invoke-virtual {p0, v0, p1, v1}, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->readSamples(I[SI)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->handle:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->handle:I

    invoke-direct {p0, v0}, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->closeFile(I)V

    iput v1, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->handle:I

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 2

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->handle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->handle:I

    invoke-direct {p0, v0, p1}, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->seekTo(II)I

    :cond_0
    return-void
.end method
