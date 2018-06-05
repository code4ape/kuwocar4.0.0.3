.class Lcn/kuwo/ui/fragment/SoundEffectSettingFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment$1;->this$0:Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcn/kuwo/ui/adapter/BaseKuwoAdapter;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, -0x1

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment$1;->this$0:Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;

    invoke-static {v1}, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->access$000(Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;)Lcn/kuwo/ui/adapter/SoundEffectAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->getItem(I)Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;

    move-result-object v1

    const-string v2, "appconfig"

    const-string v3, "key_sound_effect"

    invoke-static {v2, v3, v0}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1}, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;->getId()I

    move-result v3

    if-ne v3, v2, :cond_0

    iget-object v2, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment$1;->this$0:Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;

    invoke-virtual {v1}, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;->getId()I

    move-result v1

    invoke-static {v2, v1, v4}, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->access$100(Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;IZ)V

    :goto_0
    const-string v1, "appconfig"

    const-string v2, "key_sound_effect"

    invoke-static {v1, v2, v0, v4}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;IZ)Z

    return-void

    :cond_0
    invoke-virtual {v1}, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;->getId()I

    move-result v0

    iget-object v2, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment$1;->this$0:Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;

    invoke-virtual {v1}, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;->getId()I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->access$100(Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;IZ)V

    goto :goto_0
.end method
