.class public Lcn/kuwo/base/image/GalleryImageLoader;
.super Lcn/kuwo/base/image/SimpleImageLoader;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/base/image/SimpleImageLoader;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcn/kuwo/base/image/ImageDisplayOptions;
    .locals 1

    const v0, 0x7f020058

    invoke-static {v0}, Lcn/kuwo/base/image/ImageDisplayOptions;->c(I)Lcn/kuwo/base/image/ImageDisplayOptions;

    move-result-object v0

    return-object v0
.end method
