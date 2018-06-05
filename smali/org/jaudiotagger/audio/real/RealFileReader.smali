.class public Lorg/jaudiotagger/audio/real/RealFileReader;
.super Lorg/jaudiotagger/audio/generic/AudioFileReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileReader;-><init>()V

    return-void
.end method

.method private findContChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;
    .locals 2

    invoke-static {p1}, Lorg/jaudiotagger/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;

    invoke-static {p1}, Lorg/jaudiotagger/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;

    invoke-static {p1}, Lorg/jaudiotagger/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/real/RealChunk;->isCONT()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/jaudiotagger/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private findPropChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;
    .locals 1

    invoke-static {p1}, Lorg/jaudiotagger/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;

    invoke-static {p1}, Lorg/jaudiotagger/audio/real/RealChunk;->readChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .locals 8

    const-wide/16 v6, 0x3e8

    new-instance v1, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    invoke-direct {v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;-><init>()V

    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/real/RealFileReader;->findPropChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/real/RealChunk;->getDataInputStream()Ljava/io/DataInputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    move-result-wide v2

    div-long/2addr v2, v6

    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    move-result-wide v4

    div-long/2addr v4, v6

    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32AsInt(Ljava/io/DataInput;)I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    long-to-int v0, v4

    invoke-virtual {v1, v0}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setBitrate(I)V

    invoke-virtual {v1, v6}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setLength(I)V

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTag(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/tag/Tag;
    .locals 7

    invoke-direct {p0, p1}, Lorg/jaudiotagger/audio/real/RealFileReader;->findContChunk(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/real/RealChunk;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/audio/real/RealChunk;->getDataInputStream()Ljava/io/DataInputStream;

    move-result-object v2

    invoke-static {v2}, Lorg/jaudiotagger/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {v2, v0}, Lorg/jaudiotagger/audio/generic/Utils;->readString(Ljava/io/DataInput;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lorg/jaudiotagger/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {v2, v0}, Lorg/jaudiotagger/audio/generic/Utils;->readString(Ljava/io/DataInput;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lorg/jaudiotagger/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {v2, v0}, Lorg/jaudiotagger/audio/generic/Utils;->readString(Ljava/io/DataInput;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lorg/jaudiotagger/audio/generic/Utils;->readUint16(Ljava/io/DataInput;)I

    move-result v4

    invoke-static {v2, v4}, Lorg/jaudiotagger/audio/generic/Utils;->readString(Ljava/io/DataInput;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/jaudiotagger/audio/real/RealTag;

    invoke-direct {v5}, Lorg/jaudiotagger/audio/real/RealTag;-><init>()V

    :try_start_0
    sget-object v6, Lorg/jaudiotagger/tag/FieldKey;->TITLE:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    :goto_0
    invoke-virtual {v5, v6, v2}, Lorg/jaudiotagger/audio/real/RealTag;->addField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)V

    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->ARTIST:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v5, v2, v0}, Lorg/jaudiotagger/audio/real/RealTag;->addField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)V

    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COMMENT:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v5, v0, v4}, Lorg/jaudiotagger/audio/real/RealTag;->addField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jaudiotagger/tag/FieldDataInvalidException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :cond_0
    move-object v2, v3

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
