.class public final Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/service/kwplayer/codec/IDecoder;


# static fields
.field public static formats:[Ljava/lang/String;

.field private static inited:Z


# instance fields
.field private floatBuffer:Ljava/nio/FloatBuffer;

.field private handle:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ape"

    aput-object v2, v0, v1

    sput-object v0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->formats:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->handle:I

    sget-boolean v0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->inited:Z

    if-nez v0, :cond_0

    const-string v0, "kwape"

    invoke-static {v0}, Lcn/kuwo/base/natives/NativeLibLoadHelper;->load(Ljava/lang/String;)Z

    const/4 v0, 0x1

    sput-boolean v0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->inited:Z

    :cond_0
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

.method private native isReadFinished(I)I
.end method

.method private native openFile(Ljava/lang/String;)I
.end method

.method private native seekTo(II)I
.end method


# virtual methods
.method public downsampling(Ljava/lang/String;)I
    .locals 2

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->handle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->handle:I

    invoke-direct {p0, v0, p1}, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->downsampling(ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitrate()I
    .locals 1

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->handle:I

    invoke-direct {p0, v0}, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->getBitrate(I)I

    move-result v0

    return v0
.end method

.method public getChannelNum()I
    .locals 2

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->handle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->handle:I

    invoke-direct {p0, v0}, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->getChannelNum(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 2

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->handle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->handle:I

    invoke-direct {p0, v0}, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->getCurrentPosition(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->handle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->handle:I

    invoke-direct {p0, v0}, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->getDuration(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFormats()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->formats:[Ljava/lang/String;

    return-object v0
.end method

.method public getHandle()I
    .locals 1

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->handle:I

    return v0
.end method

.method public getSamplePerFrame()I
    .locals 1

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->handle:I

    invoke-direct {p0, v0}, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->getSamplePerFrame(I)I

    move-result v0

    return v0
.end method

.method public getSamplerate()I
    .locals 1

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->handle:I

    invoke-direct {p0, v0}, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->getSamplerate(I)I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->handle:I

    invoke-direct {p0, v1}, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->isReadFinished(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->getCurrentPosition()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->getDuration()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReleased()Z
    .locals 2

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->handle:I

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

    invoke-direct {p0, p1}, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->openFile(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    div-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->handle:I

    :goto_0
    return v0

    :cond_0
    iput v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->handle:I

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->handle:I

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

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->floatBuffer:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->floatBuffer:Ljava/nio/FloatBuffer;

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

    iput-object v1, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->floatBuffer:Ljava/nio/FloatBuffer;

    :cond_1
    iget v1, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->handle:I

    iget-object v2, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->floatBuffer:Ljava/nio/FloatBuffer;

    array-length v3, p1

    invoke-virtual {p0, v1, v2, v3}, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->readSamples(ILjava/nio/FloatBuffer;I)I

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->handle:I

    invoke-direct {p0, v1}, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->closeFile(I)V

    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->floatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    array-length v0, p1

    goto :goto_0
.end method

.method public readSamples([S)I
    .locals 2

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->handle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->handle:I

    array-length v1, p1

    invoke-virtual {p0, v0, p1, v1}, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->readSamples(I[SI)I

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

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->handle:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->handle:I

    invoke-direct {p0, v0}, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->closeFile(I)V

    iput v1, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->handle:I

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 2

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->handle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->handle:I

    invoke-direct {p0, v0, p1}, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->seekTo(II)I

    :cond_0
    return-void
.end method
