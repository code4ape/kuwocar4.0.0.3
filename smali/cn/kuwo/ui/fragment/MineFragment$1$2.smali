.class Lcn/kuwo/ui/fragment/MineFragment$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcn/kuwo/ui/fragment/MineFragment$1;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/MineFragment$1;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/MineFragment$1$2;->this$1:Lcn/kuwo/ui/fragment/MineFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "\u6b63\u5728\u6e05\u9664"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/base/util/KwThreadPool$JobType;->IMMEDIATELY:Lcn/kuwo/base/util/KwThreadPool$JobType;

    new-instance v1, Lcn/kuwo/ui/fragment/MineFragment$1$2$1;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/MineFragment$1$2$1;-><init>(Lcn/kuwo/ui/fragment/MineFragment$1$2;)V

    invoke-static {v0, v1}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
