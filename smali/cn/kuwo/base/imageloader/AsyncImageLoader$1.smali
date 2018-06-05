.class Lcn/kuwo/base/imageloader/AsyncImageLoader$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/base/imageloader/ImageLoadListener;


# instance fields
.field final synthetic a:Lcn/kuwo/base/imageloader/AsyncImageLoader;


# virtual methods
.method public onGetPicFinish(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p5, :cond_0

    if-eqz p4, :cond_0

    instance-of v0, p4, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    check-cast p4, Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4, p5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/base/imageloader/AsyncImageLoader$1;->a:Lcn/kuwo/base/imageloader/AsyncImageLoader;

    invoke-static {v0, p2}, Lcn/kuwo/base/imageloader/AsyncImageLoader;->a(Lcn/kuwo/base/imageloader/AsyncImageLoader;Ljava/lang/Object;)V

    return-void
.end method
