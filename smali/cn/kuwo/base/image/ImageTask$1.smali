.class Lcn/kuwo/base/image/ImageTask$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/base/image/ImageTask;


# direct methods
.method constructor <init>(Lcn/kuwo/base/image/ImageTask;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/image/ImageTask$1;->a:Lcn/kuwo/base/image/ImageTask;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/base/image/ImageTask$1;->a:Lcn/kuwo/base/image/ImageTask;

    invoke-static {v0}, Lcn/kuwo/base/image/ImageTask;->c(Lcn/kuwo/base/image/ImageTask;)Lcn/kuwo/base/image/OnImageLoaderListener;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/image/ImageTask$1;->a:Lcn/kuwo/base/image/ImageTask;

    invoke-static {v1}, Lcn/kuwo/base/image/ImageTask;->a(Lcn/kuwo/base/image/ImageTask;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/base/image/ImageTask$1;->a:Lcn/kuwo/base/image/ImageTask;

    invoke-static {v2}, Lcn/kuwo/base/image/ImageTask;->b(Lcn/kuwo/base/image/ImageTask;)Lcn/kuwo/base/image/ImageViewAware;

    move-result-object v2

    invoke-virtual {v2}, Lcn/kuwo/base/image/ImageViewAware;->a()Landroid/widget/ImageView;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/kuwo/base/image/OnImageLoaderListener;->onImageLoading(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method
