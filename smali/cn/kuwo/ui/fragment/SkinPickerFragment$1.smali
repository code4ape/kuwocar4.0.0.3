.class Lcn/kuwo/ui/fragment/SkinPickerFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/SkinPickerFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/SkinPickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/SkinPickerFragment$1;->this$0:Lcn/kuwo/ui/fragment/SkinPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcn/kuwo/ui/adapter/BaseKuwoAdapter;I)V
    .locals 5

    check-cast p1, Lcn/kuwo/ui/adapter/SkinPickerAdapter;

    invoke-virtual {p1, p2}, Lcn/kuwo/ui/adapter/SkinPickerAdapter;->getItem(I)Lcn/kuwo/mod/skin/SkinPack;

    move-result-object v1

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skin:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcn/kuwo/mod/skin/SkinPack;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcn/kuwo/ui/fragment/SkinDetailFragment;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcn/kuwo/ui/fragment/KwFragmentController;->showFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    move-result-object v0

    check-cast v0, Lcn/kuwo/ui/fragment/SkinDetailFragment;

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/fragment/SkinDetailFragment;->setSkinPack(Lcn/kuwo/mod/skin/SkinPack;)V

    return-void
.end method
