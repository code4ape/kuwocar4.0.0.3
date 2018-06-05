.class final Lcn/kuwo/base/util/MusicListUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$compeleteListener:Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;

.field final synthetic val$music:Lcn/kuwo/base/bean/Music;

.field final synthetic val$quality:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/kuwo/base/bean/Music;Ljava/lang/String;Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/util/MusicListUtils$1;->val$music:Lcn/kuwo/base/bean/Music;

    iput-object p2, p0, Lcn/kuwo/base/util/MusicListUtils$1;->val$quality:Ljava/lang/String;

    iput-object p3, p0, Lcn/kuwo/base/util/MusicListUtils$1;->val$compeleteListener:Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    packed-switch p2, :pswitch_data_0

    iget-object v0, p0, Lcn/kuwo/base/util/MusicListUtils$1;->val$compeleteListener:Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/util/MusicListUtils$1;->val$compeleteListener:Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;

    invoke-interface {v0}, Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;->onOperationCancel()V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->o()Lcn/kuwo/mod/mvdown/IMVDownloadMgr;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/util/MusicListUtils$1;->val$music:Lcn/kuwo/base/bean/Music;

    iget-object v2, p0, Lcn/kuwo/base/util/MusicListUtils$1;->val$quality:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcn/kuwo/mod/mvdown/IMVDownloadMgr;->a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;)Z

    iget-object v0, p0, Lcn/kuwo/base/util/MusicListUtils$1;->val$compeleteListener:Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/util/MusicListUtils$1;->val$compeleteListener:Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;

    invoke-interface {v0}, Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;->onOperationCompelete()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
