.class public final Lcn/kuwo/base/image/ListImageLoader;
.super Lcn/kuwo/base/image/ImageLoader;


# instance fields
.field private c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private d:Landroid/widget/AbsListView$OnScrollListener;

.field private e:Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# direct methods
.method public constructor <init>()V
    .locals 9

    const-wide/16 v4, 0x0

    const/4 v2, 0x2

    const/4 v8, 0x1

    invoke-direct {p0}, Lcn/kuwo/base/image/ImageLoader;-><init>()V

    new-instance v0, Lcn/kuwo/base/image/ListImageLoader$1;

    invoke-direct {v0, p0}, Lcn/kuwo/base/image/ListImageLoader$1;-><init>(Lcn/kuwo/base/image/ListImageLoader;)V

    iput-object v0, p0, Lcn/kuwo/base/image/ListImageLoader;->d:Landroid/widget/AbsListView$OnScrollListener;

    new-instance v0, Lcn/kuwo/base/image/ListImageLoader$2;

    invoke-direct {v0, p0}, Lcn/kuwo/base/image/ListImageLoader$2;-><init>(Lcn/kuwo/base/image/ListImageLoader;)V

    iput-object v0, p0, Lcn/kuwo/base/image/ListImageLoader;->e:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    new-instance v7, Lcn/kuwo/base/image/deque/LIFOLinkedBlockingDeque;

    invoke-direct {v7}, Lcn/kuwo/base/image/deque/LIFOLinkedBlockingDeque;-><init>()V

    invoke-static {}, Lcn/kuwo/base/image/Utils;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcn/kuwo/base/image/ListImageLoader;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move v2, v8

    move v3, v8

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcn/kuwo/base/image/ListImageLoader;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_0
.end method


# virtual methods
.method protected a()Lcn/kuwo/base/image/ImageDisplayOptions;
    .locals 1

    const v0, 0x7f020058

    invoke-static {v0}, Lcn/kuwo/base/image/ImageDisplayOptions;->a(I)Lcn/kuwo/base/image/ImageDisplayOptions;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 3

    iget-object v1, p0, Lcn/kuwo/base/image/ListImageLoader;->b:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/base/image/ListImageLoader;->a:Lcn/kuwo/base/image/ImageLoader$SpecialParameter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/kuwo/base/image/ImageLoader$SpecialParameter;->a(Z)V

    iget-object v0, p0, Lcn/kuwo/base/image/ListImageLoader;->a:Lcn/kuwo/base/image/ImageLoader$SpecialParameter;

    invoke-virtual {v0}, Lcn/kuwo/base/image/ImageLoader$SpecialParameter;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/base/image/ListImageLoader;->a:Lcn/kuwo/base/image/ImageLoader$SpecialParameter;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/kuwo/base/image/ImageLoader$SpecialParameter;->a(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Lcn/kuwo/base/image/ImageViewAware;Lcn/kuwo/base/image/ImageDisplayOptions;Lcn/kuwo/base/image/OnImageLoaderListener;Lcn/kuwo/base/image/processing/ImageProcessing;)V
    .locals 8

    iget-object v0, p0, Lcn/kuwo/base/image/ListImageLoader;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    const-string v0, "ImageLoader"

    const-string v1, "ListImageLoader [processBitmap] mExecutor is null"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/base/image/ListImageLoader;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ImageLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ListImageLoader [processBitmap] url is in queue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcn/kuwo/base/image/ImageTask;

    iget-object v6, p0, Lcn/kuwo/base/image/ListImageLoader;->a:Lcn/kuwo/base/image/ImageLoader$SpecialParameter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcn/kuwo/base/image/ImageTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/kuwo/base/image/ImageViewAware;Lcn/kuwo/base/image/ImageDisplayOptions;Lcn/kuwo/base/image/OnImageLoaderListener;Lcn/kuwo/base/image/ImageLoader$SpecialParameter;Lcn/kuwo/base/image/processing/ImageProcessing;)V

    new-instance v1, Lcn/kuwo/base/image/ImageLoader$AsyncDrawable;

    invoke-virtual {p0, p1}, Lcn/kuwo/base/image/ListImageLoader;->a(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0, p1, p3, p4}, Lcn/kuwo/base/image/ListImageLoader;->a(Landroid/content/Context;Lcn/kuwo/base/image/ImageViewAware;Lcn/kuwo/base/image/ImageDisplayOptions;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcn/kuwo/base/image/ImageLoader$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcn/kuwo/base/image/ImageTask;)V

    if-eqz p3, :cond_2

    invoke-virtual {p3, v1}, Lcn/kuwo/base/image/ImageViewAware;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v1, p0, Lcn/kuwo/base/image/ListImageLoader;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, p2}, Lcn/kuwo/base/image/ListImageLoader;->a(Landroid/widget/ImageView;)Lcn/kuwo/base/image/ImageTask;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcn/kuwo/base/image/ImageTask;->b()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    const-string v1, "ImageLoader"

    const-string v2, "ListImageLoader [cancelPotentialWork] the thread is processing"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Lcn/kuwo/base/image/ImageTask;->a()V

    iget-object v2, p0, Lcn/kuwo/base/image/ListImageLoader;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v1

    const-string v2, "ImageLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ListImageLoader [cancelPotentialWork] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/image/ListImageLoader;->e:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-object v0
.end method
