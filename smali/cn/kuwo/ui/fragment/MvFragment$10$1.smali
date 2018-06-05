.class Lcn/kuwo/ui/fragment/MvFragment$10$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcn/kuwo/ui/fragment/MvFragment$10;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/MvFragment$10;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/MvFragment$10$1;->this$1:Lcn/kuwo/ui/fragment/MvFragment$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->o()Lcn/kuwo/mod/mvdown/IMVDownloadMgr;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment$10$1;->this$1:Lcn/kuwo/ui/fragment/MvFragment$10;

    iget-object v1, v1, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v1}, Lcn/kuwo/ui/fragment/MvFragment;->access$200(Lcn/kuwo/ui/fragment/MvFragment;)Lcn/kuwo/base/bean/Music;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/ui/fragment/MvFragment$10$1;->this$1:Lcn/kuwo/ui/fragment/MvFragment$10;

    iget-object v2, v2, Lcn/kuwo/ui/fragment/MvFragment$10;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v2}, Lcn/kuwo/ui/fragment/MvFragment;->access$1800(Lcn/kuwo/ui/fragment/MvFragment;)Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    move-result-object v2

    invoke-virtual {v2}, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/kuwo/mod/mvdown/IMVDownloadMgr;->a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
