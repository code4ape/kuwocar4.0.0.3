.class Lcn/kuwo/base/image/ImageTask$3;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic b:Lcn/kuwo/base/image/ImageTask;


# direct methods
.method constructor <init>(Lcn/kuwo/base/image/ImageTask;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/image/ImageTask$3;->b:Lcn/kuwo/base/image/ImageTask;

    iput-object p2, p0, Lcn/kuwo/base/image/ImageTask$3;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/base/image/ImageTask$3;->b:Lcn/kuwo/base/image/ImageTask;

    invoke-virtual {v0}, Lcn/kuwo/base/image/ImageTask;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/image/ImageTask$3;->b:Lcn/kuwo/base/image/ImageTask;

    invoke-static {v0}, Lcn/kuwo/base/image/ImageTask;->a(Lcn/kuwo/base/image/ImageTask;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/image/ImageTask$3;->b:Lcn/kuwo/base/image/ImageTask;

    invoke-static {v1}, Lcn/kuwo/base/image/ImageTask;->b(Lcn/kuwo/base/image/ImageTask;)Lcn/kuwo/base/image/ImageViewAware;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/image/ImageViewAware;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/image/ImageTask$3;->a:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_1

    const-string v0, "ImageLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/kuwo/base/image/ImageTask$3;->b:Lcn/kuwo/base/image/ImageTask;

    invoke-static {v2}, Lcn/kuwo/base/image/ImageTask;->d(Lcn/kuwo/base/image/ImageTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/base/image/ImageTask$3;->b:Lcn/kuwo/base/image/ImageTask;

    invoke-static {v2}, Lcn/kuwo/base/image/ImageTask;->a(Lcn/kuwo/base/image/ImageTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/base/image/ImageTask$3;->b:Lcn/kuwo/base/image/ImageTask;

    invoke-static {v0}, Lcn/kuwo/base/image/ImageTask;->c(Lcn/kuwo/base/image/ImageTask;)Lcn/kuwo/base/image/OnImageLoaderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/image/ImageTask$3;->b:Lcn/kuwo/base/image/ImageTask;

    invoke-static {v0}, Lcn/kuwo/base/image/ImageTask;->c(Lcn/kuwo/base/image/ImageTask;)Lcn/kuwo/base/image/OnImageLoaderListener;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/image/ImageTask$3;->b:Lcn/kuwo/base/image/ImageTask;

    invoke-static {v1}, Lcn/kuwo/base/image/ImageTask;->a(Lcn/kuwo/base/image/ImageTask;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/base/image/ImageTask$3;->b:Lcn/kuwo/base/image/ImageTask;

    invoke-static {v2}, Lcn/kuwo/base/image/ImageTask;->b(Lcn/kuwo/base/image/ImageTask;)Lcn/kuwo/base/image/ImageViewAware;

    move-result-object v2

    invoke-virtual {v2}, Lcn/kuwo/base/image/ImageViewAware;->a()Landroid/widget/ImageView;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/kuwo/base/image/OnImageLoaderListener;->onImageFailure(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/base/image/ImageTask$3;->b:Lcn/kuwo/base/image/ImageTask;

    invoke-static {v0}, Lcn/kuwo/base/image/ImageTask;->e(Lcn/kuwo/base/image/ImageTask;)Lcn/kuwo/base/image/ImageDisplayOptions;

    move-result-object v0

    iget-object v0, v0, Lcn/kuwo/base/image/ImageDisplayOptions;->f:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/base/image/ImageTask$3;->b:Lcn/kuwo/base/image/ImageTask;

    invoke-static {v0}, Lcn/kuwo/base/image/ImageTask;->b(Lcn/kuwo/base/image/ImageTask;)Lcn/kuwo/base/image/ImageViewAware;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/image/ImageTask$3;->b:Lcn/kuwo/base/image/ImageTask;

    invoke-static {v1}, Lcn/kuwo/base/image/ImageTask;->e(Lcn/kuwo/base/image/ImageTask;)Lcn/kuwo/base/image/ImageDisplayOptions;

    move-result-object v1

    iget-object v1, v1, Lcn/kuwo/base/image/ImageDisplayOptions;->f:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/image/ImageViewAware;->a(Landroid/widget/ImageView$ScaleType;)V

    :cond_2
    iget-object v0, p0, Lcn/kuwo/base/image/ImageTask$3;->b:Lcn/kuwo/base/image/ImageTask;

    invoke-static {v0}, Lcn/kuwo/base/image/ImageTask;->b(Lcn/kuwo/base/image/ImageTask;)Lcn/kuwo/base/image/ImageViewAware;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/image/ImageTask$3;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/image/ImageViewAware;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcn/kuwo/base/image/ImageTask$3;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "ImageLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/kuwo/base/image/ImageTask$3;->b:Lcn/kuwo/base/image/ImageTask;

    invoke-static {v3}, Lcn/kuwo/base/image/ImageTask;->f(Lcn/kuwo/base/image/ImageTask;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/kuwo/base/image/ImageTask$3;->b:Lcn/kuwo/base/image/ImageTask;

    invoke-static {v3}, Lcn/kuwo/base/image/ImageTask;->g(Lcn/kuwo/base/image/ImageTask;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/kuwo/base/image/ImageTask$3;->b:Lcn/kuwo/base/image/ImageTask;

    invoke-static {v2}, Lcn/kuwo/base/image/ImageTask;->a(Lcn/kuwo/base/image/ImageTask;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/base/image/ImageTask$3;->b:Lcn/kuwo/base/image/ImageTask;

    invoke-static {v0}, Lcn/kuwo/base/image/ImageTask;->c(Lcn/kuwo/base/image/ImageTask;)Lcn/kuwo/base/image/OnImageLoaderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/image/ImageTask$3;->b:Lcn/kuwo/base/image/ImageTask;

    invoke-static {v0}, Lcn/kuwo/base/image/ImageTask;->c(Lcn/kuwo/base/image/ImageTask;)Lcn/kuwo/base/image/OnImageLoaderListener;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/image/ImageTask$3;->b:Lcn/kuwo/base/image/ImageTask;

    invoke-static {v1}, Lcn/kuwo/base/image/ImageTask;->a(Lcn/kuwo/base/image/ImageTask;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/base/image/ImageTask$3;->b:Lcn/kuwo/base/image/ImageTask;

    invoke-static {v2}, Lcn/kuwo/base/image/ImageTask;->b(Lcn/kuwo/base/image/ImageTask;)Lcn/kuwo/base/image/ImageViewAware;

    move-result-object v2

    invoke-virtual {v2}, Lcn/kuwo/base/image/ImageViewAware;->a()Landroid/widget/ImageView;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/kuwo/base/image/OnImageLoaderListener;->onImageSuccess(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_0
.end method
