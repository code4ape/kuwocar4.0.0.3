.class Lcn/kuwo/base/imageloader/ImageManager$BitmapCache;
.super Landroid/support/v4/util/LruCache;


# instance fields
.field final synthetic a:Lcn/kuwo/base/imageloader/ImageManager;


# direct methods
.method public constructor <init>(Lcn/kuwo/base/imageloader/ImageManager;I)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/imageloader/ImageManager$BitmapCache;->a:Lcn/kuwo/base/imageloader/ImageManager;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Landroid/graphics/Bitmap;)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method protected a(ZLjava/lang/Object;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "\u56fe\u7247\u7f13\u5b58"

    const-string v1, "\u7f13\u5b58\u5927\u5c0f\u8d85\u9650\u5236\uff0c\u9700\u8981\u6e05\u9664\uff01"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/graphics/Bitmap;

    check-cast p4, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/kuwo/base/imageloader/ImageManager$BitmapCache;->a(ZLjava/lang/Object;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcn/kuwo/base/imageloader/ImageManager$BitmapCache;->a(Ljava/lang/Object;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
