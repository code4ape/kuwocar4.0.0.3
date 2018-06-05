.class public Lcn/kuwo/ui/fragment/DownloadManageFragment;
.super Lcn/kuwo/ui/fragment/BaseKuwoFragment;


# static fields
.field private static final PAGE_MUSIC_DOWNLOADED:I = 0x2

.field private static final PAGE_MUSIC_DOWNLOADING:I = 0x1

.field private static final PAGE_MV_DOWNLOADED:I = 0x4

.field private static final PAGE_MV_DOWNLOADING:I = 0x3


# instance fields
.field private defualtpage:I

.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private musicDownloadedFragment:Lcn/kuwo/ui/fragment/BaseKuwoFragment;

.field private musicDownloadingFragment:Lcn/kuwo/ui/fragment/BaseKuwoFragment;

.field private mvDownloadedFragment:Lcn/kuwo/ui/fragment/BaseKuwoFragment;

.field private mvDownloadingFragment:Lcn/kuwo/ui/fragment/BaseKuwoFragment;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private rvTitleBar:Landroid/support/v7/widget/RecyclerView;

.field private showingFragment:Lcn/kuwo/ui/fragment/BaseKuwoFragment;

.field private tbPageIndicator:Landroid/widget/ToggleButton;

.field private textTitleAdapter:Lcn/kuwo/ui/adapter/TextTitleAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->defualtpage:I

    new-instance v0, Lcn/kuwo/ui/fragment/DownloadManageFragment$2;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/DownloadManageFragment$2;-><init>(Lcn/kuwo/ui/fragment/DownloadManageFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->onClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->showingFragment:Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/DownloadManageFragment;->setLayoutTopId(I)V

    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/DownloadManageFragment;->setLayoutContentId(I)V

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/ui/fragment/DownloadManageFragment;)Lcn/kuwo/ui/adapter/TextTitleAdapter;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->textTitleAdapter:Lcn/kuwo/ui/adapter/TextTitleAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcn/kuwo/ui/fragment/DownloadManageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/DownloadManageFragment;->changePage()V

    return-void
.end method

.method private changePage()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->textTitleAdapter:Lcn/kuwo/ui/adapter/TextTitleAdapter;

    invoke-virtual {v0}, Lcn/kuwo/ui/adapter/TextTitleAdapter;->getCurrentIndex()I

    move-result v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->tbPageIndicator:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->tbPageIndicator:Landroid/widget/ToggleButton;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setGravity(I)V

    if-nez v0, :cond_0

    const-string v0, "appconfig"

    const-string v1, "download_manage_defualt_page"

    invoke-static {v0, v1, v4, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;IZ)Z

    invoke-direct {p0, v5}, Lcn/kuwo/ui/fragment/DownloadManageFragment;->showFragment(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "appconfig"

    const-string v1, "download_manage_defualt_page"

    invoke-static {v0, v1, v6, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;IZ)Z

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcn/kuwo/ui/fragment/DownloadManageFragment;->showFragment(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->tbPageIndicator:Landroid/widget/ToggleButton;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setGravity(I)V

    if-nez v0, :cond_2

    const-string v0, "appconfig"

    const-string v1, "download_manage_defualt_page"

    invoke-static {v0, v1, v3, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;IZ)Z

    invoke-direct {p0, v4}, Lcn/kuwo/ui/fragment/DownloadManageFragment;->showFragment(I)V

    goto :goto_0

    :cond_2
    const-string v0, "appconfig"

    const-string v1, "download_manage_defualt_page"

    invoke-static {v0, v1, v5, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;IZ)Z

    invoke-direct {p0, v6}, Lcn/kuwo/ui/fragment/DownloadManageFragment;->showFragment(I)V

    goto :goto_0
.end method

.method private initFragments()V
    .locals 4

    new-instance v0, Lcn/kuwo/ui/fragment/MusicDownloadingFragment;

    invoke-direct {v0}, Lcn/kuwo/ui/fragment/MusicDownloadingFragment;-><init>()V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->musicDownloadingFragment:Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    new-instance v0, Lcn/kuwo/ui/fragment/MvDownloadingFragment;

    invoke-direct {v0}, Lcn/kuwo/ui/fragment/MvDownloadingFragment;-><init>()V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->mvDownloadingFragment:Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v1

    const-string v2, "download.finish"

    invoke-interface {v1, v2}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v1

    const-string v2, "key_music_list_show_name"

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_music_list_name"

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_music_list_type"

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance v1, Lcn/kuwo/ui/fragment/LocalMusicFragment;

    invoke-direct {v1}, Lcn/kuwo/ui/fragment/LocalMusicFragment;-><init>()V

    iput-object v1, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->musicDownloadedFragment:Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->musicDownloadedFragment:Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    invoke-virtual {v1, v0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->setKuwoBundle(Landroid/os/Bundle;)V

    new-instance v0, Lcn/kuwo/ui/fragment/MvDownloadedFragment;

    invoke-direct {v0}, Lcn/kuwo/ui/fragment/MvDownloadedFragment;-><init>()V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->mvDownloadedFragment:Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    return-void
.end method

.method private showFragment(I)V
    .locals 5

    iget-object v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :goto_0
    const v1, 0x7f0b0070

    iget-object v2, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->showingFragment:Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "page"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    :pswitch_0
    iget-object v1, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->musicDownloadedFragment:Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    iput-object v1, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->showingFragment:Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->musicDownloadingFragment:Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    iput-object v1, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->showingFragment:Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->mvDownloadedFragment:Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    iput-object v1, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->showingFragment:Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->mvDownloadingFragment:Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    iput-object v1, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->showingFragment:Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/DownloadManageFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0b006b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u4e0b\u8f7d\u7ba1\u7406"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "appconfig"

    const-string v1, "download_manage_defualt_page"

    invoke-static {v0, v1, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->defualtpage:I

    const v0, 0x7f0b006f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->tbPageIndicator:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->tbPageIndicator:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcn/kuwo/mod/settings/KwSettingMgr;->a()Lcn/kuwo/mod/settings/KwSettingMgr;

    move-result-object v0

    const-string v1, "showMv"

    invoke-virtual {v0, v1, v4}, Lcn/kuwo/mod/settings/KwSettingMgr;->a(Ljava/lang/String;Z)Z

    move-result v1

    const v0, 0x7f0b006e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->rvTitleBar:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->rvTitleBar:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->rvTitleBar:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/DownloadManageFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5355\u66f2"

    aput-object v1, v0, v3

    const-string v1, "MV"

    aput-object v1, v0, v4

    new-instance v1, Lcn/kuwo/ui/adapter/TextTitleAdapter;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/DownloadManageFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcn/kuwo/ui/adapter/TextTitleAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v1, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->textTitleAdapter:Lcn/kuwo/ui/adapter/TextTitleAdapter;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->textTitleAdapter:Lcn/kuwo/ui/adapter/TextTitleAdapter;

    new-instance v1, Lcn/kuwo/ui/fragment/DownloadManageFragment$1;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/DownloadManageFragment$1;-><init>(Lcn/kuwo/ui/fragment/DownloadManageFragment;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/TextTitleAdapter;->setOnItemClickListener(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->rvTitleBar:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->textTitleAdapter:Lcn/kuwo/ui/adapter/TextTitleAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/DownloadManageFragment;->initFragments()V

    iget v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->defualtpage:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-direct {p0}, Lcn/kuwo/ui/fragment/DownloadManageFragment;->changePage()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->textTitleAdapter:Lcn/kuwo/ui/adapter/TextTitleAdapter;

    invoke-virtual {v0, v3}, Lcn/kuwo/ui/adapter/TextTitleAdapter;->setCurrentIndex(I)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->tbPageIndicator:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->textTitleAdapter:Lcn/kuwo/ui/adapter/TextTitleAdapter;

    invoke-virtual {v0, v4}, Lcn/kuwo/ui/adapter/TextTitleAdapter;->setCurrentIndex(I)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->tbPageIndicator:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->textTitleAdapter:Lcn/kuwo/ui/adapter/TextTitleAdapter;

    invoke-virtual {v0, v3}, Lcn/kuwo/ui/adapter/TextTitleAdapter;->setCurrentIndex(I)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->tbPageIndicator:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->textTitleAdapter:Lcn/kuwo/ui/adapter/TextTitleAdapter;

    invoke-virtual {v0, v4}, Lcn/kuwo/ui/adapter/TextTitleAdapter;->setCurrentIndex(I)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/DownloadManageFragment;->tbPageIndicator:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
