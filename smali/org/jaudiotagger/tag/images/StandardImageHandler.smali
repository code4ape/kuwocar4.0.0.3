.class public Lorg/jaudiotagger/tag/images/StandardImageHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jaudiotagger/tag/images/ImageHandler;


# static fields
.field private static instance:Lorg/jaudiotagger/tag/images/StandardImageHandler;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstanceOf()Lorg/jaudiotagger/tag/images/StandardImageHandler;
    .locals 1

    sget-object v0, Lorg/jaudiotagger/tag/images/StandardImageHandler;->instance:Lorg/jaudiotagger/tag/images/StandardImageHandler;

    if-nez v0, :cond_0

    new-instance v0, Lorg/jaudiotagger/tag/images/StandardImageHandler;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/images/StandardImageHandler;-><init>()V

    sput-object v0, Lorg/jaudiotagger/tag/images/StandardImageHandler;->instance:Lorg/jaudiotagger/tag/images/StandardImageHandler;

    :cond_0
    sget-object v0, Lorg/jaudiotagger/tag/images/StandardImageHandler;->instance:Lorg/jaudiotagger/tag/images/StandardImageHandler;

    return-object v0
.end method


# virtual methods
.method public isMimeTypeWritable(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Ljavax/imageio/ImageIO;->getImageWritersByMIMEType(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public makeSmaller(Lorg/jaudiotagger/tag/images/Artwork;I)V
    .locals 10

    const/4 v5, 0x0

    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getImage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/Image;

    invoke-virtual {v0, v5}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v1

    invoke-virtual {v0, v5}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v2

    int-to-float v3, p2

    int-to-float v1, v1

    div-float v1, v3, v1

    int-to-float v3, p2

    int-to-float v2, v2

    div-float v2, v3, v2

    new-instance v3, Ljava/awt/image/BufferedImage;

    const/4 v4, 0x1

    invoke-direct {v3, p2, p2, v4}, Ljava/awt/image/BufferedImage;-><init>(III)V

    new-instance v4, Ljava/awt/geom/AffineTransform;

    invoke-direct {v4}, Ljava/awt/geom/AffineTransform;-><init>()V

    float-to-double v6, v1

    float-to-double v8, v2

    invoke-virtual {v4, v6, v7, v8, v9}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v5}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z

    invoke-virtual {v1}, Ljava/awt/Graphics2D;->dispose()V

    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/images/StandardImageHandler;->isMimeTypeWritable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lorg/jaudiotagger/tag/images/StandardImageHandler;->writeImage(Ljava/awt/image/BufferedImage;Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/jaudiotagger/tag/images/Artwork;->setBinaryData([B)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v3}, Lorg/jaudiotagger/tag/images/StandardImageHandler;->writeImageAsPng(Ljava/awt/image/BufferedImage;)[B

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/jaudiotagger/tag/images/Artwork;->setBinaryData([B)V

    goto :goto_0
.end method

.method public reduceQuality(Lorg/jaudiotagger/tag/images/Artwork;I)V
    .locals 2

    :goto_0
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getBinaryData()[B

    move-result-object v0

    array-length v0, v0

    if-le v0, p2, :cond_0

    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getImage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/Image;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/tag/images/StandardImageHandler;->makeSmaller(Lorg/jaudiotagger/tag/images/Artwork;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showReadFormats()V
    .locals 7

    invoke-static {}, Ljavax/imageio/ImageIO;->getReaderMIMETypes()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "r"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showWriteFormats()V
    .locals 5

    invoke-static {}, Ljavax/imageio/ImageIO;->getWriterMIMETypes()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeImage(Ljava/awt/image/BufferedImage;Ljava/lang/String;)[B
    .locals 3

    invoke-static {p2}, Ljavax/imageio/ImageIO;->getImageWritersByMIMEType(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/imageio/ImageWriter;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v1}, Ljavax/imageio/ImageIO;->createImageOutputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageOutputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/imageio/ImageWriter;->setOutput(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljavax/imageio/ImageWriter;->write(Ljava/awt/image/RenderedImage;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot write to this mimetype"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeImageAsPng(Ljava/awt/image/BufferedImage;)[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v1, "image/png"

    invoke-static {p1, v1, v0}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
