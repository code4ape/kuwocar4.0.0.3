.class public Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;


# static fields
.field public static final STREAM_INFO_DATA_LENGTH:I = 0x22

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private bitsPerSample:I

.field private channelNumber:I

.field private isValid:Z

.field private maxBlockSize:I

.field private maxFrameSize:I

.field private minBlockSize:I

.field private minFrameSize:I

.field private rawdata:Ljava/nio/ByteBuffer;

.field private samplingRate:I

.field private samplingRatePerChannel:I

.field private songLength:F

.field private totalNumberOfSamples:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.audio.flac.MetadataBlockDataStreamInfo"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V
    .locals 6

    const/16 v4, 0xd

    const/16 v3, 0xc

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->isValid:Z

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to read required number of databytes read:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":required:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->minBlockSize:I

    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->maxBlockSize:I

    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iget-object v2, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->readThreeByteInteger(BBB)I

    move-result v0

    iput v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->minFrameSize:I

    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iget-object v2, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->readThreeByteInteger(BBB)I

    move-result v0

    iput v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->maxFrameSize:I

    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iget-object v2, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->readSamplingRate(BBB)I

    move-result v0

    iput v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRate:I

    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->u(I)I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    ushr-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->channelNumber:I

    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRate:I

    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->channelNumber:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRatePerChannel:I

    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->u(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->u(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xf0

    ushr-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->bitsPerSample:I

    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->readTotalNumberOfSamples(BBBBB)I

    move-result v0

    iput v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->totalNumberOfSamples:I

    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->totalNumberOfSamples:I

    int-to-double v0, v0

    iget v2, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRate:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->songLength:F

    sget-object v0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    return-void
.end method

.method private readSamplingRate(BBB)I
    .locals 2

    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->u(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0xc

    invoke-direct {p0, p2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    invoke-direct {p0, p3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->u(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xf0

    ushr-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method private readThreeByteInteger(BBB)I
    .locals 2

    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->u(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-direct {p0, p2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    invoke-direct {p0, p3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->u(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private readTotalNumberOfSamples(BBBBB)I
    .locals 2

    invoke-direct {p0, p5}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->u(I)I

    move-result v0

    invoke-direct {p0, p4}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    invoke-direct {p0, p3}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    invoke-direct {p0, p2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->u(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->u(I)I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x20

    add-int/2addr v0, v1

    return v0
.end method

.method private u(I)I
    .locals 1

    and-int/lit16 v0, p1, 0xff

    return v0
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->rawdata:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public getChannelNumber()I
    .locals 1

    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->channelNumber:I

    return v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FLAC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->bitsPerSample:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bits"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getPreciseLength()F
    .locals 1

    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->songLength:F

    return v0
.end method

.method public getSamplingRate()I
    .locals 1

    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRate:I

    return v0
.end method

.method public getSamplingRatePerChannel()I
    .locals 1

    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRatePerChannel:I

    return v0
.end method

.method public getSongLength()I
    .locals 1

    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->songLength:F

    float-to-int v0, v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->isValid:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MinBlockSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->minBlockSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MaxBlockSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->maxBlockSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MinFrameSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->minFrameSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MaxFrameSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->maxFrameSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SampleRateTotal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SampleRatePerChannel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->samplingRatePerChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Channel number:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->channelNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Bits per sample: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->bitsPerSample:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":TotalNumberOfSamples: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->totalNumberOfSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->songLength:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
