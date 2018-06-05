.class public Lorg/jaudiotagger/audio/wav/util/WavInfoReader;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .locals 6

    new-instance v0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;-><init>()V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0xc

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    const-string v1, "This is not a WAV File (<12 bytes)"

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v1, 0xc

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v2, Lorg/jaudiotagger/audio/wav/util/WavRIFFHeader;

    invoke-direct {v2, v1}, Lorg/jaudiotagger/audio/wav/util/WavRIFFHeader;-><init>([B)V

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/wav/util/WavRIFFHeader;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x18

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v2, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;

    invoke-direct {v2, v1}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;-><init>([B)V

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-float v1, v4

    const/high16 v3, 0x42100000    # 36.0f

    sub-float/2addr v1, v3

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->getBytesPerSecond()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setPreciseLength(F)V

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->getChannelNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setChannelNumber(I)V

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->getSamplingRate()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setSamplingRate(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WAV-RIFF "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->getBitrate()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bits"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setEncodingType(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setExtraEncodingInfos(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/jaudiotagger/audio/wav/util/WavFormatHeader;->getBytesPerSecond()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setBitrate(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->setVariableBitRate(Z)V

    return-object v0

    :cond_1
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    const-string v1, "Wav Format Header not valid"

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    const-string v1, "Wav RIFF Header not valid"

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
