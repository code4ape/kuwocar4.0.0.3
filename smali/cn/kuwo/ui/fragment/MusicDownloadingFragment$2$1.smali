.class Lcn/kuwo/ui/fragment/MusicDownloadingFragment$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcn/kuwo/ui/fragment/MusicDownloadingFragment$2;

.field final synthetic val$adapter:Lcn/kuwo/ui/adapter/MusicDownloadingAdapter;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/MusicDownloadingFragment$2;ILcn/kuwo/ui/adapter/MusicDownloadingAdapter;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/MusicDownloadingFragment$2$1;->this$1:Lcn/kuwo/ui/fragment/MusicDownloadingFragment$2;

    iput p2, p0, Lcn/kuwo/ui/fragment/MusicDownloadingFragment$2$1;->val$pos:I

    iput-object p3, p0, Lcn/kuwo/ui/fragment/MusicDownloadingFragment$2$1;->val$adapter:Lcn/kuwo/ui/adapter/MusicDownloadingAdapter;

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
    iget v0, p0, Lcn/kuwo/ui/fragment/MusicDownloadingFragment$2$1;->val$pos:I

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MusicDownloadingFragment$2$1;->val$adapter:Lcn/kuwo/ui/adapter/MusicDownloadingAdapter;

    invoke-virtual {v1}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MusicDownloadingFragment$2$1;->val$adapter:Lcn/kuwo/ui/adapter/MusicDownloadingAdapter;

    iget v1, p0, Lcn/kuwo/ui/fragment/MusicDownloadingFragment$2$1;->val$pos:I

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter;->getItem(I)Lcn/kuwo/base/bean/DownloadTask;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->f()Lcn/kuwo/mod/download/IDownloadMgr;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/kuwo/mod/download/IDownloadMgr;->a(Lcn/kuwo/base/bean/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MusicDownloadingFragment$2$1;->val$adapter:Lcn/kuwo/ui/adapter/MusicDownloadingAdapter;

    invoke-virtual {v0}, Lcn/kuwo/ui/adapter/MusicDownloadingAdapter;->notifyDataSetChanged()V

    const-string v0, "\u5df2\u5220\u9664"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->show(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "\u5220\u9664\u5931\u8d25"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->show(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
