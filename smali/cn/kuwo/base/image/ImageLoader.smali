.class public abstract Lcn/kuwo/base/image/ImageLoader;
.super Ljava/lang/Object;


# static fields
.field private static e:Landroid/util/SparseArray;


# instance fields
.field protected final a:Lcn/kuwo/base/image/ImageLoader$SpecialParameter;

.field protected final b:Ljava/lang/Object;

.field private final c:Lcn/kuwo/base/image/ImageDisplayOptions;

.field private d:Lcn/kuwo/base/image/ImageCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcn/kuwo/base/image/ImageLoader;->e:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/image/ImageLoader;->b:Ljava/lang/Object;

    invoke-static {}, Lcn/kuwo/base/image/ImageCache;->a()Lcn/kuwo/base/image/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/base/image/ImageLoader;->d:Lcn/kuwo/base/image/ImageCache;

    invoke-virtual {p0}, Lcn/kuwo/base/image/ImageLoader;->a()Lcn/kuwo/base/image/ImageDisplayOptions;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/base/image/ImageLoader;->c:Lcn/kuwo/base/image/ImageDisplayOptions;

    new-instance v0, Lcn/kuwo/base/image/ImageLoader$SpecialParameter;

    iget-object v1, p0, Lcn/kuwo/base/image/ImageLoader;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcn/kuwo/base/image/ImageLoader;->d:Lcn/kuwo/base/image/ImageCache;

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/image/ImageLoader$SpecialParameter;-><init>(Ljava/lang/Object;Lcn/kuwo/base/image/ImageCache;)V

    iput-object v0, p0, Lcn/kuwo/base/image/ImageLoader;->a:Lcn/kuwo/base/image/ImageLoader$SpecialParameter;

    return-void
.end method

.method private a(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/kuwo/base/image/ImageLoader;->a(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcn/kuwo/base/image/BitmapUtils;->a(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcn/kuwo/base/image/ImageDisplayOptions;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p1, Lcn/kuwo/base/image/ImageDisplayOptions;->c:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcn/kuwo/base/image/ImageLoader;->d:Lcn/kuwo/base/image/ImageCache;

    invoke-virtual {v0, p2}, Lcn/kuwo/base/image/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-boolean v1, p1, Lcn/kuwo/base/image/ImageDisplayOptions;->d:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/image/ImageLoader;->d:Lcn/kuwo/base/image/ImageCache;

    invoke-virtual {v0, p2}, Lcn/kuwo/base/image/ImageCache;->a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcn/kuwo/base/image/ImageLoader;)Lcn/kuwo/base/image/ImageDisplayOptions;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/image/ImageLoader;->c:Lcn/kuwo/base/image/ImageDisplayOptions;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/content/Context;Lcn/kuwo/base/image/ImageViewAware;Lcn/kuwo/base/image/ImageDisplayOptions;)Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p2}, Lcn/kuwo/base/image/ImageViewAware;->c()I

    move-result v1

    invoke-virtual {p2}, Lcn/kuwo/base/image/ImageViewAware;->d()I

    move-result v2

    iget v0, p3, Lcn/kuwo/base/image/ImageDisplayOptions;->a:I

    add-int/2addr v0, v1

    add-int v3, v0, v2

    sget-object v0, Lcn/kuwo/base/image/ImageLoader;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const-string v4, "ImageLoader"

    const-string v5, "ImageLoader [getLoadingBitmap] from resource"

    invoke-static {v4, v5}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v4, p3, Lcn/kuwo/base/image/ImageDisplayOptions;->a:I

    invoke-direct {p0, p1, v4, v1, v2}, Lcn/kuwo/base/image/ImageLoader;->a(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcn/kuwo/base/image/ImageLoader;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method protected abstract a()Lcn/kuwo/base/image/ImageDisplayOptions;
.end method

.method protected final a(Landroid/widget/ImageView;)Lcn/kuwo/base/image/ImageTask;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcn/kuwo/base/image/ImageLoader$AsyncDrawable;

    if-eqz v2, :cond_0

    check-cast v0, Lcn/kuwo/base/image/ImageLoader$AsyncDrawable;

    invoke-virtual {v0}, Lcn/kuwo/base/image/ImageLoader$AsyncDrawable;->a()Lcn/kuwo/base/image/ImageTask;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/image/ImageLoader;->c:Lcn/kuwo/base/image/ImageDisplayOptions;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/kuwo/base/image/ImageLoader;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcn/kuwo/base/image/ImageDisplayOptions;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcn/kuwo/base/image/ImageDisplayOptions;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcn/kuwo/base/image/ImageLoader;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcn/kuwo/base/image/ImageDisplayOptions;Lcn/kuwo/base/image/OnImageLoaderListener;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcn/kuwo/base/image/ImageDisplayOptions;Lcn/kuwo/base/image/OnImageLoaderListener;)V
    .locals 8

    const/4 v0, 0x0

    new-instance v3, Lcn/kuwo/base/image/ImageViewAware;

    invoke-direct {v3, p3}, Lcn/kuwo/base/image/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    if-eqz p2, :cond_a

    invoke-static {p2}, Lcn/kuwo/base/util/CdnUtils;->translateImgUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v7, p0, Lcn/kuwo/base/image/ImageLoader;->b:Ljava/lang/Object;

    monitor-enter v7

    if-eqz v3, :cond_2

    if-eqz p5, :cond_0

    :try_start_0
    invoke-virtual {v3}, Lcn/kuwo/base/image/ImageViewAware;->a()Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {p5, v2, v1}, Lcn/kuwo/base/image/OnImageLoaderListener;->onImageStart(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    invoke-virtual {p0, p1, v3, p4}, Lcn/kuwo/base/image/ImageLoader;->a(Landroid/content/Context;Lcn/kuwo/base/image/ImageViewAware;Lcn/kuwo/base/image/ImageDisplayOptions;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lcn/kuwo/base/image/ImageLoader;->a(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p4, Lcn/kuwo/base/image/ImageDisplayOptions;->e:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_1

    iget-object v0, p4, Lcn/kuwo/base/image/ImageDisplayOptions;->e:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v0}, Lcn/kuwo/base/image/ImageViewAware;->a(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    const-string v0, ""

    invoke-virtual {v3, v0}, Lcn/kuwo/base/image/ImageViewAware;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcn/kuwo/base/image/ImageViewAware;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    monitor-exit v7

    return-void

    :cond_3
    invoke-static {v2, v3, p4}, Lcn/kuwo/base/image/Utils;->a(Ljava/lang/String;Lcn/kuwo/base/image/ImageViewAware;Lcn/kuwo/base/image/ImageDisplayOptions;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v5, p4, Lcn/kuwo/base/image/ImageDisplayOptions;->c:Z

    if-eqz v5, :cond_6

    iget-object v0, p0, Lcn/kuwo/base/image/ImageLoader;->d:Lcn/kuwo/base/image/ImageCache;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/image/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    :cond_4
    :goto_2
    if-eqz v0, :cond_7

    iget-object v1, p4, Lcn/kuwo/base/image/ImageDisplayOptions;->f:Landroid/widget/ImageView$ScaleType;

    if-eqz v1, :cond_5

    iget-object v1, p4, Lcn/kuwo/base/image/ImageDisplayOptions;->f:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v1}, Lcn/kuwo/base/image/ImageViewAware;->a(Landroid/widget/ImageView$ScaleType;)V

    :cond_5
    const-string v1, ""

    invoke-virtual {v3, v1}, Lcn/kuwo/base/image/ImageViewAware;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcn/kuwo/base/image/ImageViewAware;->a(Landroid/graphics/drawable/Drawable;)V

    if-eqz p5, :cond_2

    invoke-virtual {v3}, Lcn/kuwo/base/image/ImageViewAware;->a()Landroid/widget/ImageView;

    move-result-object v0

    invoke-interface {p5, v2, v0}, Lcn/kuwo/base/image/OnImageLoaderListener;->onImageSuccess(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    :try_start_1
    iget-boolean v5, p4, Lcn/kuwo/base/image/ImageDisplayOptions;->d:Z

    if-eqz v5, :cond_4

    iget-object v0, p0, Lcn/kuwo/base/image/ImageLoader;->d:Lcn/kuwo/base/image/ImageCache;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/image/ImageCache;->a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_2

    :cond_7
    invoke-virtual {v3}, Lcn/kuwo/base/image/ImageViewAware;->a()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcn/kuwo/base/image/ImageLoader;->a(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p4, Lcn/kuwo/base/image/ImageDisplayOptions;->e:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_8

    iget-object v0, p4, Lcn/kuwo/base/image/ImageDisplayOptions;->e:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v0}, Lcn/kuwo/base/image/ImageViewAware;->a(Landroid/widget/ImageView$ScaleType;)V

    :cond_8
    invoke-virtual {v3, v2}, Lcn/kuwo/base/image/ImageViewAware;->a(Ljava/lang/String;)V

    instance-of v0, p0, Lcn/kuwo/base/image/ListImageLoader;

    if-nez v0, :cond_9

    invoke-virtual {v3, v4}, Lcn/kuwo/base/image/ImageViewAware;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcn/kuwo/base/image/ImageLoader;->a(Landroid/content/Context;Ljava/lang/String;Lcn/kuwo/base/image/ImageViewAware;Lcn/kuwo/base/image/ImageDisplayOptions;Lcn/kuwo/base/image/OnImageLoaderListener;Lcn/kuwo/base/image/processing/ImageProcessing;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_a
    move-object v2, p2

    goto/16 :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcn/kuwo/base/image/processing/ImageProcessing;)V
    .locals 8

    iget-object v4, p0, Lcn/kuwo/base/image/ImageLoader;->c:Lcn/kuwo/base/image/ImageDisplayOptions;

    if-nez p4, :cond_0

    invoke-virtual {p0, p1, p2, p3, v4}, Lcn/kuwo/base/image/ImageLoader;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcn/kuwo/base/image/ImageDisplayOptions;)V

    :goto_0
    return-void

    :cond_0
    new-instance v3, Lcn/kuwo/base/image/ImageViewAware;

    invoke-direct {v3, p3}, Lcn/kuwo/base/image/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    if-eqz p2, :cond_9

    invoke-static {p2}, Lcn/kuwo/base/util/CdnUtils;->translateImgUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v7, p0, Lcn/kuwo/base/image/ImageLoader;->b:Ljava/lang/Object;

    monitor-enter v7

    if-eqz v3, :cond_2

    :try_start_0
    invoke-virtual {p0, p1, v3, v4}, Lcn/kuwo/base/image/ImageLoader;->a(Landroid/content/Context;Lcn/kuwo/base/image/ImageViewAware;Lcn/kuwo/base/image/ImageDisplayOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lcn/kuwo/base/image/ImageLoader;->a(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v1, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v4, Lcn/kuwo/base/image/ImageDisplayOptions;->e:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_1

    iget-object v0, v4, Lcn/kuwo/base/image/ImageDisplayOptions;->e:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v0}, Lcn/kuwo/base/image/ImageViewAware;->a(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    const-string v0, ""

    invoke-virtual {v3, v0}, Lcn/kuwo/base/image/ImageViewAware;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcn/kuwo/base/image/ImageViewAware;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_2
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    invoke-virtual {p4, v2}, Lcn/kuwo/base/image/processing/ImageProcessing;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcn/kuwo/base/image/ImageLoader;->a(Lcn/kuwo/base/image/ImageDisplayOptions;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, v4, Lcn/kuwo/base/image/ImageDisplayOptions;->f:Landroid/widget/ImageView$ScaleType;

    if-eqz v1, :cond_4

    iget-object v1, v4, Lcn/kuwo/base/image/ImageDisplayOptions;->f:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v1}, Lcn/kuwo/base/image/ImageViewAware;->a(Landroid/widget/ImageView$ScaleType;)V

    :cond_4
    const-string v1, ""

    invoke-virtual {v3, v1}, Lcn/kuwo/base/image/ImageViewAware;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcn/kuwo/base/image/ImageViewAware;->a(Landroid/graphics/drawable/Drawable;)V

    monitor-exit v7

    goto :goto_0

    :cond_5
    invoke-static {v2, v3, v4}, Lcn/kuwo/base/image/Utils;->a(Ljava/lang/String;Lcn/kuwo/base/image/ImageViewAware;Lcn/kuwo/base/image/ImageDisplayOptions;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcn/kuwo/base/image/ImageLoader;->a(Lcn/kuwo/base/image/ImageDisplayOptions;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcn/kuwo/base/image/ImageLoader;->a(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Lcn/kuwo/base/image/ImageLoader$1;

    invoke-direct {v2, p0, v3}, Lcn/kuwo/base/image/ImageLoader$1;-><init>(Lcn/kuwo/base/image/ImageLoader;Lcn/kuwo/base/image/ImageViewAware;)V

    invoke-virtual {p4, v1, v0, v2}, Lcn/kuwo/base/image/processing/ImageProcessing;->a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcn/kuwo/base/image/processing/ImageProcessing$IProcessingNotify;)V

    monitor-exit v7

    goto :goto_0

    :cond_6
    invoke-virtual {v3}, Lcn/kuwo/base/image/ImageViewAware;->a()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcn/kuwo/base/image/ImageLoader;->a(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v4, Lcn/kuwo/base/image/ImageDisplayOptions;->e:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_7

    iget-object v0, v4, Lcn/kuwo/base/image/ImageDisplayOptions;->e:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v0}, Lcn/kuwo/base/image/ImageViewAware;->a(Landroid/widget/ImageView$ScaleType;)V

    :cond_7
    invoke-virtual {v3, v2}, Lcn/kuwo/base/image/ImageViewAware;->a(Ljava/lang/String;)V

    instance-of v0, p0, Lcn/kuwo/base/image/ListImageLoader;

    if-nez v0, :cond_8

    invoke-virtual {v3, v1}, Lcn/kuwo/base/image/ImageViewAware;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcn/kuwo/base/image/ImageLoader;->a(Landroid/content/Context;Ljava/lang/String;Lcn/kuwo/base/image/ImageViewAware;Lcn/kuwo/base/image/ImageDisplayOptions;Lcn/kuwo/base/image/OnImageLoaderListener;Lcn/kuwo/base/image/processing/ImageProcessing;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_9
    move-object v2, p2

    goto/16 :goto_1
.end method

.method protected abstract a(Landroid/content/Context;Ljava/lang/String;Lcn/kuwo/base/image/ImageViewAware;Lcn/kuwo/base/image/ImageDisplayOptions;Lcn/kuwo/base/image/OnImageLoaderListener;Lcn/kuwo/base/image/processing/ImageProcessing;)V
.end method

.method protected a(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
