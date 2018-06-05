.class Lcn/kuwo/base/image/ImageLoader$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/base/image/processing/ImageProcessing$IProcessingNotify;


# instance fields
.field final synthetic a:Lcn/kuwo/base/image/ImageViewAware;

.field final synthetic b:Lcn/kuwo/base/image/ImageLoader;


# direct methods
.method constructor <init>(Lcn/kuwo/base/image/ImageLoader;Lcn/kuwo/base/image/ImageViewAware;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/image/ImageLoader$1;->b:Lcn/kuwo/base/image/ImageLoader;

    iput-object p2, p0, Lcn/kuwo/base/image/ImageLoader$1;->a:Lcn/kuwo/base/image/ImageViewAware;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/base/image/ImageLoader$1;->b:Lcn/kuwo/base/image/ImageLoader;

    invoke-static {v0}, Lcn/kuwo/base/image/ImageLoader;->a(Lcn/kuwo/base/image/ImageLoader;)Lcn/kuwo/base/image/ImageDisplayOptions;

    move-result-object v0

    iget-object v0, v0, Lcn/kuwo/base/image/ImageDisplayOptions;->f:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/image/ImageLoader$1;->a:Lcn/kuwo/base/image/ImageViewAware;

    iget-object v1, p0, Lcn/kuwo/base/image/ImageLoader$1;->b:Lcn/kuwo/base/image/ImageLoader;

    invoke-static {v1}, Lcn/kuwo/base/image/ImageLoader;->a(Lcn/kuwo/base/image/ImageLoader;)Lcn/kuwo/base/image/ImageDisplayOptions;

    move-result-object v1

    iget-object v1, v1, Lcn/kuwo/base/image/ImageDisplayOptions;->f:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/image/ImageViewAware;->a(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/base/image/ImageLoader$1;->a:Lcn/kuwo/base/image/ImageViewAware;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/kuwo/base/image/ImageViewAware;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcn/kuwo/base/image/ImageLoader$1;->a:Lcn/kuwo/base/image/ImageViewAware;

    invoke-virtual {v0, p1}, Lcn/kuwo/base/image/ImageViewAware;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method
