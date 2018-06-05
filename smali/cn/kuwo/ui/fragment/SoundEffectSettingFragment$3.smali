.class Lcn/kuwo/ui/fragment/SoundEffectSettingFragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment$3;->this$0:Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->back()Z

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment$3;->this$0:Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->access$200(Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    invoke-static {v0}, Lcn/kuwo/ui/JumpUtils;->jump(I)V

    :cond_0
    return-void
.end method
