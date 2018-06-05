.class public Lcn/kuwo/ui/fragment/SearchFragment;
.super Lcn/kuwo/ui/fragment/BaseKuwoFragment;


# instance fields
.field private appObserver:Lcn/kuwo/core/observers/ext/AppObserver;

.field private etKeywords:Landroid/widget/EditText;

.field private hotwords:Ljava/util/List;

.field private hotwordsAdapter:Lcn/kuwo/ui/adapter/SearchTextAdapter;

.field private ivClearKeywords:Landroid/widget/ImageView;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private onItemClickListener:Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;

.field private rvHotwords:Landroid/support/v7/widget/RecyclerView;

.field private rvSearchHistory:Landroid/support/v7/widget/RecyclerView;

.field private searchHistoryAdapter:Lcn/kuwo/ui/adapter/SearchTextAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;-><init>()V

    new-instance v0, Lcn/kuwo/ui/fragment/SearchFragment$4;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/SearchFragment$4;-><init>(Lcn/kuwo/ui/fragment/SearchFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment;->onItemClickListener:Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;

    new-instance v0, Lcn/kuwo/ui/fragment/SearchFragment$5;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/SearchFragment$5;-><init>(Lcn/kuwo/ui/fragment/SearchFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment;->onClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcn/kuwo/ui/fragment/SearchFragment$6;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/SearchFragment$6;-><init>(Lcn/kuwo/ui/fragment/SearchFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment;->appObserver:Lcn/kuwo/core/observers/ext/AppObserver;

    const v0, 0x7f040022

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/SearchFragment;->setLayoutContentId(I)V

    const v0, 0x7f040023

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/SearchFragment;->setLayoutTopId(I)V

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/ui/fragment/SearchFragment;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/SearchFragment;->updateClearIcon()V

    return-void
.end method

.method static synthetic access$100(Lcn/kuwo/ui/fragment/SearchFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/SearchFragment;->doSearch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcn/kuwo/ui/fragment/SearchFragment;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment;->etKeywords:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcn/kuwo/ui/fragment/SearchFragment;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/SearchFragment;->updateHotWords()V

    return-void
.end method

.method static synthetic access$400(Lcn/kuwo/ui/fragment/SearchFragment;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/SearchFragment;->updateHistory()V

    return-void
.end method

.method static synthetic access$500(Lcn/kuwo/ui/fragment/SearchFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment;->hotwords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcn/kuwo/ui/fragment/SearchFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/SearchFragment;->hotwords:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcn/kuwo/ui/fragment/SearchFragment;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/SearchFragment;->changeHotWords()V

    return-void
.end method

.method private changeHotWords()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment;->hotwords:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment;->hotwords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment;->hotwords:Ljava/util/List;

    invoke-static {v0, v1}, Lcn/kuwo/base/util/RandomUtils;->getRandomList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchFragment;->hotwordsAdapter:Lcn/kuwo/ui/adapter/SearchTextAdapter;

    invoke-virtual {v1, v0}, Lcn/kuwo/ui/adapter/SearchTextAdapter;->setTexts(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private doSearch()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchFragment;->etKeywords:Landroid/widget/EditText;

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
    const-string v2, "###"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ScreenInfo"

    sget-object v3, Lcn/kuwo/base/util/DeviceUtils;->SCREEN_INFO:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4, v4}, Lcn/kuwo/ui/dialog/DialogUtils;->showSimpleDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

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

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchFragment;->etKeywords:Landroid/widget/EditText;

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

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment;->ivClearKeywords:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment;->ivClearKeywords:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateHistory()V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->e()Lcn/kuwo/mod/search/ISearchMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/search/ISearchMgr;->c()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchFragment;->searchHistoryAdapter:Lcn/kuwo/ui/adapter/SearchTextAdapter;

    invoke-virtual {v1, v0}, Lcn/kuwo/ui/adapter/SearchTextAdapter;->setTexts(Ljava/util/List;)V

    return-void
.end method

.method private updateHotWords()V
    .locals 2

    new-instance v0, Lcn/kuwo/mod/search/FetchHotWordsRunner;

    new-instance v1, Lcn/kuwo/ui/fragment/SearchFragment$7;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/SearchFragment$7;-><init>(Lcn/kuwo/ui/fragment/SearchFragment;)V

    invoke-direct {v0, v1}, Lcn/kuwo/mod/search/FetchHotWordsRunner;-><init>(Lcn/kuwo/mod/search/FetchHotWordsRunner$OnFetchHotWordsListener;)V

    invoke-virtual {v0}, Lcn/kuwo/mod/search/FetchHotWordsRunner;->a()V

    return-void
.end method


# virtual methods
.method public onFragmentResume()V
    .locals 0

    invoke-super {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onFragmentResume()V

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/SearchFragment;->updateHistory()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onResume()V

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/SearchFragment;->updateHistory()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0b008a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment;->rvHotwords:Landroid/support/v7/widget/RecyclerView;

    const v0, 0x7f0b008c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment;->rvSearchHistory:Landroid/support/v7/widget/RecyclerView;

    const v0, 0x7f0b006d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b008d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0089

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b006b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0090

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment;->ivClearKeywords:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment;->ivClearKeywords:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment;->etKeywords:Landroid/widget/EditText;

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v4, v3, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchFragment;->rvHotwords:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v4, v3, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchFragment;->rvSearchHistory:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;-><init>(I)V

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchFragment;->rvHotwords:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchFragment;->rvSearchHistory:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    new-instance v0, Lcn/kuwo/ui/adapter/SearchTextAdapter;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/kuwo/ui/adapter/SearchTextAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment;->hotwordsAdapter:Lcn/kuwo/ui/adapter/SearchTextAdapter;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment;->hotwordsAdapter:Lcn/kuwo/ui/adapter/SearchTextAdapter;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchFragment;->onItemClickListener:Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/SearchTextAdapter;->setOnItemClickListener(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;)V

    new-instance v0, Lcn/kuwo/ui/adapter/SearchTextAdapter;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/kuwo/ui/adapter/SearchTextAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment;->searchHistoryAdapter:Lcn/kuwo/ui/adapter/SearchTextAdapter;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment;->searchHistoryAdapter:Lcn/kuwo/ui/adapter/SearchTextAdapter;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchFragment;->onItemClickListener:Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/SearchTextAdapter;->setOnItemClickListener(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment;->rvHotwords:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchFragment;->hotwordsAdapter:Lcn/kuwo/ui/adapter/SearchTextAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment;->rvSearchHistory:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SearchFragment;->searchHistoryAdapter:Lcn/kuwo/ui/adapter/SearchTextAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/SearchFragment;->updateHotWords()V

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/SearchFragment;->updateClearIcon()V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment;->etKeywords:Landroid/widget/EditText;

    new-instance v1, Lcn/kuwo/ui/fragment/SearchFragment$1;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/SearchFragment$1;-><init>(Lcn/kuwo/ui/fragment/SearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment;->etKeywords:Landroid/widget/EditText;

    new-instance v1, Lcn/kuwo/ui/fragment/SearchFragment$2;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/SearchFragment$2;-><init>(Lcn/kuwo/ui/fragment/SearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment;->etKeywords:Landroid/widget/EditText;

    new-instance v1, Lcn/kuwo/ui/fragment/SearchFragment$3;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/SearchFragment$3;-><init>(Lcn/kuwo/ui/fragment/SearchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method
