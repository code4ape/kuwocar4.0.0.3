.class Lcn/kuwo/ui/fragment/SearchResultFragment$6;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/SearchResultFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/SearchResultFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/SearchResultFragment$6;->this$0:Lcn/kuwo/ui/fragment/SearchResultFragment;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchResultFragment$6;->this$0:Lcn/kuwo/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/SearchResultFragment;->access$300(Lcn/kuwo/ui/fragment/SearchResultFragment;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchResultFragment$6;->this$0:Lcn/kuwo/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/SearchResultFragment;->access$300(Lcn/kuwo/ui/fragment/SearchResultFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    :cond_0
    return-void
.end method
