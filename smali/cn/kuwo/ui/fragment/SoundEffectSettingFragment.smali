.class public Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;
.super Lcn/kuwo/ui/fragment/BaseKuwoFragment;


# instance fields
.field private configMgrObserver:Lcn/kuwo/core/observers/IConfigMgrObserver;

.field private isFromNowplaying:Z

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private rvContent:Landroid/support/v7/widget/RecyclerView;

.field private soundEffectAdapter:Lcn/kuwo/ui/adapter/SoundEffectAdapter;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;-><init>()V

    iput-object v1, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->isFromNowplaying:Z

    iput-object v1, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->soundEffectAdapter:Lcn/kuwo/ui/adapter/SoundEffectAdapter;

    new-instance v0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment$2;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment$2;-><init>(Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->configMgrObserver:Lcn/kuwo/core/observers/IConfigMgrObserver;

    new-instance v0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment$3;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment$3;-><init>(Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->onClickListener:Landroid/view/View$OnClickListener;

    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->setLayoutTopId(I)V

    const v0, 0x7f040025

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->setLayoutContentId(I)V

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;)Lcn/kuwo/ui/adapter/SoundEffectAdapter;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->soundEffectAdapter:Lcn/kuwo/ui/adapter/SoundEffectAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->setEffect(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->isFromNowplaying:Z

    return v0
.end method

.method private setEffect(IZ)V
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->p()Lcn/kuwo/mod/audioeffect/IAudioEffectMgr;

    move-result-object v1

    if-eqz p2, :cond_0

    :goto_1
    invoke-interface {v1, v0}, Lcn/kuwo/mod/audioeffect/IAudioEffectMgr;->a(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->p()Lcn/kuwo/mod/audioeffect/IAudioEffectMgr;

    move-result-object v1

    if-eqz p2, :cond_1

    :goto_2
    invoke-interface {v1, v0}, Lcn/kuwo/mod/audioeffect/IAudioEffectMgr;->a(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_2

    :pswitch_2
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->p()Lcn/kuwo/mod/audioeffect/IAudioEffectMgr;

    move-result-object v1

    if-eqz p2, :cond_2

    :goto_3
    invoke-interface {v1, v0}, Lcn/kuwo/mod/audioeffect/IAudioEffectMgr;->a(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_3

    :pswitch_3
    sget-boolean v1, Lcn/kuwo/base/util/DeviceUtils;->IS_NEON_SUPPORT:Z

    if-nez v1, :cond_3

    const-string v0, "\u60a8\u7684\u624b\u673a\u4e0d\u652f\u6301\u6b64\u529f\u80fd"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->p()Lcn/kuwo/mod/audioeffect/IAudioEffectMgr;

    move-result-object v1

    if-eqz p2, :cond_4

    :goto_4
    invoke-interface {v1, v0}, Lcn/kuwo/mod/audioeffect/IAudioEffectMgr;->a(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onDestroy()V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->h:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->configMgrObserver:Lcn/kuwo/core/observers/IConfigMgrObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->isFromNowplaying:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/KwFragmentController;->back()Z

    const/4 v0, 0x6

    invoke-static {v0}, Lcn/kuwo/ui/JumpUtils;->jump(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v4, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->getKuwoBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "key_from"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "from_now_playing"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->isFromNowplaying:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v2, Lcn/kuwo/core/messagemgr/MessageID;->h:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v3, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->configMgrObserver:Lcn/kuwo/core/observers/IConfigMgrObserver;

    invoke-virtual {v0, v2, v3}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    const v0, 0x7f0b006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->tvTitle:Landroid/widget/TextView;

    const-string v2, "\u8770\u86c7\u97f3\u6548"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v7, v1, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v4}, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;

    const-string v2, "3D\u73af\u7ed5"

    const-string v3, "\u7acb\u4f53\u73af\u7ed5 \u4e0d\u9650\u8bbe\u5907"

    const v4, 0x7f020094

    const v5, 0x7f020095

    invoke-direct/range {v0 .. v5}, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;

    const/4 v1, 0x2

    const-string v2, "\u8d85\u91cd\u4f4e\u97f3"

    const-string v3, "\u4f4e\u800c\u4e0d\u6d51 \u55e8\u65e0\u6b62\u5883"

    const v4, 0x7f020096

    const v5, 0x7f020097

    invoke-direct/range {v0 .. v5}, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;

    const-string v2, "\u7eaf\u51c0\u4eba\u58f0"

    const-string v3, "\u7a81\u51fa\u4eba\u58f0 \u6e05\u6670\u901a\u900f"

    const v4, 0x7f020099

    const v5, 0x7f02009a

    move v1, v7

    invoke-direct/range {v0 .. v5}, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcn/kuwo/ui/adapter/SoundEffectAdapter;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/kuwo/ui/adapter/SoundEffectAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->soundEffectAdapter:Lcn/kuwo/ui/adapter/SoundEffectAdapter;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->soundEffectAdapter:Lcn/kuwo/ui/adapter/SoundEffectAdapter;

    invoke-virtual {v0, v6}, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->setSoundEffects(Ljava/util/List;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->soundEffectAdapter:Lcn/kuwo/ui/adapter/SoundEffectAdapter;

    new-instance v1, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment$1;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment$1;-><init>(Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/SoundEffectAdapter;->setOnItemClickListener(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->soundEffectAdapter:Lcn/kuwo/ui/adapter/SoundEffectAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const v0, 0x7f0b003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b006b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SoundEffectSettingFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
