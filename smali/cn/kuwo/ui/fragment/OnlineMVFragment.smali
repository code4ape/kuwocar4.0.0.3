.class public Lcn/kuwo/ui/fragment/OnlineMVFragment;
.super Lcn/kuwo/ui/fragment/BaseOnlineFragment;


# instance fields
.field private onClickListener:Landroid/view/View$OnClickListener;

.field private onlineMVAdapter:Lcn/kuwo/ui/adapter/OnlineMVAdapter;

.field private rvContent:Landroid/support/v7/widget/RecyclerView;

.field private tvListName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMVFragment;->onlineMVAdapter:Lcn/kuwo/ui/adapter/OnlineMVAdapter;

    new-instance v0, Lcn/kuwo/ui/fragment/OnlineMVFragment$2;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/OnlineMVFragment$2;-><init>(Lcn/kuwo/ui/fragment/OnlineMVFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMVFragment;->onClickListener:Landroid/view/View$OnClickListener;

    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/OnlineMVFragment;->setLayoutTopId(I)V

    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/OnlineMVFragment;->setLayoutContentId(I)V

    return-void
.end method


# virtual methods
.method protected onSuccess(Lcn/kuwo/base/bean/online/OnlineRootInfo;)V
    .locals 6

    invoke-super {p0, p1}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onSuccess(Lcn/kuwo/base/bean/online/OnlineRootInfo;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcn/kuwo/base/bean/online/OnlineRootInfo;->b()Lcn/kuwo/base/bean/online/BaseOnlineSection;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/quku/BaseQukuItem;

    const-string v3, "\u827e\u8fe6\u53f7"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnlineMVFragment:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcn/kuwo/base/bean/quku/BaseQukuItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v3, v0, Lcn/kuwo/base/bean/quku/MvInfo;

    if-eqz v3, :cond_0

    check-cast v0, Lcn/kuwo/base/bean/quku/MvInfo;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMVFragment;->onlineMVAdapter:Lcn/kuwo/ui/adapter/OnlineMVAdapter;

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/OnlineMVAdapter;->updateMvs(Ljava/util/List;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const/16 v6, 0x14

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/OnlineMVFragment;->getOnlineType()Lcn/kuwo/mod/quku/OnlineType;

    move-result-object v0

    sget-object v1, Lcn/kuwo/mod/quku/OnlineType;->j:Lcn/kuwo/mod/quku/OnlineType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/OnlineMVFragment;->hideTopView()V

    :cond_0
    const v0, 0x7f0b006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMVFragment;->tvListName:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMVFragment;->tvListName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/OnlineMVFragment;->getOnlineName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b006b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/OnlineMVFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/OnlineMVFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMVFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMVFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/OnlineMVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMVFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;

    invoke-direct {v1, v6, v6}, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    new-instance v0, Lcn/kuwo/ui/adapter/OnlineMVAdapter;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/OnlineMVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/kuwo/ui/adapter/OnlineMVAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMVFragment;->onlineMVAdapter:Lcn/kuwo/ui/adapter/OnlineMVAdapter;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMVFragment;->onlineMVAdapter:Lcn/kuwo/ui/adapter/OnlineMVAdapter;

    new-instance v1, Lcn/kuwo/ui/fragment/OnlineMVFragment$1;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/OnlineMVFragment$1;-><init>(Lcn/kuwo/ui/fragment/OnlineMVFragment;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/OnlineMVAdapter;->setOnItemClickListener(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMVFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/OnlineMVFragment;->setLoadingMoreEnable(Landroid/support/v7/widget/RecyclerView;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMVFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/OnlineMVFragment;->onlineMVAdapter:Lcn/kuwo/ui/adapter/OnlineMVAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, v5}, Lcn/kuwo/ui/fragment/OnlineMVFragment;->load(I)V

    return-void
.end method
