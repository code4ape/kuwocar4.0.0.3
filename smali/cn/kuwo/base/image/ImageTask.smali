.class public final Lcn/kuwo/base/image/ImageTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Landroid/content/res/Resources;

.field private f:Lcn/kuwo/base/image/ImageDisplayOptions;

.field private g:Lcn/kuwo/base/image/ImageLoader$SpecialParameter;

.field private h:Lcn/kuwo/base/image/OnImageLoaderListener;

.field private i:Lcn/kuwo/base/image/ImageViewAware;

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private k:Lcn/kuwo/base/image/processing/ImageProcessing;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcn/kuwo/base/image/ImageViewAware;Lcn/kuwo/base/image/ImageDisplayOptions;Lcn/kuwo/base/image/OnImageLoaderListener;Lcn/kuwo/base/image/ImageLoader$SpecialParameter;Lcn/kuwo/base/image/processing/ImageProcessing;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/kuwo/base/image/ImageTask;->a:Ljava/lang/String;

    iput-object p4, p0, Lcn/kuwo/base/image/ImageTask;->f:Lcn/kuwo/base/image/ImageDisplayOptions;

    iput-object p5, p0, Lcn/kuwo/base/image/ImageTask;->h:Lcn/kuwo/base/image/OnImageLoaderListener;

    iput-object p6, p0, Lcn/kuwo/base/image/ImageTask;->g:Lcn/kuwo/base/image/ImageLoader$SpecialParameter;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/image/ImageTask;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcn/kuwo/base/image/ImageTask;->i:Lcn/kuwo/base/image/ImageViewAware;

    invoke-virtual {p6, p1}, Lcn/kuwo/base/image/ImageLoader$SpecialParameter;->a(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/base/image/ImageTask;->e:Landroid/content/res/Resources;

    iput-object p7, p0, Lcn/kuwo/base/image/ImageTask;->k:Lcn/kuwo/base/image/processing/ImageProcessing;

    iget-object v0, p0, Lcn/kuwo/base/image/ImageTask;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/image/ImageTask;->a:Ljava/lang/String;

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/base/image/ImageTask;->d:Ljava/lang/String;

    invoke-static {p3, p4}, Lcn/kuwo/base/image/Utils;->a(Lcn/kuwo/base/image/ImageViewAware;Lcn/kuwo/base/image/ImageDisplayOptions;)I

    move-result v0

    iput v0, p0, Lcn/kuwo/base/image/ImageTask;->b:I

    invoke-static {p3, p4}, Lcn/kuwo/base/image/Utils;->b(Lcn/kuwo/base/image/ImageViewAware;Lcn/kuwo/base/image/ImageDisplayOptions;)I

    move-result v0

    iput v0, p0, Lcn/kuwo/base/image/ImageTask;->c:I

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Lcn/kuwo/base/image/ImageTask;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v0

    const-string v1, "SMALLPIC_CACHE"

    iget-object v2, p0, Lcn/kuwo/base/image/ImageTask;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/base/cache/CacheMgr;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget v1, p0, Lcn/kuwo/base/image/ImageTask;->b:I

    iget v2, p0, Lcn/kuwo/base/image/ImageTask;->c:I

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/image/BitmapUtils;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string v0, "decodeSampledBitmapFromFile OOM"

    iput-object v0, p0, Lcn/kuwo/base/image/ImageTask;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcn/kuwo/base/image/ImageTask;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/image/ImageTask;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcn/kuwo/base/image/ImageTask;)Lcn/kuwo/base/image/ImageViewAware;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/image/ImageTask;->i:Lcn/kuwo/base/image/ImageViewAware;

    return-object v0
.end method

.method private c()I
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcn/kuwo/base/image/ImageTask;->b()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isOnlyWifiConnect()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcn/kuwo/base/http/HttpSession;

    invoke-direct {v0}, Lcn/kuwo/base/http/HttpSession;-><init>()V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Lcn/kuwo/base/http/HttpSession;->a(J)V

    iget-object v1, p0, Lcn/kuwo/base/image/ImageTask;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/http/HttpSession;->get(Ljava/lang/String;)Lcn/kuwo/base/http/HttpResult;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcn/kuwo/base/http/HttpResult;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v0

    const-string v1, "SMALLPIC_CACHE"

    const/16 v2, 0xe10

    const/16 v3, 0x48

    iget-object v4, p0, Lcn/kuwo/base/image/ImageTask;->a:Ljava/lang/String;

    iget-object v5, v5, Lcn/kuwo/base/http/HttpResult;->c:[B

    invoke-virtual/range {v0 .. v5}, Lcn/kuwo/base/cache/CacheMgr;->a(Ljava/lang/String;IILjava/lang/String;[B)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    iget-object v1, v5, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    iput-object v1, p0, Lcn/kuwo/base/image/ImageTask;->d:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "no network or onlyWifi"

    iput-object v1, p0, Lcn/kuwo/base/image/ImageTask;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic c(Lcn/kuwo/base/image/ImageTask;)Lcn/kuwo/base/image/OnImageLoaderListener;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/image/ImageTask;->h:Lcn/kuwo/base/image/OnImageLoaderListener;

    return-object v0
.end method

.method static synthetic d(Lcn/kuwo/base/image/ImageTask;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/image/ImageTask;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcn/kuwo/base/image/ImageTask;)Lcn/kuwo/base/image/ImageDisplayOptions;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/image/ImageTask;->f:Lcn/kuwo/base/image/ImageDisplayOptions;

    return-object v0
.end method

.method static synthetic f(Lcn/kuwo/base/image/ImageTask;)I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/image/ImageTask;->b:I

    return v0
.end method

.method static synthetic g(Lcn/kuwo/base/image/ImageTask;)I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/image/ImageTask;->c:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/base/image/ImageTask;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/image/ImageTask;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcn/kuwo/base/image/ImageTask;->h:Lcn/kuwo/base/image/OnImageLoaderListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v2, Lcn/kuwo/base/image/ImageTask$1;

    invoke-direct {v2, p0}, Lcn/kuwo/base/image/ImageTask$1;-><init>(Lcn/kuwo/base/image/ImageTask;)V

    invoke-virtual {v0, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/base/image/ImageTask;->g:Lcn/kuwo/base/image/ImageLoader$SpecialParameter;

    invoke-virtual {v0}, Lcn/kuwo/base/image/ImageLoader$SpecialParameter;->b()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcn/kuwo/base/image/ImageTask;->g:Lcn/kuwo/base/image/ImageLoader$SpecialParameter;

    invoke-virtual {v0}, Lcn/kuwo/base/image/ImageLoader$SpecialParameter;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/kuwo/base/image/ImageTask;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcn/kuwo/base/image/ImageTask;->g:Lcn/kuwo/base/image/ImageLoader$SpecialParameter;

    invoke-virtual {v0}, Lcn/kuwo/base/image/ImageLoader$SpecialParameter;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v0

    const-string v2, "SMALLPIC_CACHE"

    iget-object v3, p0, Lcn/kuwo/base/image/ImageTask;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcn/kuwo/base/cache/CacheMgr;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcn/kuwo/base/image/ImageTask;->b()Z

    move-result v2

    if-nez v2, :cond_9

    :try_start_3
    iget v2, p0, Lcn/kuwo/base/image/ImageTask;->b:I

    iget v3, p0, Lcn/kuwo/base/image/ImageTask;->c:I

    invoke-static {v0, v2, v3}, Lcn/kuwo/base/image/BitmapUtils;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcn/kuwo/base/image/ImageTask;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcn/kuwo/base/image/ImageTask;->c()I

    move-result v2

    if-ne v2, v5, :cond_3

    invoke-direct {p0, v0}, Lcn/kuwo/base/image/ImageTask;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, v0

    :goto_2
    if-nez v2, :cond_4

    move-object v0, v1

    :cond_2
    :goto_3
    iget-object v1, p0, Lcn/kuwo/base/image/ImageTask;->k:Lcn/kuwo/base/image/processing/ImageProcessing;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcn/kuwo/base/image/ImageTask;->k:Lcn/kuwo/base/image/processing/ImageProcessing;

    iget-object v1, p0, Lcn/kuwo/base/image/ImageTask;->e:Landroid/content/res/Resources;

    new-instance v3, Lcn/kuwo/base/image/ImageTask$2;

    invoke-direct {v3, p0}, Lcn/kuwo/base/image/ImageTask$2;-><init>(Lcn/kuwo/base/image/ImageTask;)V

    invoke-virtual {v0, v1, v2, v3}, Lcn/kuwo/base/image/processing/ImageProcessing;->a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcn/kuwo/base/image/processing/ImageProcessing$IProcessingNotify;)V

    :goto_4
    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string v0, "decodeSampledBitmapFromFile OOM"

    iput-object v0, p0, Lcn/kuwo/base/image/ImageTask;->d:Ljava/lang/String;

    const-string v0, "ImageLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/kuwo/base/image/ImageTask;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/base/image/ImageTask;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    const/4 v3, -0x1

    if-ne v2, v3, :cond_8

    const-string v2, "ImageLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startHttpSession again:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/kuwo/base/image/ImageTask;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/kuwo/base/image/ImageTask;->c()I

    move-result v2

    if-ne v2, v5, :cond_8

    invoke-direct {p0, v0}, Lcn/kuwo/base/image/ImageTask;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :cond_4
    invoke-static {}, Lcn/kuwo/base/image/Utils;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcn/kuwo/base/image/ImageTask;->e:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_5
    iget-object v1, p0, Lcn/kuwo/base/image/ImageTask;->a:Ljava/lang/String;

    iget-object v3, p0, Lcn/kuwo/base/image/ImageTask;->i:Lcn/kuwo/base/image/ImageViewAware;

    iget-object v4, p0, Lcn/kuwo/base/image/ImageTask;->f:Lcn/kuwo/base/image/ImageDisplayOptions;

    invoke-static {v1, v3, v4}, Lcn/kuwo/base/image/Utils;->a(Ljava/lang/String;Lcn/kuwo/base/image/ImageViewAware;Lcn/kuwo/base/image/ImageDisplayOptions;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcn/kuwo/base/image/ImageTask;->g:Lcn/kuwo/base/image/ImageLoader$SpecialParameter;

    invoke-virtual {v3}, Lcn/kuwo/base/image/ImageLoader$SpecialParameter;->c()Lcn/kuwo/base/image/ImageCache;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcn/kuwo/base/image/ImageTask;->f:Lcn/kuwo/base/image/ImageDisplayOptions;

    iget-boolean v3, v3, Lcn/kuwo/base/image/ImageDisplayOptions;->c:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcn/kuwo/base/image/ImageTask;->g:Lcn/kuwo/base/image/ImageLoader$SpecialParameter;

    invoke-virtual {v3}, Lcn/kuwo/base/image/ImageLoader$SpecialParameter;->c()Lcn/kuwo/base/image/ImageCache;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcn/kuwo/base/image/ImageCache;->a(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    goto/16 :goto_3

    :cond_5
    new-instance v0, Lcn/kuwo/base/image/RecyclingBitmapDrawable;

    iget-object v1, p0, Lcn/kuwo/base/image/ImageTask;->e:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2}, Lcn/kuwo/base/image/RecyclingBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_5

    :cond_6
    iget-object v3, p0, Lcn/kuwo/base/image/ImageTask;->g:Lcn/kuwo/base/image/ImageLoader$SpecialParameter;

    invoke-virtual {v3}, Lcn/kuwo/base/image/ImageLoader$SpecialParameter;->c()Lcn/kuwo/base/image/ImageCache;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcn/kuwo/base/image/ImageTask;->f:Lcn/kuwo/base/image/ImageDisplayOptions;

    iget-boolean v3, v3, Lcn/kuwo/base/image/ImageDisplayOptions;->d:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcn/kuwo/base/image/ImageTask;->g:Lcn/kuwo/base/image/ImageLoader$SpecialParameter;

    invoke-virtual {v3}, Lcn/kuwo/base/image/ImageLoader$SpecialParameter;->c()Lcn/kuwo/base/image/ImageCache;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcn/kuwo/base/image/ImageCache;->b(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    goto/16 :goto_3

    :cond_7
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    new-instance v2, Lcn/kuwo/base/image/ImageTask$3;

    invoke-direct {v2, p0, v0}, Lcn/kuwo/base/image/ImageTask$3;-><init>(Lcn/kuwo/base/image/ImageTask;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto/16 :goto_4

    :cond_8
    move-object v2, v0

    goto/16 :goto_2

    :cond_9
    move-object v0, v1

    goto/16 :goto_1
.end method
