.class public Lorg/jaudiotagger/tag/images/StandardArtwork;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jaudiotagger/tag/images/Artwork;


# instance fields
.field private binaryData:[B

.field private description:Ljava/lang/String;

.field private height:I

.field private imageUrl:Ljava/lang/String;

.field private isLinked:Z

.field private mimeType:Ljava/lang/String;

.field private pictureType:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/jaudiotagger/tag/images/StandardArtwork;->mimeType:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/jaudiotagger/tag/images/StandardArtwork;->description:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jaudiotagger/tag/images/StandardArtwork;->isLinked:Z

    const-string v0, ""

    iput-object v0, p0, Lorg/jaudiotagger/tag/images/StandardArtwork;->imageUrl:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/jaudiotagger/tag/images/StandardArtwork;->pictureType:I

    return-void
.end method

.method public static createArtworkFromFile(Ljava/io/File;)Lorg/jaudiotagger/tag/images/StandardArtwork;
    .locals 1

    new-instance v0, Lorg/jaudiotagger/tag/images/StandardArtwork;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/images/StandardArtwork;-><init>()V

    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/images/StandardArtwork;->setFromFile(Ljava/io/File;)V

    return-object v0
.end method

.method public static createArtworkFromMetadataBlockDataPicture(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;)Lorg/jaudiotagger/tag/images/StandardArtwork;
    .locals 1

    new-instance v0, Lorg/jaudiotagger/tag/images/StandardArtwork;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/images/StandardArtwork;-><init>()V

    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/images/StandardArtwork;->setFromMetadataBlockDataPicture(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;)V

    return-object v0
.end method

.method public static createLinkedArtworkFromURL(Ljava/lang/String;)Lorg/jaudiotagger/tag/images/StandardArtwork;
    .locals 1

    new-instance v0, Lorg/jaudiotagger/tag/images/StandardArtwork;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/images/StandardArtwork;-><init>()V

    invoke-virtual {v0, p0}, Lorg/jaudiotagger/tag/images/StandardArtwork;->setLinkedFromURL(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getBinaryData()[B
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/tag/images/StandardArtwork;->binaryData:[B

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/tag/images/StandardArtwork;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/jaudiotagger/tag/images/StandardArtwork;->height:I

    return v0
.end method

.method public getImage()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/images/StandardArtwork;->getBinaryData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Ljavax/imageio/ImageIO;->createImageInputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageInputStream;

    move-result-object v0

    invoke-static {v0}, Ljavax/imageio/ImageIO;->read(Ljavax/imageio/stream/ImageInputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/tag/images/StandardArtwork;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/tag/images/StandardArtwork;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureType()I
    .locals 1

    iget v0, p0, Lorg/jaudiotagger/tag/images/StandardArtwork;->pictureType:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/jaudiotagger/tag/images/StandardArtwork;->width:I

    return v0
.end method

.method public isLinked()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jaudiotagger/tag/images/StandardArtwork;->isLinked:Z

    return v0
.end method

.method public setBinaryData([B)V
    .locals 0

    iput-object p1, p0, Lorg/jaudiotagger/tag/images/StandardArtwork;->binaryData:[B

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jaudiotagger/tag/images/StandardArtwork;->description:Ljava/lang/String;

    return-void
.end method

.method public setFromFile(Ljava/io/File;)V
    .locals 4

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v1, v2

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {p0, v1}, Lorg/jaudiotagger/tag/images/StandardArtwork;->setBinaryData([B)V

    invoke-static {v1}, Lorg/jaudiotagger/tag/id3/valuepair/ImageFormats;->getMimeTypeForBinarySignature([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/images/StandardArtwork;->setMimeType(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/images/StandardArtwork;->setDescription(Ljava/lang/String;)V

    sget-object v0, Lorg/jaudiotagger/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/images/StandardArtwork;->setPictureType(I)V

    return-void
.end method

.method public setFromMetadataBlockDataPicture(Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;)V
    .locals 1

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/images/StandardArtwork;->setMimeType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/images/StandardArtwork;->setDescription(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getPictureType()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/images/StandardArtwork;->setPictureType(I)V

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->isImageUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->isImageUrl()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/images/StandardArtwork;->setLinked(Z)V

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/images/StandardArtwork;->setImageUrl(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/images/StandardArtwork;->setWidth(I)V

    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/images/StandardArtwork;->setHeight(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/flac/metadatablock/MetadataBlockDataPicture;->getImageData()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/images/StandardArtwork;->setBinaryData([B)V

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lorg/jaudiotagger/tag/images/StandardArtwork;->height:I

    return-void
.end method

.method public setImageFromData()Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/images/StandardArtwork;->getImage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jaudiotagger/tag/images/StandardArtwork;->setWidth(I)V

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/images/StandardArtwork;->setHeight(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jaudiotagger/tag/images/StandardArtwork;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setLinked(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jaudiotagger/tag/images/StandardArtwork;->isLinked:Z

    return-void
.end method

.method public setLinkedFromURL(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/images/StandardArtwork;->setLinked(Z)V

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/images/StandardArtwork;->setImageUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jaudiotagger/tag/images/StandardArtwork;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setPictureType(I)V
    .locals 0

    iput p1, p0, Lorg/jaudiotagger/tag/images/StandardArtwork;->pictureType:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lorg/jaudiotagger/tag/images/StandardArtwork;->width:I

    return-void
.end method
