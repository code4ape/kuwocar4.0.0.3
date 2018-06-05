.class public Lorg/jaudiotagger/audio/flac/FlacInfoReader;
.super Ljava/lang/Object;


# static fields
.field private static final KILOBYTES_TO_BYTES_MULTIPLIER:I = 0x3e8

.field private static final NO_OF_BITS_IN_BYTE:I = 0x8

.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.audio.flac"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/flac/FlacInfoReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private computeBitrate(FJ)I
    .locals 4

    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    long-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public countMetaBlocks(Ljava/io/File;)I
    .locals 8

    const/4 v0, 0x0

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v2, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Lorg/jaudiotagger/audio/flac/FlacStreamReader;

    invoke-direct {v1, v2}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;-><init>(Ljava/io/RandomAccessFile;)V

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->findStream()V

    move v1, v0

    :goto_0
    if-nez v1, :cond_0

    invoke-static {v2}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->readHeader(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v1

    sget-object v3, Lorg/jaudiotagger/audio/flac/FlacInfoReader;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found block:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock()Z

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    return v0
.end method

.method public read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .locals 7

    new-instance v0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;-><init>(Ljava/io/RandomAccessFile;)V

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->findStream()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_0
    if-nez v1, :cond_2

    invoke-static {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->readHeader(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getBlockType()Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    move-result-object v2

    sget-object v3, Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;->STREAMINFO:Lorg/jaudiotagger/audio/flac/metadatablock/BlockType;

    if-ne v2, v3, :cond_0

    new-instance v0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;

    invoke-direct {v0, v1, p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;-><init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    const-string v1, "FLAC StreamInfo not valid"

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    invoke-virtual {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_1
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->isLastBlock()Z

    move-result v1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    const-string v1, "Unable to find Flac StreamInfo"

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v1, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    invoke-direct {v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;-><init>()V

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getSongLength()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setLength(I)V

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getPreciseLength()F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setPreciseLength(F)V

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getChannelNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getSamplingRate()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setSamplingRate(I)V

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getEncodingType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setExtraEncodingInfos(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataStreamInfo;->getPreciseLength()F

    move-result v0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {p0, v0, v2, v3}, Lorg/jaudiotagger/audio/flac/FlacInfoReader;->computeBitrate(FJ)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setBitrate(I)V

    return-object v1
.end method
