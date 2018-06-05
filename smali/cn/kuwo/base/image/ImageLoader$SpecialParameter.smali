.class public final Lcn/kuwo/base/image/ImageLoader$SpecialParameter;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Lcn/kuwo/base/image/ImageCache;

.field private volatile c:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcn/kuwo/base/image/ImageCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/kuwo/base/image/ImageLoader$SpecialParameter;->b:Lcn/kuwo/base/image/ImageCache;

    iput-object p1, p0, Lcn/kuwo/base/image/ImageLoader$SpecialParameter;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)V
    .locals 2

    iget-object v1, p0, Lcn/kuwo/base/image/ImageLoader$SpecialParameter;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcn/kuwo/base/image/ImageLoader$SpecialParameter;->c:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()Z
    .locals 2

    iget-object v1, p0, Lcn/kuwo/base/image/ImageLoader$SpecialParameter;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcn/kuwo/base/image/ImageLoader$SpecialParameter;->c:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/image/ImageLoader$SpecialParameter;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Lcn/kuwo/base/image/ImageCache;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/image/ImageLoader$SpecialParameter;->b:Lcn/kuwo/base/image/ImageCache;

    return-object v0
.end method
