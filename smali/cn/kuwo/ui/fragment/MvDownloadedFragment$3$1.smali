.class Lcn/kuwo/ui/fragment/MvDownloadedFragment$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;


# instance fields
.field final synthetic this$1:Lcn/kuwo/ui/fragment/MvDownloadedFragment$3;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/MvDownloadedFragment$3;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/MvDownloadedFragment$3$1;->this$1:Lcn/kuwo/ui/fragment/MvDownloadedFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOperationCancel()V
    .locals 0

    return-void
.end method

.method public onOperationCompelete()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvDownloadedFragment$3$1;->this$1:Lcn/kuwo/ui/fragment/MvDownloadedFragment$3;

    iget-object v0, v0, Lcn/kuwo/ui/fragment/MvDownloadedFragment$3;->this$0:Lcn/kuwo/ui/fragment/MvDownloadedFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MvDownloadedFragment;->access$000(Lcn/kuwo/ui/fragment/MvDownloadedFragment;)V

    return-void
.end method
