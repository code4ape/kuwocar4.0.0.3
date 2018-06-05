.class Lcn/kuwo/ui/fragment/BaseLocalRootFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/BaseLocalRootFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/BaseLocalRootFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/BaseLocalRootFragment$1;->this$0:Lcn/kuwo/ui/fragment/BaseLocalRootFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseLocalRootFragment$1;->this$0:Lcn/kuwo/ui/fragment/BaseLocalRootFragment;

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/BaseLocalRootFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->moveTaskToBack(Z)Z

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseLocalRootFragment$1;->this$0:Lcn/kuwo/ui/fragment/BaseLocalRootFragment;

    instance-of v0, v0, Lcn/kuwo/ui/fragment/LocalFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-static {v0}, Lcn/kuwo/ui/JumpUtils;->jump(I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcn/kuwo/ui/fragment/BaseLocalRootFragment$1;->this$0:Lcn/kuwo/ui/fragment/BaseLocalRootFragment;

    instance-of v0, v0, Lcn/kuwo/ui/fragment/MineFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Lcn/kuwo/ui/JumpUtils;->jump(I)V

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x3

    invoke-static {v0}, Lcn/kuwo/ui/JumpUtils;->jump(I)V

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x2

    invoke-static {v0}, Lcn/kuwo/ui/JumpUtils;->jump(I)V

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x1

    invoke-static {v0}, Lcn/kuwo/ui/JumpUtils;->jump(I)V

    goto :goto_0

    :sswitch_6
    invoke-static {}, Lcn/kuwo/ui/JumpUtils;->jumpToSearch()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0b006d -> :sswitch_6
        0x7f0b0074 -> :sswitch_0
        0x7f0b0079 -> :sswitch_5
        0x7f0b007c -> :sswitch_4
        0x7f0b007f -> :sswitch_3
        0x7f0b0082 -> :sswitch_1
        0x7f0b0085 -> :sswitch_2
    .end sparse-switch
.end method
