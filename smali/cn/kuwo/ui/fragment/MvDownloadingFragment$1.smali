.class Lcn/kuwo/ui/fragment/MvDownloadingFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/MvDownloadingFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/MvDownloadingFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/MvDownloadingFragment$1;->this$0:Lcn/kuwo/ui/fragment/MvDownloadingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcn/kuwo/ui/adapter/BaseKuwoAdapter;I)V
    .locals 3

    check-cast p1, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;

    invoke-virtual {p1, p2}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;->getItem(I)Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    iget-object v1, v0, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    sget-object v2, Lcn/kuwo/mod/download/DownloadState;->d:Lcn/kuwo/mod/download/DownloadState;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcn/kuwo/base/bean/DownloadTask;->c:Lcn/kuwo/mod/download/DownloadState;

    sget-object v2, Lcn/kuwo/mod/download/DownloadState;->f:Lcn/kuwo/mod/download/DownloadState;

    if-ne v1, v2, :cond_2

    :cond_0
    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "\u6ca1\u6709\u7f51\u7edc\u65e0\u6cd5\u64cd\u4f5c"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->o()Lcn/kuwo/mod/mvdown/IMVDownloadMgr;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/kuwo/mod/mvdown/IMVDownloadMgr;->a(Lcn/kuwo/base/bean/DownloadTask;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->o()Lcn/kuwo/mod/mvdown/IMVDownloadMgr;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/kuwo/mod/mvdown/IMVDownloadMgr;->b(Lcn/kuwo/base/bean/DownloadTask;)Z

    goto :goto_0
.end method
