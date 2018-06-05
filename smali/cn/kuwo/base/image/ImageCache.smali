.class public final Lcn/kuwo/base/image/ImageCache;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcn/kuwo/base/image/ImageCache;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private c:Landroid/support/v4/util/LruCache;

.field private final d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/kuwo/base/image/ImageCache;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/base/image/ImageCache;->d:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcn/kuwo/base/image/ImageCache;
    .locals 2

    sget-object v0, Lcn/kuwo/base/image/ImageCache;->a:Lcn/kuwo/base/image/ImageCache;

    if-nez v0, :cond_1

    sget-object v1, Lcn/kuwo/base/image/ImageCache;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/kuwo/base/image/ImageCache;->a:Lcn/kuwo/base/image/ImageCache;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/base/image/ImageCache;

    invoke-direct {v0}, Lcn/kuwo/base/image/ImageCache;-><init>()V

    sput-object v0, Lcn/kuwo/base/image/ImageCache;->a:Lcn/kuwo/base/image/ImageCache;

    sget-object v0, Lcn/kuwo/base/image/ImageCache;->a:Lcn/kuwo/base/image/ImageCache;

    invoke-direct {v0}, Lcn/kuwo/base/image/ImageCache;->b()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcn/kuwo/base/image/ImageCache;->a:Lcn/kuwo/base/image/ImageCache;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b()V
    .locals 10

    const/high16 v4, 0x1800000

    const/high16 v2, 0x1000000

    const/high16 v0, 0xc00000

    const/high16 v1, 0x600000

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    const-wide/16 v8, 0x8

    div-long/2addr v6, v8

    long-to-float v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {}, Lcn/kuwo/base/image/Utils;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    if-le v3, v4, :cond_4

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_3

    :cond_0
    :goto_1
    const-string v1, "ImageCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageCache [init] LruCache size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/high16 v3, 0x100000

    div-int v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcn/kuwo/base/image/ImageCache$1;

    invoke-direct {v1, p0, v0}, Lcn/kuwo/base/image/ImageCache$1;-><init>(Lcn/kuwo/base/image/ImageCache;I)V

    iput-object v1, p0, Lcn/kuwo/base/image/ImageCache;->c:Landroid/support/v4/util/LruCache;

    return-void

    :cond_1
    if-le v3, v2, :cond_2

    move v0, v2

    :goto_2
    if-ge v0, v1, :cond_0

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5

    const/4 v1, 0x0

    sget-object v2, Lcn/kuwo/base/image/ImageCache;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/base/image/ImageCache;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/base/image/ImageCache;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/image/ImageCache;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImageCache [getSoftReference] has recycle, so remove:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    monitor-exit v2

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 4

    sget-object v2, Lcn/kuwo/base/image/ImageCache;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcn/kuwo/base/image/ImageCache;->c:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    const-class v1, Lcn/kuwo/base/image/RecyclingBitmapDrawable;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p2

    check-cast v0, Lcn/kuwo/base/image/RecyclingBitmapDrawable;

    move-object v1, v0

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcn/kuwo/base/image/RecyclingBitmapDrawable;->b(Z)V

    :cond_2
    iget-object v1, p0, Lcn/kuwo/base/image/ImageCache;->c:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    const-string v1, "ImageCache"

    const-string v3, "ImageCache [put] has in memory, not need put again"

    invoke-static {v1, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected b(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 4

    sget-object v1, Lcn/kuwo/base/image/ImageCache;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-static {}, Lcn/kuwo/base/image/Utils;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/base/image/ImageCache;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/kuwo/base/image/ImageCache;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/base/image/ImageCache;->d:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ImageCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageCache [putSoftReference] has recycle, so put again:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcn/kuwo/base/image/ImageCache;->d:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    sget-object v1, Lcn/kuwo/base/image/ImageCache;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/image/ImageCache;->c:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/image/ImageCache;->c:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
