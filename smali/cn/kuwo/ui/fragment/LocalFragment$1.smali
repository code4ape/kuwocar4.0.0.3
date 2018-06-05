.class Lcn/kuwo/ui/fragment/LocalFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/LocalFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/LocalFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/LocalFragment$1;->this$0:Lcn/kuwo/ui/fragment/LocalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcn/kuwo/ui/adapter/BaseKuwoAdapter;I)V
    .locals 2

    check-cast p1, Lcn/kuwo/ui/adapter/KuwoLocalAdapter;

    invoke-virtual {p1, p2}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter;->getItem(I)Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {v0}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->getMusicList()Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/ui/JumpUtils;->jump(Lcn/kuwo/base/bean/MusicList;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalFragment$1;->this$0:Lcn/kuwo/ui/fragment/LocalFragment;

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/LocalFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/ui/dialog/DialogUtils;->showLoginDialog(Landroid/content/Context;)Landroid/app/Dialog;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method
