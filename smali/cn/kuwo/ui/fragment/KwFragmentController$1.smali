.class Lcn/kuwo/ui/fragment/KwFragmentController$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/KwFragmentController;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/KwFragmentController;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/KwFragmentController$1;->this$0:Lcn/kuwo/ui/fragment/KwFragmentController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 4

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "backStackChanged"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController$1;->this$0:Lcn/kuwo/ui/fragment/KwFragmentController;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->access$100(Lcn/kuwo/ui/fragment/KwFragmentController;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController$1;->this$0:Lcn/kuwo/ui/fragment/KwFragmentController;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->access$100(Lcn/kuwo/ui/fragment/KwFragmentController;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v1, p0, Lcn/kuwo/ui/fragment/KwFragmentController$1;->this$0:Lcn/kuwo/ui/fragment/KwFragmentController;

    invoke-static {v1}, Lcn/kuwo/ui/fragment/KwFragmentController;->access$100(Lcn/kuwo/ui/fragment/KwFragmentController;)Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastOne:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "empty stack"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
