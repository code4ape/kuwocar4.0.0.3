.class public Lcn/kuwo/ui/fragment/SkinDetailFragment;
.super Lcn/kuwo/ui/fragment/BaseKuwoFragment;

# interfaces
.implements Lcn/kuwo/ui/fragment/FullScreenFragmentInterface;


# instance fields
.field private adapter:Lcn/kuwo/ui/adapter/SkinDetailAdapter;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private rvContent:Landroid/support/v7/widget/RecyclerView;

.field private skinPack:Lcn/kuwo/mod/skin/SkinPack;

.field private tvListName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;-><init>()V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SkinDetailFragment;->skinPack:Lcn/kuwo/mod/skin/SkinPack;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SkinDetailFragment;->adapter:Lcn/kuwo/ui/adapter/SkinDetailAdapter;

    new-instance v0, Lcn/kuwo/ui/fragment/SkinDetailFragment$1;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/SkinDetailFragment$1;-><init>(Lcn/kuwo/ui/fragment/SkinDetailFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SkinDetailFragment;->onClickListener:Landroid/view/View$OnClickListener;

    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/SkinDetailFragment;->setLayoutTopId(I)V

    const v0, 0x7f040024

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/SkinDetailFragment;->setLayoutContentId(I)V

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/ui/fragment/SkinDetailFragment;)Lcn/kuwo/mod/skin/SkinPack;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SkinDetailFragment;->skinPack:Lcn/kuwo/mod/skin/SkinPack;

    return-object v0
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0b006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SkinDetailFragment;->tvListName:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SkinDetailFragment;->tvListName:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/kuwo/ui/fragment/SkinDetailFragment;->skinPack:Lcn/kuwo/mod/skin/SkinPack;

    invoke-virtual {v2}, Lcn/kuwo/mod/skin/SkinPack;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b006b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcn/kuwo/ui/fragment/SkinDetailFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0091

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcn/kuwo/ui/fragment/SkinDetailFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcn/kuwo/ui/fragment/SkinDetailFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SkinDetailFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/SkinDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iget-object v2, p0, Lcn/kuwo/ui/fragment/SkinDetailFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xd

    invoke-static {v2}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/kuwo/ui/fragment/SkinDetailFragment;->skinPack:Lcn/kuwo/mod/skin/SkinPack;

    invoke-virtual {v2}, Lcn/kuwo/mod/skin/SkinPack;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/kuwo/ui/fragment/SkinDetailFragment;->skinPack:Lcn/kuwo/mod/skin/SkinPack;

    invoke-virtual {v2}, Lcn/kuwo/mod/skin/SkinPack;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "Skin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filePath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v5, v4

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v1, v4, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcn/kuwo/ui/adapter/SkinDetailAdapter;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/SkinDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcn/kuwo/ui/adapter/SkinDetailAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/SkinDetailFragment;->adapter:Lcn/kuwo/ui/adapter/SkinDetailAdapter;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SkinDetailFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SkinDetailFragment;->adapter:Lcn/kuwo/ui/adapter/SkinDetailAdapter;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SkinDetailFragment;->skinPack:Lcn/kuwo/mod/skin/SkinPack;

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/SkinDetailAdapter;->setSkinPack(Lcn/kuwo/mod/skin/SkinPack;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SkinDetailFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/SkinDetailFragment;->adapter:Lcn/kuwo/ui/adapter/SkinDetailAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setSkinPack(Lcn/kuwo/mod/skin/SkinPack;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/SkinDetailFragment;->skinPack:Lcn/kuwo/mod/skin/SkinPack;

    return-void
.end method
