.class Lcn/kuwo/base/image/ImageTask$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/base/image/processing/ImageProcessing$IProcessingNotify;


# instance fields
.field final synthetic a:Lcn/kuwo/base/image/ImageTask;


# direct methods
.method constructor <init>(Lcn/kuwo/base/image/ImageTask;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/image/ImageTask$2;->a:Lcn/kuwo/base/image/ImageTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/base/image/ImageTask$2$1;

    invoke-direct {v1, p0, p1}, Lcn/kuwo/base/image/ImageTask$2$1;-><init>(Lcn/kuwo/base/image/ImageTask$2;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method
