.class public abstract Lcn/kuwo/base/image/processing/ImageProcessing;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method protected abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcn/kuwo/base/image/processing/ImageProcessing$IProcessingNotify;)V
    .locals 3

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcn/kuwo/base/image/processing/ImageProcessing;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {}, Lcn/kuwo/base/image/Utils;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_1
    invoke-static {}, Lcn/kuwo/base/image/ImageCache;->a()Lcn/kuwo/base/image/ImageCache;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/base/image/processing/ImageProcessing;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcn/kuwo/base/image/ImageCache;->a(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-interface {p3, v0}, Lcn/kuwo/base/image/processing/ImageProcessing$IProcessingNotify;->a(Landroid/graphics/drawable/BitmapDrawable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcn/kuwo/base/image/RecyclingBitmapDrawable;

    invoke-direct {v0, p1, v1}, Lcn/kuwo/base/image/RecyclingBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/kuwo/base/image/processing/ImageProcessing;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/base/image/processing/ImageProcessing;->a:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/base/image/processing/ImageProcessing;->a:Ljava/lang/String;

    return-object v0
.end method
