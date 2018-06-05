.class Lcn/kuwo/ui/fragment/SkinDetailFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/SkinDetailFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/SkinDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/SkinDetailFragment$1;->this$0:Lcn/kuwo/ui/fragment/SkinDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->back()Z

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SkinDetailFragment$1;->this$0:Lcn/kuwo/ui/fragment/SkinDetailFragment;

    invoke-static {v1}, Lcn/kuwo/ui/fragment/SkinDetailFragment;->access$000(Lcn/kuwo/ui/fragment/SkinDetailFragment;)Lcn/kuwo/mod/skin/SkinPack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/skin/SkinMgr;->a(Lcn/kuwo/mod/skin/SkinPack;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5df2\u8bbe\u7f6e\u76ae\u80a4<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SkinDetailFragment$1;->this$0:Lcn/kuwo/ui/fragment/SkinDetailFragment;

    invoke-static {v1}, Lcn/kuwo/ui/fragment/SkinDetailFragment;->access$000(Lcn/kuwo/ui/fragment/SkinDetailFragment;)Lcn/kuwo/mod/skin/SkinPack;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/mod/skin/SkinPack;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->show(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0b003b -> :sswitch_0
        0x7f0b006b -> :sswitch_0
        0x7f0b0091 -> :sswitch_1
    .end sparse-switch
.end method
