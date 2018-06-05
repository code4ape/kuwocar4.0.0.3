.class public Lcn/kuwo/base/image/BitmapUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 8

    const/4 v1, 0x1

    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v2, p2, :cond_0

    if-le v3, p1, :cond_2

    :cond_0
    div-int/lit8 v4, v2, 0x2

    div-int/lit8 v5, v3, 0x2

    move v0, v1

    :goto_0
    div-int v6, v4, v0

    if-le v6, p2, :cond_1

    div-int v6, v5, v0

    if-le v6, p1, :cond_1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    mul-int/2addr v2, v3

    div-int/2addr v2, v0

    int-to-long v2, v2

    mul-int v4, p1, p2

    mul-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    :goto_1
    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    mul-int/lit8 v0, v0, 0x2

    const-wide/16 v6, 0x2

    div-long/2addr v2, v6

    goto :goto_1

    :cond_2
    move v0, v1

    :cond_3
    sget-boolean v2, Lcn/kuwo/base/util/DeviceUtils;->LOWER_DEVICE:Z

    if-eqz v2, :cond_4

    if-ne v0, v1, :cond_4

    const/4 v0, 0x2

    :cond_4
    const-string v1, "\u5185\u5b58"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "option size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static a(Landroid/graphics/drawable/BitmapDrawable;)I
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/base/image/Utils;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcn/kuwo/base/image/Utils;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {}, Lcn/kuwo/base/image/Utils;->a()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :cond_0
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v0, p2, p3}, Lcn/kuwo/base/image/BitmapUtils;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {}, Lcn/kuwo/base/image/Utils;->a()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :cond_0
    invoke-static {p0, p1, p2, v0}, Lcn/kuwo/base/image/BitmapUtils;->a(Ljava/lang/String;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
