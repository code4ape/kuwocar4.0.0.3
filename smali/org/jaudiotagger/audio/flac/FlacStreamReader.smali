.class public Lorg/jaudiotagger/audio/flac/FlacStreamReader;
.super Ljava/lang/Object;


# static fields
.field public static final FLAC_STREAM_IDENTIFIER:Ljava/lang/String; = "fLaC"

.field public static final FLAC_STREAM_IDENTIFIER_LENGTH:I = 0x4

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private raf:Ljava/io/RandomAccessFile;

.field private startOfFlacInFile:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.audio.flac"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    return-void
.end method

.method private isFlacHeader()Z
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "fLaC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isId3v2Tag()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v2, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    invoke-static {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->isId3Tag(Ljava/io/RandomAccessFile;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lorg/jaudiotagger/logging/ErrorMessage;->FLAC_CONTAINS_ID3TAG:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->isFlacHeader()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public findStream()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    const-string v1, "Error: File empty"

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-direct {p0}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->isFlacHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->startOfFlacInFile:I

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->isId3v2Tag()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->startOfFlacInFile:I

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->FLAC_NO_FLAC_HEADER_FOUND:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStartOfFlacInFile()I
    .locals 1

    iget v0, p0, Lorg/jaudiotagger/audio/flac/FlacStreamReader;->startOfFlacInFile:I

    return v0
.end method
