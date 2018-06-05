.class public Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataApplication;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockHeader;->getDataLength()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataApplication;->data:[B

    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataApplication;->data:[B

    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataApplication;->data:[B

    return-object v0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataApplication;->data:[B

    array-length v0, v0

    return v0
.end method
