.class public Lcn/kuwo/ui/fragment/SkinPickerFragment;
.super Lcn/kuwo/ui/fragment/BaseKuwoFragment;


# instance fields
.field private adapter:Lcn/kuwo/ui/adapter/SkinPickerAdapter;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private rvContent:Landroid/support/v7/widget/RecyclerView;

.field private tvListName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SkinPickerFragment;->adapter:Lcn/kuwo/ui/adapter/SkinPickerAdapter;

    new-instance v0, Lcn/kuwo/ui/fragment/SkinPickerFragment$2;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/SkinPickerFragment$2;-><init>(Lcn/kuwo/ui/fragment/SkinPickerFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SkinPickerFragment;->onClickListener:Landroid/view/View$OnClickListener;

    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/SkinPickerFragment;->setLayoutTopId(I)V

    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/SkinPickerFragment;->setLayoutContentId(I)V

    return-void
.end method

.method private update()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SkinPickerFragment;->adapter:Lcn/kuwo/ui/adapter/SkinPickerAdapter;

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/mod/skin/SkinMgr;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/SkinPickerAdapter;->update(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onFragmentResume()V
    .locals 0

    invoke-super {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onFragmentResume()V

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/SkinPickerFragment;->update()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f0b006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SkinPickerFragment;->tvListName:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SkinPickerFragment;->tvListName:Landroid/widget/TextView;

    const-string v1, "\u76ae\u80a4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b006b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SkinPickerFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SkinPickerFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0b002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SkinPickerFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/SkinPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SkinPickerFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcn/kuwo/ui/adapter/SkinPickerAdapter;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/SkinPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/kuwo/ui/adapter/SkinPickerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SkinPickerFragment;->adapter:Lcn/kuwo/ui/adapter/SkinPickerAdapter;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SkinPickerFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/SkinPickerFragment;->update()V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SkinPickerFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SkinPickerFragment;->adapter:Lcn/kuwo/ui/adapter/SkinPickerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SkinPickerFragment;->adapter:Lcn/kuwo/ui/adapter/SkinPickerAdapter;

    new-instance v1, Lcn/kuwo/ui/fragment/SkinPickerFragment$1;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/SkinPickerFragment$1;-><init>(Lcn/kuwo/ui/fragment/SkinPickerFragment;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/SkinPickerAdapter;->setOnItemClickListener(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;)V

    return-void
.end method
