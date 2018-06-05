.class Lcn/kuwo/ui/fragment/OnlineRootFragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/OnlineRootFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/OnlineRootFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment$3;->this$0:Lcn/kuwo/ui/fragment/OnlineRootFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment$3;->this$0:Lcn/kuwo/ui/fragment/OnlineRootFragment;

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/OnlineRootFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->moveTaskToBack(Z)Z

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x4

    invoke-static {v0}, Lcn/kuwo/ui/JumpUtils;->jump(I)V

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x5

    invoke-static {v0}, Lcn/kuwo/ui/JumpUtils;->jump(I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment$3;->this$0:Lcn/kuwo/ui/fragment/OnlineRootFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/OnlineRootFragment;->access$100(Lcn/kuwo/ui/fragment/OnlineRootFragment;)I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-static {v3}, Lcn/kuwo/ui/JumpUtils;->jump(I)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment$3;->this$0:Lcn/kuwo/ui/fragment/OnlineRootFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/OnlineRootFragment;->access$100(Lcn/kuwo/ui/fragment/OnlineRootFragment;)I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-static {v2}, Lcn/kuwo/ui/JumpUtils;->jump(I)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment$3;->this$0:Lcn/kuwo/ui/fragment/OnlineRootFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/OnlineRootFragment;->access$100(Lcn/kuwo/ui/fragment/OnlineRootFragment;)I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-static {v1}, Lcn/kuwo/ui/JumpUtils;->jump(I)V

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
