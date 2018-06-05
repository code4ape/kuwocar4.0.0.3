.class Lcn/kuwo/ui/fragment/SoundEffectSettingFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/core/observers/IConfigMgrObserver;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment$2;->this$0:Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IConfigMgrObserver_ItemChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_sound_effect"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment$2;->this$0:Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->access$000(Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;)Lcn/kuwo/ui/adapter/SoundEffectAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->update()V

    :cond_0
    return-void
.end method

.method public IConfigMgrObserver_RealTimeSave()V
    .locals 0

    return-void
.end method

.method public IConfigMgrObserver_UpdateFinish(Z)V
    .locals 0

    return-void
.end method
