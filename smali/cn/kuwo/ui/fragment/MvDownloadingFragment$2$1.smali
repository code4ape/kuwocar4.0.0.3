.class Lcn/kuwo/ui/fragment/MvDownloadingFragment$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcn/kuwo/ui/fragment/MvDownloadingFragment$2;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/MvDownloadingFragment$2;I)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/MvDownloadingFragment$2$1;->this$1:Lcn/kuwo/ui/fragment/MvDownloadingFragment$2;

    iput p2, p0, Lcn/kuwo/ui/fragment/MvDownloadingFragment$2$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcn/kuwo/ui/fragment/MvDownloadingFragment$2$1;->val$pos:I

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvDownloadingFragment$2$1;->this$1:Lcn/kuwo/ui/fragment/MvDownloadingFragment$2;

    iget-object v1, v1, Lcn/kuwo/ui/fragment/MvDownloadingFragment$2;->this$0:Lcn/kuwo/ui/fragment/MvDownloadingFragment;

    invoke-static {v1}, Lcn/kuwo/ui/fragment/MvDownloadingFragment;->access$000(Lcn/kuwo/ui/fragment/MvDownloadingFragment;)Lcn/kuwo/ui/adapter/MvDownloadingAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvDownloadingFragment$2$1;->this$1:Lcn/kuwo/ui/fragment/MvDownloadingFragment$2;

    iget-object v0, v0, Lcn/kuwo/ui/fragment/MvDownloadingFragment$2;->this$0:Lcn/kuwo/ui/fragment/MvDownloadingFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MvDownloadingFragment;->access$000(Lcn/kuwo/ui/fragment/MvDownloadingFragment;)Lcn/kuwo/ui/adapter/MvDownloadingAdapter;

    move-result-object v0

    iget v1, p0, Lcn/kuwo/ui/fragment/MvDownloadingFragment$2$1;->val$pos:I

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;->getItem(I)Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->o()Lcn/kuwo/mod/mvdown/IMVDownloadMgr;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/kuwo/mod/mvdown/IMVDownloadMgr;->c(Lcn/kuwo/base/bean/DownloadTask;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
