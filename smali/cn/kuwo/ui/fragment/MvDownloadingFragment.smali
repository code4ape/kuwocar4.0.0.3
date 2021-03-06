.class public Lcn/kuwo/ui/fragment/MvDownloadingFragment;
.super Lcn/kuwo/ui/fragment/BaseKuwoFragment;

# interfaces
.implements Lcn/kuwo/core/observers/IMVDownloadMgrObserver;


# instance fields
.field private mvDownloadingAdapter:Lcn/kuwo/ui/adapter/MvDownloadingAdapter;

.field private rvContent:Landroid/support/v7/widget/RecyclerView;

.field private stateUtils:Lcn/kuwo/ui/StateUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;-><init>()V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvDownloadingFragment;->mvDownloadingAdapter:Lcn/kuwo/ui/adapter/MvDownloadingAdapter;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvDownloadingFragment;->stateUtils:Lcn/kuwo/ui/StateUtils;

    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/MvDownloadingFragment;->setLayoutContentId(I)V

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/ui/fragment/MvDownloadingFragment;)Lcn/kuwo/ui/adapter/MvDownloadingAdapter;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvDownloadingFragment;->mvDownloadingAdapter:Lcn/kuwo/ui/adapter/MvDownloadingAdapter;

    return-object v0
.end method

.method private update()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvDownloadingFragment;->mvDownloadingAdapter:Lcn/kuwo/ui/adapter/MvDownloadingAdapter;

    invoke-virtual {v0}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;->update()V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvDownloadingFragment;->mvDownloadingAdapter:Lcn/kuwo/ui/adapter/MvDownloadingAdapter;

    invoke-virtual {v0}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvDownloadingFragment;->stateUtils:Lcn/kuwo/ui/StateUtils;

    invoke-virtual {v0}, Lcn/kuwo/ui/StateUtils;->showEmpty()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvDownloadingFragment;->stateUtils:Lcn/kuwo/ui/StateUtils;

    invoke-virtual {v0}, Lcn/kuwo/ui/StateUtils;->hideStateView()V

    goto :goto_0
.end method


# virtual methods
.method public IDownloadObserver_OnListChanged(I)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MvDownloadingFragment;->update()V

    return-void
.end method

.method public IDownloadObserver_OnProgressChanged(Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MvDownloadingFragment;->update()V

    return-void
.end method

.method public IDownloadObserver_OnStateChanged(Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MvDownloadingFragment;->update()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->w:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onDestroy()V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->w:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const/16 v6, 0xa

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0b002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvDownloadingFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcn/kuwo/ui/StateUtils;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcn/kuwo/ui/StateUtils;-><init>(Landroid/view/View;Lcn/kuwo/ui/StateUtils$OnScreenClickListener;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvDownloadingFragment;->stateUtils:Lcn/kuwo/ui/StateUtils;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvDownloadingFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/MvDownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvDownloadingFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;

    invoke-direct {v1, v6, v6}, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    new-instance v0, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/MvDownloadingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MvDownloadingFragment;->mvDownloadingAdapter:Lcn/kuwo/ui/adapter/MvDownloadingAdapter;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvDownloadingFragment;->mvDownloadingAdapter:Lcn/kuwo/ui/adapter/MvDownloadingAdapter;

    new-instance v1, Lcn/kuwo/ui/fragment/MvDownloadingFragment$1;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/MvDownloadingFragment$1;-><init>(Lcn/kuwo/ui/fragment/MvDownloadingFragment;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;->setOnItemClickListener(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvDownloadingFragment;->mvDownloadingAdapter:Lcn/kuwo/ui/adapter/MvDownloadingAdapter;

    new-instance v1, Lcn/kuwo/ui/fragment/MvDownloadingFragment$2;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/MvDownloadingFragment$2;-><init>(Lcn/kuwo/ui/fragment/MvDownloadingFragment;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/MvDownloadingAdapter;->setOnItemDeleteClickListener(Lcn/kuwo/ui/adapter/MvDownloadingAdapter$OnItemDeleteClickListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvDownloadingFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvDownloadingFragment;->mvDownloadingAdapter:Lcn/kuwo/ui/adapter/MvDownloadingAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MvDownloadingFragment;->update()V

    return-void
.end method
