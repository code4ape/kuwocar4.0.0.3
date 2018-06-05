.class public Lcn/kuwo/ui/fragment/PathFragment;
.super Lcn/kuwo/ui/fragment/BaseKuwoFragment;

# interfaces
.implements Lcn/kuwo/core/observers/IListObserver;


# instance fields
.field private adapter:Lcn/kuwo/ui/adapter/KuwoLocalAdapter;

.field private diskMusiclist:Lcn/kuwo/base/bean/MusicList;

.field private diskName:Ljava/lang/String;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private rvContent:Landroid/support/v7/widget/RecyclerView;

.field private tvListName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/ui/fragment/PathFragment;->adapter:Lcn/kuwo/ui/adapter/KuwoLocalAdapter;

    new-instance v0, Lcn/kuwo/ui/fragment/PathFragment$2;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/PathFragment$2;-><init>(Lcn/kuwo/ui/fragment/PathFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/PathFragment;->onClickListener:Landroid/view/View$OnClickListener;

    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/PathFragment;->setLayoutTopId(I)V

    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/PathFragment;->setLayoutContentId(I)V

    return-void
.end method

.method private update()V
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/PathFragment;->diskMusiclist:Lcn/kuwo/base/bean/MusicList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->g()Lcn/kuwo/mod/localmgr/ILocalMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/localmgr/ILocalMgr;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/kuwo/ui/fragment/PathFragment;->diskMusiclist:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v4}, Lcn/kuwo/base/bean/MusicList;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/MusicList;

    new-instance v3, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;

    invoke-direct {v3}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->setType(I)V

    invoke-virtual {v3, v0}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->setMusicList(Lcn/kuwo/base/bean/MusicList;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcn/kuwo/ui/fragment/PathFragment;->adapter:Lcn/kuwo/ui/adapter/KuwoLocalAdapter;

    invoke-virtual {v0, v2}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter;->setItems(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public IListObserver_changeName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/PathFragment;->update()V

    return-void
.end method

.method public IListObserver_deleteList(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/PathFragment;->update()V

    return-void
.end method

.method public IListObserver_initComplete()V
    .locals 0

    return-void
.end method

.method public IListObserver_insertList(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/PathFragment;->update()V

    return-void
.end method

.method public IListObserver_insertOverflow(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/PathFragment;->update()V

    return-void
.end method

.method public IListObserver_loadComplete()V
    .locals 0

    return-void
.end method

.method public IListObserver_startLoad()V
    .locals 0

    return-void
.end method

.method public IListObserver_updateMusic(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/PathFragment;->update()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onDestroy()V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/PathFragment;->getKuwoBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "key_music_list_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/ui/fragment/PathFragment;->diskName:Ljava/lang/String;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->g()Lcn/kuwo/mod/localmgr/ILocalMgr;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/PathFragment;->diskName:Ljava/lang/String;

    sget-object v2, Lcn/kuwo/base/bean/ListType;->d:Lcn/kuwo/base/bean/ListType;

    invoke-interface {v0, v1, v2}, Lcn/kuwo/mod/localmgr/ILocalMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/ui/fragment/PathFragment;->diskMusiclist:Lcn/kuwo/base/bean/MusicList;

    :cond_0
    const v0, 0x7f0b006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/PathFragment;->tvListName:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/PathFragment;->diskMusiclist:Lcn/kuwo/base/bean/MusicList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/PathFragment;->tvListName:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/PathFragment;->diskMusiclist:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v0, 0x7f0b006b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/PathFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/PathFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    const v0, 0x7f0b002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/PathFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/PathFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iget-object v1, p0, Lcn/kuwo/ui/fragment/PathFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcn/kuwo/ui/adapter/KuwoLocalAdapter;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/PathFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/PathFragment;->adapter:Lcn/kuwo/ui/adapter/KuwoLocalAdapter;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/PathFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/PathFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/PathFragment;->adapter:Lcn/kuwo/ui/adapter/KuwoLocalAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/PathFragment;->update()V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/PathFragment;->adapter:Lcn/kuwo/ui/adapter/KuwoLocalAdapter;

    new-instance v1, Lcn/kuwo/ui/fragment/PathFragment$1;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/PathFragment$1;-><init>(Lcn/kuwo/ui/fragment/PathFragment;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter;->setOnItemClickListener(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;)V

    return-void
.end method
