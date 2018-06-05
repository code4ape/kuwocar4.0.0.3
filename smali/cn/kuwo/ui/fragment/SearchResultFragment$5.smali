.class Lcn/kuwo/ui/fragment/SearchResultFragment$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/SearchResultFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/SearchResultFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/SearchResultFragment$5;->this$0:Lcn/kuwo/ui/fragment/SearchResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchResultFragment$5;->this$0:Lcn/kuwo/ui/fragment/SearchResultFragment;

    invoke-static {v1}, Lcn/kuwo/ui/fragment/SearchResultFragment;->access$200(Lcn/kuwo/ui/fragment/SearchResultFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
