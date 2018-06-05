.class abstract Lcn/kuwo/base/imageloader/AsyncImageLoader$MyRunner;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Landroid/view/View;

.field public d:Landroid/graphics/Bitmap;

.field final synthetic e:Lcn/kuwo/base/imageloader/AsyncImageLoader;


# direct methods
.method public constructor <init>(Lcn/kuwo/base/imageloader/AsyncImageLoader;Ljava/lang/Object;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcn/kuwo/base/imageloader/AsyncImageLoader$MyRunner;->e:Lcn/kuwo/base/imageloader/AsyncImageLoader;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/imageloader/AsyncImageLoader$MyRunner;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcn/kuwo/base/imageloader/AsyncImageLoader$MyRunner;->c:Landroid/view/View;

    iput-object v0, p0, Lcn/kuwo/base/imageloader/AsyncImageLoader$MyRunner;->d:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcn/kuwo/base/imageloader/AsyncImageLoader$MyRunner;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcn/kuwo/base/imageloader/AsyncImageLoader$MyRunner;->c:Landroid/view/View;

    iput-object p4, p0, Lcn/kuwo/base/imageloader/AsyncImageLoader$MyRunner;->d:Landroid/graphics/Bitmap;

    return-void
.end method
