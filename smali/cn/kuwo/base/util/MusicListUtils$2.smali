.class final Lcn/kuwo/base/util/MusicListUtils$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$compeleteListener:Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;

.field final synthetic val$musicList:Lcn/kuwo/base/bean/MusicList;


# direct methods
.method constructor <init>(Lcn/kuwo/base/bean/MusicList;Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/util/MusicListUtils$2;->val$musicList:Lcn/kuwo/base/bean/MusicList;

    iput-object p2, p0, Lcn/kuwo/base/util/MusicListUtils$2;->val$compeleteListener:Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/base/util/MusicListUtils$2;->val$musicList:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/util/MusicListUtils$2;->val$musicList:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/base/util/MusicListUtils$2;->val$musicList:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    packed-switch p2, :pswitch_data_0

    iget-object v0, p0, Lcn/kuwo/base/util/MusicListUtils$2;->val$compeleteListener:Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/util/MusicListUtils$2;->val$compeleteListener:Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;

    invoke-interface {v0}, Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;->onOperationCancel()V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {v1}, Lcn/kuwo/mod/list/ListHelp;->a(Lcn/kuwo/base/bean/ListType;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->g()Lcn/kuwo/mod/localmgr/ILocalMgr;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/util/MusicListUtils$2;->val$musicList:Lcn/kuwo/base/bean/MusicList;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcn/kuwo/mod/localmgr/ILocalMgr;->a(Lcn/kuwo/base/bean/MusicList;Ljava/util/List;Z)Z

    :goto_1
    iget-object v0, p0, Lcn/kuwo/base/util/MusicListUtils$2;->val$compeleteListener:Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/util/MusicListUtils$2;->val$compeleteListener:Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;

    invoke-interface {v0}, Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;->onOperationCompelete()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Lcn/kuwo/mod/list/IListMgr;->b(Ljava/lang/String;Ljava/util/List;)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
