.class public Lorg/jaudiotagger/tag/images/Images;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImage(Lorg/jaudiotagger/tag/images/Artwork;)Ljava/awt/image/BufferedImage;
    .locals 1

    invoke-interface {p0}, Lorg/jaudiotagger/tag/images/Artwork;->getImage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/image/BufferedImage;

    return-object v0
.end method
