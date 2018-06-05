.class Lcn/kuwo/ui/fragment/MvFragment$10$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcn/kuwo/ui/fragment/MvFragment$10;

.field final synthetic val$tempDownloadTask:Lcn/kuwo/base/bean/DownloadTask;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/MvFragment$10;Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/MvFragment$10$2;->this$1:Lcn/kuwo/ui/fragment/MvFragment$10;

    iput-object p2, p0, Lcn/kuwo/ui/fragment/MvFragment$10$2;->val$tempDownloadTask:Lcn/kuwo/base/bean/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->o()Lcn/kuwo/mod/mvdown/IMVDownloadMgr;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment$10$2;->val$tempDownloadTask:Lcn/kuwo/base/bean/DownloadTask;

    invoke-interface {v0, v1}, Lcn/kuwo/mod/mvdown/IMVDownloadMgr;->c(Lcn/kuwo/base/bean/DownloadTask;)Z

    :cond_0
    return-void
.end method
