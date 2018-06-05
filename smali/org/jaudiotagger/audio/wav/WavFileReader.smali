.class public Lorg/jaudiotagger/audio/wav/WavFileReader;
.super Lorg/jaudiotagger/audio/generic/AudioFileReader;


# instance fields
.field private ir:Lorg/jaudiotagger/audio/wav/util/WavInfoReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/AudioFileReader;-><init>()V

    new-instance v0, Lorg/jaudiotagger/audio/wav/util/WavInfoReader;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/wav/util/WavInfoReader;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/wav/WavFileReader;->ir:Lorg/jaudiotagger/audio/wav/util/WavInfoReader;

    return-void
.end method


# virtual methods
.method protected getEncodingInfo(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/audio/wav/WavFileReader;->ir:Lorg/jaudiotagger/audio/wav/util/WavInfoReader;

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/audio/wav/util/WavInfoReader;->read(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/audio/generic/GenericAudioHeader;

    move-result-object v0

    return-object v0
.end method

.method protected getTag(Ljava/io/RandomAccessFile;)Lorg/jaudiotagger/tag/Tag;
    .locals 1

    new-instance v0, Lorg/jaudiotagger/audio/wav/WavTag;

    invoke-direct {v0}, Lorg/jaudiotagger/audio/wav/WavTag;-><init>()V

    return-object v0
.end method
