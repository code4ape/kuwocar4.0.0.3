.class Lcn/kuwo/ui/fragment/MineFragment$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcn/kuwo/ui/fragment/MineFragment$1;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/MineFragment$1;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/MineFragment$1$1;->this$1:Lcn/kuwo/ui/fragment/MineFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-static {}, Lcn/kuwo/mod/userinfo/UserInfoHelper;->b()V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MineFragment$1$1;->this$1:Lcn/kuwo/ui/fragment/MineFragment$1;

    iget-object v0, v0, Lcn/kuwo/ui/fragment/MineFragment$1;->this$0:Lcn/kuwo/ui/fragment/MineFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MineFragment;->access$000(Lcn/kuwo/ui/fragment/MineFragment;)V

    return-void
.end method
