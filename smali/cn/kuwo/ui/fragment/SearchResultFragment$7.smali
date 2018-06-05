.class Lcn/kuwo/ui/fragment/SearchResultFragment$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/SearchResultFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/SearchResultFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/SearchResultFragment$7;->this$0:Lcn/kuwo/ui/fragment/SearchResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchResultFragment$7;->this$0:Lcn/kuwo/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/SearchResultFragment;->access$200(Lcn/kuwo/ui/fragment/SearchResultFragment;)Z

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchResultFragment$7;->this$0:Lcn/kuwo/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/SearchResultFragment;->access$300(Lcn/kuwo/ui/fragment/SearchResultFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->back()Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b003b -> :sswitch_2
        0x7f0b006b -> :sswitch_2
        0x7f0b006d -> :sswitch_0
        0x7f0b0090 -> :sswitch_1
    .end sparse-switch
.end method
