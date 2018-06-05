.class public Lcn/kuwo/base/image/RecyclingBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;


# instance fields
.field protected a:Z

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput v0, p0, Lcn/kuwo/base/image/RecyclingBitmapDrawable;->b:I

    iput v0, p0, Lcn/kuwo/base/image/RecyclingBitmapDrawable;->c:I

    return-void
.end method

.method private declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcn/kuwo/base/image/RecyclingBitmapDrawable;->b:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcn/kuwo/base/image/RecyclingBitmapDrawable;->c:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcn/kuwo/base/image/RecyclingBitmapDrawable;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/kuwo/base/image/RecyclingBitmapDrawable;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImageLoader"

    const-string v1, "No longer being used or cached so recycling "

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/kuwo/base/image/RecyclingBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcn/kuwo/base/image/RecyclingBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcn/kuwo/base/image/RecyclingBitmapDrawable;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuwo/base/image/RecyclingBitmapDrawable;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/base/image/RecyclingBitmapDrawable;->a:Z

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcn/kuwo/base/image/RecyclingBitmapDrawable;->a()V

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcn/kuwo/base/image/RecyclingBitmapDrawable;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/kuwo/base/image/RecyclingBitmapDrawable;->c:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcn/kuwo/base/image/RecyclingBitmapDrawable;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuwo/base/image/RecyclingBitmapDrawable;->b:I

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcn/kuwo/base/image/RecyclingBitmapDrawable;->a()V

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcn/kuwo/base/image/RecyclingBitmapDrawable;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/kuwo/base/image/RecyclingBitmapDrawable;->b:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
