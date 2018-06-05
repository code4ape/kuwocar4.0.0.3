.class Lcn/kuwo/base/imageloader/AsyncImageLoader$2;
.super Lcn/kuwo/base/imageloader/AsyncImageLoader$MyRunnable;


# instance fields
.field final synthetic a:Lcn/kuwo/base/imageloader/AsyncImageLoader;


# virtual methods
.method public run()V
    .locals 6

    iget-object v1, p0, Lcn/kuwo/base/imageloader/AsyncImageLoader$2;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcn/kuwo/base/imageloader/AsyncImageLoader$2;->c:Landroid/view/View;

    iget-object v0, p0, Lcn/kuwo/base/imageloader/AsyncImageLoader$2;->d:Ljava/lang/Object;

    check-cast v0, Lcn/kuwo/base/bean/MusicList;

    iget-boolean v3, p0, Lcn/kuwo/base/imageloader/AsyncImageLoader$2;->e:Z

    iget-boolean v4, p0, Lcn/kuwo/base/imageloader/AsyncImageLoader$2;->f:Z

    iget-object v5, p0, Lcn/kuwo/base/imageloader/AsyncImageLoader$2;->a:Lcn/kuwo/base/imageloader/AsyncImageLoader;

    invoke-static {v5, v0, v3, v4}, Lcn/kuwo/base/imageloader/AsyncImageLoader;->a(Lcn/kuwo/base/imageloader/AsyncImageLoader;Lcn/kuwo/base/bean/MusicList;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v3

    new-instance v4, Lcn/kuwo/base/imageloader/AsyncImageLoader$2$1;

    invoke-direct {v4, p0, v1, v2, v0}, Lcn/kuwo/base/imageloader/AsyncImageLoader$2$1;-><init>(Lcn/kuwo/base/imageloader/AsyncImageLoader$2;Ljava/lang/Object;Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method
