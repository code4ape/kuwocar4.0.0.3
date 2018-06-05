.class public Lcn/kuwo/base/imageloader/ImageManager;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static c:Lcn/kuwo/base/imageloader/ImageManager;


# instance fields
.field private b:Lcn/kuwo/base/imageloader/ImageManager$BitmapCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x400000

    sput v0, Lcn/kuwo/base/imageloader/ImageManager;->a:I

    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/base/imageloader/ImageManager;->c:Lcn/kuwo/base/imageloader/ImageManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/kuwo/base/imageloader/ImageManager$BitmapCache;

    sget v1, Lcn/kuwo/base/imageloader/ImageManager;->a:I

    invoke-direct {v0, p0, v1}, Lcn/kuwo/base/imageloader/ImageManager$BitmapCache;-><init>(Lcn/kuwo/base/imageloader/ImageManager;I)V

    iput-object v0, p0, Lcn/kuwo/base/imageloader/ImageManager;->b:Lcn/kuwo/base/imageloader/ImageManager$BitmapCache;

    return-void
.end method

.method private a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcn/kuwo/base/imageloader/ImageManager;->b(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    const/16 v0, 0x8

    if-gt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v1, :cond_1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    :cond_1
    return v0
.end method

.method private a(Ljava/io/File;Z)Landroid/graphics/Bitmap;
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcn/kuwo/base/imageloader/ImageManager;->c(Ljava/lang/String;Z)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Image could not be decoded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "\u56fe\u7247\u7f13\u5b58"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4fdd\u5b58\u8def\u5f84\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/base/imageloader/ImageManager;->b:Lcn/kuwo/base/imageloader/ImageManager$BitmapCache;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcn/kuwo/base/imageloader/ImageManager$BitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public static declared-synchronized a()Lcn/kuwo/base/imageloader/ImageManager;
    .locals 2

    const-class v1, Lcn/kuwo/base/imageloader/ImageManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/kuwo/base/imageloader/ImageManager;->c:Lcn/kuwo/base/imageloader/ImageManager;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/base/imageloader/ImageManager;

    invoke-direct {v0}, Lcn/kuwo/base/imageloader/ImageManager;-><init>()V

    sput-object v0, Lcn/kuwo/base/imageloader/ImageManager;->c:Lcn/kuwo/base/imageloader/ImageManager;

    :cond_0
    sget-object v0, Lcn/kuwo/base/imageloader/ImageManager;->c:Lcn/kuwo/base/imageloader/ImageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 11

    const/4 v1, 0x1

    const/4 v10, -0x1

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v2, v0

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v4, v0

    if-ne p3, v10, :cond_1

    move v0, v1

    :goto_0
    if-ne p2, v10, :cond_2

    const/16 v2, 0x80

    :goto_1
    if-ge v2, v0, :cond_3

    :cond_0
    :goto_2
    return v0

    :cond_1
    mul-double v6, v2, v4

    int-to-double v8, p3

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    goto :goto_0

    :cond_2
    int-to-double v6, p2

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    int-to-double v6, p2

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v2, v2

    goto :goto_1

    :cond_3
    if-ne p3, v10, :cond_4

    if-ne p2, v10, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    if-eq p2, v10, :cond_0

    move v0, v2

    goto :goto_2
.end method

.method private c(Ljava/lang/String;Z)Landroid/graphics/BitmapFactory$Options;
    .locals 5

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    if-eqz p2, :cond_1

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v1, -0x1

    const/16 v2, 0x4000

    invoke-direct {p0, v0, v1, v2}, Lcn/kuwo/base/imageloader/ImageManager;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-le v1, v3, :cond_0

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_0
    const-string v1, "\u56fe\u7247\u7f13\u5b58"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    :cond_1
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "\u56fe\u7247\u7f13\u5b58"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bfb\u53d6\u8def\u5f84\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/base/imageloader/ImageManager;->b:Lcn/kuwo/base/imageloader/ImageManager$BitmapCache;

    invoke-virtual {v0, p1}, Lcn/kuwo/base/imageloader/ImageManager$BitmapCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u56fe\u7247\u7f13\u5b58"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u91cd\u65b0\u89e3\u6790\u52a0\u8f7d\u56fe\u7247\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    move-result v2

    if-eqz v2, :cond_1

    :try_start_1
    invoke-direct {p0, v0, p2}, Lcn/kuwo/base/imageloader/ImageManager;->a(Ljava/io/File;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-direct {p0, v0, p2}, Lcn/kuwo/base/imageloader/ImageManager;->a(Ljava/io/File;Z)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcn/kuwo/base/imageloader/ImageManager;->c(Ljava/lang/String;Z)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/imageloader/ImageManager;->b:Lcn/kuwo/base/imageloader/ImageManager$BitmapCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/imageloader/ImageManager;->b:Lcn/kuwo/base/imageloader/ImageManager$BitmapCache;

    invoke-virtual {v0}, Lcn/kuwo/base/imageloader/ImageManager$BitmapCache;->evictAll()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/base/imageloader/ImageManager;->b:Lcn/kuwo/base/imageloader/ImageManager$BitmapCache;

    :cond_0
    return-void
.end method
