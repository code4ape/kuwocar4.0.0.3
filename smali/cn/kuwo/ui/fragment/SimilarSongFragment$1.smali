.class Lcn/kuwo/ui/fragment/SimilarSongFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/SimilarSongFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/SimilarSongFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/SimilarSongFragment$1;->this$0:Lcn/kuwo/ui/fragment/SimilarSongFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->back()Z

    const/4 v0, 0x6

    invoke-static {v0}, Lcn/kuwo/ui/JumpUtils;->jump(I)V

    return-void
.end method
