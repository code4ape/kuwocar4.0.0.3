.class Lcn/kuwo/ui/fragment/MvDownloadingFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/ui/adapter/MvDownloadingAdapter$OnItemDeleteClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/MvDownloadingFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/MvDownloadingFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/MvDownloadingFragment$2;->this$0:Lcn/kuwo/ui/fragment/MvDownloadingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcn/kuwo/ui/adapter/MvDownloadingAdapter;I)V
    .locals 6

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvDownloadingFragment$2;->this$0:Lcn/kuwo/ui/fragment/MvDownloadingFragment;

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/MvDownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u9177\u6211\u63d0\u793a"

    const-string v2, "\u662f\u5426\u7ed3\u675fMV\u4e0b\u8f7d?"

    const-string v3, "\u7ed3\u675f"

    const-string v4, "\u53d6\u6d88"

    new-instance v5, Lcn/kuwo/ui/fragment/MvDownloadingFragment$2$1;

    invoke-direct {v5, p0, p2}, Lcn/kuwo/ui/fragment/MvDownloadingFragment$2$1;-><init>(Lcn/kuwo/ui/fragment/MvDownloadingFragment$2;I)V

    invoke-static/range {v0 .. v5}, Lcn/kuwo/ui/dialog/DialogUtils;->showSimpleDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    return-void
.end method
