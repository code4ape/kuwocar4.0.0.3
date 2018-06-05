.class public Lcn/kuwo/ui/fragment/OnlineRootFragment;
.super Lcn/kuwo/ui/fragment/BaseOnlineFragment;

# interfaces
.implements Lcn/kuwo/ui/fragment/RootFragmentInterface;


# instance fields
.field private _OnClickListener:Landroid/view/View$OnClickListener;

.field private ivCurrentItem:Landroid/widget/ImageView;

.field private onlineRootAdapter:Lcn/kuwo/ui/adapter/OnlineRootAdapter;

.field private page:I

.field private playControlObserver:Lcn/kuwo/core/observers/ext/PlayControlObserver;

.field protected rvContent:Landroid/support/v7/widget/RecyclerView;

.field private skinManagerObserver:Lcn/kuwo/core/observers/ISkinManagerObserver;

.field private tvCurrentItem:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;-><init>()V

    new-instance v0, Lcn/kuwo/ui/fragment/OnlineRootFragment$3;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/OnlineRootFragment$3;-><init>(Lcn/kuwo/ui/fragment/OnlineRootFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->_OnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcn/kuwo/ui/fragment/OnlineRootFragment$4;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/OnlineRootFragment$4;-><init>(Lcn/kuwo/ui/fragment/OnlineRootFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->skinManagerObserver:Lcn/kuwo/core/observers/ISkinManagerObserver;

    new-instance v0, Lcn/kuwo/ui/fragment/OnlineRootFragment$5;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/OnlineRootFragment$5;-><init>(Lcn/kuwo/ui/fragment/OnlineRootFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->playControlObserver:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/OnlineRootFragment;->setLayoutContentId(I)V

    const v0, 0x7f040021

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/OnlineRootFragment;->setLayoutTopId(I)V

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/ui/fragment/OnlineRootFragment;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/OnlineRootFragment;->update()V

    return-void
.end method

.method static synthetic access$100(Lcn/kuwo/ui/fragment/OnlineRootFragment;)I
    .locals 1

    iget v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->page:I

    return v0
.end method

.method private update()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->onlineRootAdapter:Lcn/kuwo/ui/adapter/OnlineRootAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->onlineRootAdapter:Lcn/kuwo/ui/adapter/OnlineRootAdapter;

    invoke-virtual {v0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/OnlineRootFragment;->update()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onDestroy()V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->l:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->skinManagerObserver:Lcn/kuwo/core/observers/ISkinManagerObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->playControlObserver:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method public onFragmentResume()V
    .locals 0

    invoke-super {p0}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onFragmentResume()V

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/OnlineRootFragment;->update()V

    return-void
.end method

.method protected onSuccess(Lcn/kuwo/base/bean/online/OnlineRootInfo;)V
    .locals 2

    invoke-super {p0, p1}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onSuccess(Lcn/kuwo/base/bean/online/OnlineRootInfo;)V

    invoke-virtual {p1}, Lcn/kuwo/base/bean/online/OnlineRootInfo;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/online/BaseOnlineSection;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->onlineRootAdapter:Lcn/kuwo/ui/adapter/OnlineRootAdapter;

    invoke-virtual {v1, v0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->setBaseQukuItems(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/OnlineRootFragment;->onFail(I)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/OnlineRootFragment;->getKuwoBundle()Landroid/os/Bundle;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/OnlineRootFragment;->getKuwoBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_page"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->page:I

    iget v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->page:I

    if-ne v0, v2, :cond_4

    const v0, 0x7f0b007a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->tvCurrentItem:Landroid/widget/TextView;

    const v0, 0x7f0b007b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->ivCurrentItem:Landroid/widget/ImageView;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->tvCurrentItem:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->tvCurrentItem:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1
    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->ivCurrentItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->ivCurrentItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    const v0, 0x7f0b0082

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b007f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0085

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0079

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b007c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b006d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0074

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/OnlineRootFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v4, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iget-object v1, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcn/kuwo/ui/adapter/OnlineRootAdapter;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/OnlineRootFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/kuwo/ui/adapter/OnlineRootAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->onlineRootAdapter:Lcn/kuwo/ui/adapter/OnlineRootAdapter;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->onlineRootAdapter:Lcn/kuwo/ui/adapter/OnlineRootAdapter;

    invoke-virtual {v0}, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->getRVScrollListener()Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    :cond_3
    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->onlineRootAdapter:Lcn/kuwo/ui/adapter/OnlineRootAdapter;

    new-instance v1, Lcn/kuwo/ui/fragment/OnlineRootFragment$1;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/OnlineRootFragment$1;-><init>(Lcn/kuwo/ui/fragment/OnlineRootFragment;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->setOnItemClickListener(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->onlineRootAdapter:Lcn/kuwo/ui/adapter/OnlineRootAdapter;

    new-instance v1, Lcn/kuwo/ui/fragment/OnlineRootFragment$2;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/OnlineRootFragment$2;-><init>(Lcn/kuwo/ui/fragment/OnlineRootFragment;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/OnlineRootAdapter;->setOnPlayClickListener(Lcn/kuwo/ui/adapter/OnlineRootAdapter$OnPlayClickListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->onlineRootAdapter:Lcn/kuwo/ui/adapter/OnlineRootAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/OnlineRootFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0607d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {v1, v2}, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {p0, v4}, Lcn/kuwo/ui/fragment/OnlineRootFragment;->load(I)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->l:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->skinManagerObserver:Lcn/kuwo/core/observers/ISkinManagerObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->playControlObserver:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void

    :cond_4
    iget v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->page:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    const v0, 0x7f0b007d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->tvCurrentItem:Landroid/widget/TextView;

    const v0, 0x7f0b007e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->ivCurrentItem:Landroid/widget/ImageView;

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->page:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const v0, 0x7f0b0080

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->tvCurrentItem:Landroid/widget/TextView;

    const v0, 0x7f0b0081

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/OnlineRootFragment;->ivCurrentItem:Landroid/widget/ImageView;

    goto/16 :goto_0
.end method
