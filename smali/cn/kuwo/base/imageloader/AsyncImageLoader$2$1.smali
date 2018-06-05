.class Lcn/kuwo/base/imageloader/AsyncImageLoader$2$1;
.super Lcn/kuwo/base/imageloader/AsyncImageLoader$MyRunner;


# instance fields
.field final synthetic a:Lcn/kuwo/base/imageloader/AsyncImageLoader$2;


# direct methods
.method constructor <init>(Lcn/kuwo/base/imageloader/AsyncImageLoader$2;Ljava/lang/Object;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    iput-object p1, p0, Lcn/kuwo/base/imageloader/AsyncImageLoader$2$1;->a:Lcn/kuwo/base/imageloader/AsyncImageLoader$2;

    iget-object v0, p1, Lcn/kuwo/base/imageloader/AsyncImageLoader$2;->a:Lcn/kuwo/base/imageloader/AsyncImageLoader;

    invoke-direct {p0, v0, p2, p3, p4}, Lcn/kuwo/base/imageloader/AsyncImageLoader$MyRunner;-><init>(Lcn/kuwo/base/imageloader/AsyncImageLoader;Ljava/lang/Object;Landroid/view/View;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    iget-object v1, p0, Lcn/kuwo/base/imageloader/AsyncImageLoader$2$1;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcn/kuwo/base/imageloader/AsyncImageLoader$2$1;->c:Landroid/view/View;

    iget-object v2, p0, Lcn/kuwo/base/imageloader/AsyncImageLoader$2$1;->d:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v0, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/kuwo/base/imageloader/AsyncImageLoader$2$1;->a:Lcn/kuwo/base/imageloader/AsyncImageLoader$2;

    iget-object v0, v0, Lcn/kuwo/base/imageloader/AsyncImageLoader$2;->a:Lcn/kuwo/base/imageloader/AsyncImageLoader;

    invoke-static {v0, v1}, Lcn/kuwo/base/imageloader/AsyncImageLoader;->a(Lcn/kuwo/base/imageloader/AsyncImageLoader;Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "hascode"

    const-string v2, "\u4e0d\u52a0\u8f7d\u5f02\u6b65\u7684bitmap"

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
