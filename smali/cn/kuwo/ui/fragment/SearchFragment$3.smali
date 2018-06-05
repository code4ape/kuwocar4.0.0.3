.class Lcn/kuwo/ui/fragment/SearchFragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/SearchFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/SearchFragment$3;->this$0:Lcn/kuwo/ui/fragment/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchFragment$3;->this$0:Lcn/kuwo/ui/fragment/SearchFragment;

    invoke-static {v1}, Lcn/kuwo/ui/fragment/SearchFragment;->access$100(Lcn/kuwo/ui/fragment/SearchFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcn/kuwo/base/util/KeyBoardUtils;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
