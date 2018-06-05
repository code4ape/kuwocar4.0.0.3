.class public Lcn/kuwo/base/image/SimpleImageLoader;
.super Lcn/kuwo/base/image/ImageLoader;


# instance fields
.field private c:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method protected constructor <init>()V
    .locals 8

    invoke-direct {p0}, Lcn/kuwo/base/image/ImageLoader;-><init>()V

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcn/kuwo/base/image/SimpleImageLoader;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method protected a()Lcn/kuwo/base/image/ImageDisplayOptions;
    .locals 1

    const v0, 0x7f020058

    invoke-static {v0}, Lcn/kuwo/base/image/ImageDisplayOptions;->b(I)Lcn/kuwo/base/image/ImageDisplayOptions;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/String;Lcn/kuwo/base/image/ImageViewAware;Lcn/kuwo/base/image/ImageDisplayOptions;Lcn/kuwo/base/image/OnImageLoaderListener;Lcn/kuwo/base/image/processing/ImageProcessing;)V
    .locals 8

    iget-object v0, p0, Lcn/kuwo/base/image/SimpleImageLoader;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    const-string v0, "ImageLoader"

    const-string v1, "SimpleImageLoader [processBitmap] mExecutor is null"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcn/kuwo/base/image/ImageTask;

    iget-object v6, p0, Lcn/kuwo/base/image/SimpleImageLoader;->a:Lcn/kuwo/base/image/ImageLoader$SpecialParameter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcn/kuwo/base/image/ImageTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/kuwo/base/image/ImageViewAware;Lcn/kuwo/base/image/ImageDisplayOptions;Lcn/kuwo/base/image/OnImageLoaderListener;Lcn/kuwo/base/image/ImageLoader$SpecialParameter;Lcn/kuwo/base/image/processing/ImageProcessing;)V

    iget-object v1, p0, Lcn/kuwo/base/image/SimpleImageLoader;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
