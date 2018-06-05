.class public Lcn/kuwo/ui/dialog/ListDialog;
.super Landroid/app/Dialog;


# instance fields
.field private defualtPos:I

.field private items:Ljava/util/List;

.field private onItemClickListener:Lcn/kuwo/ui/dialog/ListDialog$OnItemClickListener;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private rootView:Landroid/view/View;

.field private title:Ljava/lang/String;

.field private tvEmpty:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/ui/dialog/ListDialog;->defualtPos:I

    iput-object p2, p0, Lcn/kuwo/ui/dialog/ListDialog;->title:Ljava/lang/String;

    invoke-direct {p0}, Lcn/kuwo/ui/dialog/ListDialog;->setView()V

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/ui/dialog/ListDialog;)Lcn/kuwo/ui/dialog/ListDialog$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/dialog/ListDialog;->onItemClickListener:Lcn/kuwo/ui/dialog/ListDialog$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcn/kuwo/ui/dialog/ListDialog;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/dialog/ListDialog;->items:Ljava/util/List;

    return-object v0
.end method

.method private setView()V
    .locals 4

    invoke-virtual {p0}, Lcn/kuwo/ui/dialog/ListDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcn/kuwo/ui/dialog/ListDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060538

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcn/kuwo/ui/dialog/ListDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040003

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/ui/dialog/ListDialog;->rootView:Landroid/view/View;

    iget-object v0, p0, Lcn/kuwo/ui/dialog/ListDialog;->rootView:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcn/kuwo/ui/dialog/ListDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcn/kuwo/ui/dialog/ListDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method


# virtual methods
.method protected id2Postion(Ljava/util/List;I)I
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;

    invoke-virtual {v0}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->getId()I

    move-result v0

    if-ne v0, p2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcn/kuwo/ui/dialog/ListDialog;->onDataPrepared()V

    iget-object v0, p0, Lcn/kuwo/ui/dialog/ListDialog;->rootView:Landroid/view/View;

    const v1, 0x7f0b002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcn/kuwo/ui/dialog/ListDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcn/kuwo/ui/dialog/ListDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcn/kuwo/ui/dialog/ListDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcn/kuwo/ui/dialog/ListDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;

    const/16 v2, 0x14

    invoke-direct {v1, v4, v2}, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcn/kuwo/ui/dialog/ListDialog;->rootView:Landroid/view/View;

    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/dialog/ListDialog;->tvEmpty:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/kuwo/ui/dialog/ListDialog;->rootView:Landroid/view/View;

    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/dialog/ListDialog;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/kuwo/ui/dialog/ListDialog;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/kuwo/ui/dialog/ListDialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/kuwo/ui/dialog/ListDialog;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/dialog/ListDialog;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/kuwo/ui/dialog/ListDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcn/kuwo/ui/adapter/ListDialogAdapter;

    invoke-virtual {p0}, Lcn/kuwo/ui/dialog/ListDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/kuwo/ui/adapter/ListDialogAdapter;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcn/kuwo/ui/dialog/ListDialog;->defualtPos:I

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/ListDialogAdapter;->setSelected(I)V

    iget-object v1, p0, Lcn/kuwo/ui/dialog/ListDialog;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/ListDialogAdapter;->setListDialogItems(Ljava/util/List;)V

    new-instance v1, Lcn/kuwo/ui/dialog/ListDialog$1;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/dialog/ListDialog$1;-><init>(Lcn/kuwo/ui/dialog/ListDialog;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/ListDialogAdapter;->setOnItemClickListener(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;)V

    iget-object v1, p0, Lcn/kuwo/ui/dialog/ListDialog;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0
.end method

.method protected onDataPrepared()V
    .locals 0

    return-void
.end method

.method public setDufualtPos(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/ui/dialog/ListDialog;->defualtPos:I

    return-void
.end method

.method public setListItem(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/dialog/ListDialog;->items:Ljava/util/List;

    return-void
.end method

.method public setOnItemClickListener(Lcn/kuwo/ui/dialog/ListDialog$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/dialog/ListDialog;->onItemClickListener:Lcn/kuwo/ui/dialog/ListDialog$OnItemClickListener;

    return-void
.end method
