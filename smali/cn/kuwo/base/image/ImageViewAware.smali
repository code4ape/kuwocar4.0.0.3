.class public Lcn/kuwo/base/image/ImageViewAware;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ImageViewAware constructor imageview is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcn/kuwo/base/image/ImageViewAware;->a:Landroid/widget/ImageView;

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 3

    const/4 v1, -0x1

    :try_start_0
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    const v2, 0x7fffffff

    if-ge v0, v2, :cond_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/Exception;)V

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/image/ImageViewAware;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/image/ImageViewAware;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/image/ImageViewAware;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/image/ImageViewAware;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/image/ImageViewAware;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/image/ImageViewAware;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, Lcn/kuwo/base/image/ImageViewAware;->a:Landroid/widget/ImageView;

    const-string v1, "mMaxWidth"

    invoke-static {v0, v1}, Lcn/kuwo/base/image/ImageViewAware;->a(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/image/ImageViewAware;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    if-gtz v0, :cond_1

    const/16 v0, 0x14d

    :cond_1
    return v0
.end method

.method public final d()I
    .locals 2

    iget-object v0, p0, Lcn/kuwo/base/image/ImageViewAware;->a:Landroid/widget/ImageView;

    const-string v1, "mMaxHeight"

    invoke-static {v0, v1}, Lcn/kuwo/base/image/ImageViewAware;->a(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/image/ImageViewAware;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    if-gtz v0, :cond_1

    const/16 v0, 0x14d

    :cond_1
    return v0
.end method
