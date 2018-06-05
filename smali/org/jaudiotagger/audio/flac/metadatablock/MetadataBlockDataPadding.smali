.class public Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockData;


# instance fields
.field private length:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;->length:I

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;->length:I

    new-array v2, v0, [B

    move v0, v1

    :goto_0
    iget v3, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;->length:I

    if-ge v0, v3, :cond_0

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPadding;->length:I

    return v0
.end method
