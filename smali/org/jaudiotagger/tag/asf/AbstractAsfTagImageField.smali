.class abstract Lorg/jaudiotagger/tag/asf/AbstractAsfTagImageField;
.super Lorg/jaudiotagger/tag/asf/AsfTagField;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTagField;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTagField;-><init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/asf/AsfFieldKey;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/asf/AsfTagField;-><init>(Lorg/jaudiotagger/tag/asf/AsfFieldKey;)V

    return-void
.end method


# virtual methods
.method public getImage()Ljava/awt/image/BufferedImage;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AbstractAsfTagImageField;->getRawImageData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public abstract getImageDataSize()I
.end method

.method public abstract getRawImageData()[B
.end method
