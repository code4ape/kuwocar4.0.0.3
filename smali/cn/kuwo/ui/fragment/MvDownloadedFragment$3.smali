.class Lcn/kuwo/ui/fragment/MvDownloadedFragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/ui/adapter/LocalMvAdapter$OnItemDeleteClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/MvDownloadedFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/MvDownloadedFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/MvDownloadedFragment$3;->this$0:Lcn/kuwo/ui/fragment/MvDownloadedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcn/kuwo/ui/adapter/LocalMvAdapter;I)V
    .locals 4

    invoke-virtual {p1, p2}, Lcn/kuwo/ui/adapter/LocalMvAdapter;->getItem(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v1

    sget-object v2, Lcn/kuwo/base/bean/ListType;->s:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvDownloadedFragment$3;->this$0:Lcn/kuwo/ui/fragment/MvDownloadedFragment;

    invoke-virtual {v1}, Lcn/kuwo/ui/fragment/MvDownloadedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcn/kuwo/base/bean/Music;->i:Ljava/lang/String;

    new-instance v3, Lcn/kuwo/ui/fragment/MvDownloadedFragment$3$1;

    invoke-direct {v3, p0}, Lcn/kuwo/ui/fragment/MvDownloadedFragment$3$1;-><init>(Lcn/kuwo/ui/fragment/MvDownloadedFragment$3;)V

    invoke-static {v1, v0, v2, v3}, Lcn/kuwo/base/util/MusicListUtils;->deleteMv(Landroid/content/Context;Lcn/kuwo/base/bean/Music;Ljava/lang/String;Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;)V

    return-void
.end method
