.class Lcn/kuwo/ui/fragment/MineFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/MineFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/MineFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/MineFragment$1;->this$0:Lcn/kuwo/ui/fragment/MineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcn/kuwo/ui/adapter/BaseKuwoAdapter;I)V
    .locals 6

    const/4 v1, 0x1

    check-cast p1, Lcn/kuwo/ui/adapter/KuwoLocalAdapter;

    invoke-virtual {p1, p2}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter;->getItem(I)Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {v0}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->getMusicList()Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/ui/JumpUtils;->jump(Lcn/kuwo/base/bean/MusicList;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcn/kuwo/mod/userinfo/UserInfoHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MineFragment$1;->this$0:Lcn/kuwo/ui/fragment/MineFragment;

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u9177\u6211\u63d0\u793a"

    const-string v2, "\u662f\u5426\u786e\u5b9a\u9000\u51fa\u767b\u5f55\uff1f"

    const-string v3, "\u786e\u5b9a"

    const-string v4, "\u53d6\u6d88"

    new-instance v5, Lcn/kuwo/ui/fragment/MineFragment$1$1;

    invoke-direct {v5, p0}, Lcn/kuwo/ui/fragment/MineFragment$1$1;-><init>(Lcn/kuwo/ui/fragment/MineFragment$1;)V

    invoke-static/range {v0 .. v5}, Lcn/kuwo/ui/dialog/DialogUtils;->showSimpleDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MineFragment$1;->this$0:Lcn/kuwo/ui/fragment/MineFragment;

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/ui/dialog/DialogUtils;->showLoginDialog(Landroid/content/Context;)Landroid/app/Dialog;

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xa

    invoke-static {v0}, Lcn/kuwo/ui/JumpUtils;->jump(I)V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcn/kuwo/mod/upgrade/UpgradeManager;->b()Z

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MineFragment$1;->this$0:Lcn/kuwo/ui/fragment/MineFragment;

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6e05\u9664\u7f13\u5b58"

    const-string v2, "\u6b64\u64cd\u4f5c\u60a8\u5c06\u4f1a\u6e05\u7a7a\u641c\u7d22\u5386\u53f2\uff0c\u6b4c\u8bcd\u7f13\u5b58\uff0c\u56fe\u7247\u7f13\u5b58\uff0c\u8bd5\u542c\u7f13\u5b58\uff01"

    const-string v3, "\u6e05\u9664"

    const-string v4, "\u53d6\u6d88"

    new-instance v5, Lcn/kuwo/ui/fragment/MineFragment$1$2;

    invoke-direct {v5, p0}, Lcn/kuwo/ui/fragment/MineFragment$1$2;-><init>(Lcn/kuwo/ui/fragment/MineFragment$1;)V

    invoke-static/range {v0 .. v5}, Lcn/kuwo/ui/dialog/DialogUtils;->showSimpleDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    goto :goto_0

    :pswitch_6
    const-string v0, ""

    const-string v2, "download_when_play_setting_enable"

    invoke-static {v0, v2, v1}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v2, "\u8fb9\u542c\u8fb9\u5b58\u5df2\u6253\u5f00\uff0c\u5c06\u4f1a\u81ea\u52a8\u4fdd\u5b58\u5728\u7ebf\u64ad\u653e\u7684\u6b4c\u66f2\uff08\u4e0d\u5305\u62ec\u7535\u53f0\uff09"

    invoke-static {v2}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    :cond_1
    const-string v2, ""

    const-string v3, "download_when_play_setting_enable"

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v2, v3, v0, v1}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MineFragment$1;->this$0:Lcn/kuwo/ui/fragment/MineFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MineFragment;->access$000(Lcn/kuwo/ui/fragment/MineFragment;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_7
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MineFragment$1;->this$0:Lcn/kuwo/ui/fragment/MineFragment;

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/ui/dialog/DialogUtils;->showDownloadQualitySelectDialog(Landroid/content/Context;)Landroid/app/Dialog;

    goto :goto_0

    :pswitch_8
    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->exitApp()V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MineFragment$1;->this$0:Lcn/kuwo/ui/fragment/MineFragment;

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/ui/dialog/DialogUtils;->showListenQualitySelectDialog(Landroid/content/Context;)Landroid/app/Dialog;

    goto/16 :goto_0

    :pswitch_a
    const/16 v0, 0xc

    invoke-static {v0}, Lcn/kuwo/ui/JumpUtils;->jump(I)V

    goto/16 :goto_0

    :pswitch_b
    const/16 v0, 0xb

    invoke-static {v0}, Lcn/kuwo/ui/JumpUtils;->jump(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method
