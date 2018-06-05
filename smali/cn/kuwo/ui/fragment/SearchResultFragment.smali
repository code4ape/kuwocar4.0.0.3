.class public Lcn/kuwo/ui/fragment/SearchResultFragment;
.super Lcn/kuwo/ui/fragment/BaseKuwoFragment;


# instance fields
.field private etKeywords:Landroid/widget/EditText;

.field private fragmentPagerAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

.field private isAutoPlay:Z

.field private ivClearKeywords:Landroid/widget/ImageView;

.field private keywords:Ljava/lang/String;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private playCount:I

.field private rvTitleBar:Landroid/support/v7/widget/RecyclerView;

.field private vpSearchResultPage:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->fragmentPagerAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

    iput-boolean v1, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->isAutoPlay:Z

    iput v1, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->playCount:I

    new-instance v0, Lcn/kuwo/ui/fragment/SearchResultFragment$7;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/SearchResultFragment$7;-><init>(Lcn/kuwo/ui/fragment/SearchResultFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->onClickListener:Landroid/view/View$OnClickListener;

    const v0, 0x7f040020

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/SearchResultFragment;->setLayoutContentId(I)V

    const v0, 0x7f040023

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/SearchResultFragment;->setLayoutTopId(I)V

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/ui/fragment/SearchResultFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->vpSearchResultPage:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcn/kuwo/ui/fragment/SearchResultFragment;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/SearchResultFragment;->updateClearIcon()V

    return-void
.end method

.method static synthetic access$200(Lcn/kuwo/ui/fragment/SearchResultFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/SearchResultFragment;->doSearch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcn/kuwo/ui/fragment/SearchResultFragment;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->etKeywords:Landroid/widget/EditText;

    return-object v0
.end method

.method private doSearch()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->etKeywords:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v1, "\u8bf7\u8f93\u5165\u5173\u952e\u5b57"

    invoke-static {v1}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->keywords:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "\u8bf7\u66f4\u6362\u5173\u952e\u5b57"

    invoke-static {v1}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcn/kuwo/ui/JumpUtils;->jumpToSearchResult(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateClearIcon()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->etKeywords:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->ivClearKeywords:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->ivClearKeywords:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onFragmentResume()V
    .locals 3

    invoke-super {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onFragmentResume()V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->etKeywords:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    const/16 v1, 0x64

    new-instance v2, Lcn/kuwo/ui/fragment/SearchResultFragment$6;

    invoke-direct {v2, p0}, Lcn/kuwo/ui/fragment/SearchResultFragment$6;-><init>(Lcn/kuwo/ui/fragment/SearchResultFragment;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(ILcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/SearchResultFragment;->getKuwoBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "key_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "key_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->keywords:Ljava/lang/String;

    const-string v1, "key_auto_play"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->isAutoPlay:Z

    const-string v1, "key_play_count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->playCount:I

    :cond_0
    const v0, 0x7f0b0077

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->vpSearchResultPage:Landroid/support/v4/view/ViewPager;

    const v0, 0x7f0b006d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0090

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b006b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0090

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->ivClearKeywords:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->ivClearKeywords:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->etKeywords:Landroid/widget/EditText;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->etKeywords:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->keywords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/SearchResultFragment;->updateClearIcon()V

    const v0, 0x7f0b006e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->rvTitleBar:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->rvTitleBar:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/SearchResultFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-static {}, Lcn/kuwo/mod/settings/KwSettingMgr;->a()Lcn/kuwo/mod/settings/KwSettingMgr;

    move-result-object v0

    const-string v1, "showMv"

    invoke-virtual {v0, v1, v4}, Lcn/kuwo/mod/settings/KwSettingMgr;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "\u5355\u66f2"

    aput-object v2, v0, v3

    const-string v2, "MV"

    aput-object v2, v0, v4

    const-string v2, "\u6b4c\u624b"

    aput-object v2, v0, v5

    const-string v2, "\u4e13\u8f91"

    aput-object v2, v0, v6

    const-string v2, "\u6b4c\u5355"

    aput-object v2, v0, v7

    :goto_0
    new-instance v2, Lcn/kuwo/ui/adapter/TextTitleAdapter;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/SearchResultFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcn/kuwo/ui/adapter/TextTitleAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    new-instance v0, Lcn/kuwo/ui/fragment/SearchResultFragment$1;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/SearchResultFragment$1;-><init>(Lcn/kuwo/ui/fragment/SearchResultFragment;)V

    invoke-virtual {v2, v0}, Lcn/kuwo/ui/adapter/TextTitleAdapter;->setOnItemClickListener(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->rvTitleBar:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "key_key"

    iget-object v5, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->keywords:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "key_type"

    sget-object v5, Lcn/kuwo/mod/quku/OnlineType;->g:Lcn/kuwo/mod/quku/OnlineType;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v4, "key_auto_play"

    iget-boolean v5, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->isAutoPlay:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "key_play_count"

    iget v5, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->playCount:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v4, Lcn/kuwo/ui/fragment/OnlineMusicFragment;

    invoke-direct {v4}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;-><init>()V

    invoke-virtual {v4, v3}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->setKuwoBundle(Landroid/os/Bundle;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1

    new-instance v1, Lcn/kuwo/ui/fragment/OnlineMVFragment;

    invoke-direct {v1}, Lcn/kuwo/ui/fragment/OnlineMVFragment;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "key_key"

    iget-object v5, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->keywords:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "key_type"

    sget-object v5, Lcn/kuwo/mod/quku/OnlineType;->j:Lcn/kuwo/mod/quku/OnlineType;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v3}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->setKuwoBundle(Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v1, Lcn/kuwo/ui/fragment/OnlineArtistFragment;

    invoke-direct {v1}, Lcn/kuwo/ui/fragment/OnlineArtistFragment;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "key_key"

    iget-object v5, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->keywords:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "key_type"

    sget-object v5, Lcn/kuwo/mod/quku/OnlineType;->h:Lcn/kuwo/mod/quku/OnlineType;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v3}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->setKuwoBundle(Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcn/kuwo/ui/fragment/OnlineAlbumFragment;

    invoke-direct {v1}, Lcn/kuwo/ui/fragment/OnlineAlbumFragment;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "key_key"

    iget-object v5, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->keywords:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "key_type"

    sget-object v5, Lcn/kuwo/mod/quku/OnlineType;->i:Lcn/kuwo/mod/quku/OnlineType;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v3}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->setKuwoBundle(Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcn/kuwo/ui/fragment/OnlineSonglistFragment;

    invoke-direct {v1}, Lcn/kuwo/ui/fragment/OnlineSonglistFragment;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "key_key"

    iget-object v5, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->keywords:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "key_type"

    sget-object v5, Lcn/kuwo/mod/quku/OnlineType;->k:Lcn/kuwo/mod/quku/OnlineType;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v3}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->setKuwoBundle(Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcn/kuwo/ui/adapter/FragmentPageAdapter;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/SearchResultFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcn/kuwo/ui/adapter/FragmentPageAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v1, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->fragmentPagerAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->vpSearchResultPage:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->fragmentPagerAdapter:Landroid/support/v4/app/FragmentPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->vpSearchResultPage:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcn/kuwo/ui/fragment/SearchResultFragment$2;

    invoke-direct {v1, p0, v2}, Lcn/kuwo/ui/fragment/SearchResultFragment$2;-><init>(Lcn/kuwo/ui/fragment/SearchResultFragment;Lcn/kuwo/ui/adapter/TextTitleAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->etKeywords:Landroid/widget/EditText;

    new-instance v1, Lcn/kuwo/ui/fragment/SearchResultFragment$3;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/SearchResultFragment$3;-><init>(Lcn/kuwo/ui/fragment/SearchResultFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->etKeywords:Landroid/widget/EditText;

    new-instance v1, Lcn/kuwo/ui/fragment/SearchResultFragment$4;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/SearchResultFragment$4;-><init>(Lcn/kuwo/ui/fragment/SearchResultFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchResultFragment;->etKeywords:Landroid/widget/EditText;

    new-instance v1, Lcn/kuwo/ui/fragment/SearchResultFragment$5;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/SearchResultFragment$5;-><init>(Lcn/kuwo/ui/fragment/SearchResultFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void

    :cond_2
    new-array v0, v7, [Ljava/lang/String;

    const-string v2, "\u5355\u66f2"

    aput-object v2, v0, v3

    const-string v2, "\u6b4c\u624b"

    aput-object v2, v0, v4

    const-string v2, "\u4e13\u8f91"

    aput-object v2, v0, v5

    const-string v2, "\u6b4c\u5355"

    aput-object v2, v0, v6

    goto/16 :goto_0
.end method
