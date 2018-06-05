.class Lcn/kuwo/ui/fragment/DownloadManageFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/DownloadManageFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/DownloadManageFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment$1;->this$0:Lcn/kuwo/ui/fragment/DownloadManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcn/kuwo/ui/adapter/BaseKuwoAdapter;I)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment$1;->this$0:Lcn/kuwo/ui/fragment/DownloadManageFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/DownloadManageFragment;->access$000(Lcn/kuwo/ui/fragment/DownloadManageFragment;)Lcn/kuwo/ui/adapter/TextTitleAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/kuwo/ui/adapter/TextTitleAdapter;->setCurrentIndex(I)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment$1;->this$0:Lcn/kuwo/ui/fragment/DownloadManageFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/DownloadManageFragment;->access$100(Lcn/kuwo/ui/fragment/DownloadManageFragment;)V

    return-void
.end method
