.class Lcn/kuwo/ui/fragment/SearchResultFragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/SearchResultFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/SearchResultFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/SearchResultFragment$3;->this$0:Lcn/kuwo/ui/fragment/SearchResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    invoke-static {p1}, Lcn/kuwo/base/util/KeyBoardUtils;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method
