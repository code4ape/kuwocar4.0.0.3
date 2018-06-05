.class public Lcn/kuwo/ui/fragment/LocalMusicFragment;
.super Lcn/kuwo/ui/fragment/BaseKuwoFragment;


# instance fields
.field private downloadMgrObserver:Lcn/kuwo/core/observers/IDownloadMgrObserver;

.field private kwTimer:Lcn/kuwo/base/util/KwTimer;

.field private listObserver:Lcn/kuwo/core/observers/ext/ListObserver;

.field private listType:Lcn/kuwo/base/bean/ListType;

.field private musicAdapter:Lcn/kuwo/ui/adapter/MusicAdapter;

.field private musicList:Lcn/kuwo/base/bean/MusicList;

.field private musicListShowName:Ljava/lang/String;

.field private musiclistName:Ljava/lang/String;

.field private onClckListener:Landroid/view/View$OnClickListener;

.field private playControlObserver:Lcn/kuwo/core/observers/ext/PlayControlObserver;

.field private rvContent:Landroid/support/v7/widget/RecyclerView;

.field private stateUtils:Lcn/kuwo/ui/StateUtils;

.field private tvTilte:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;-><init>()V

    iput-object v2, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->musiclistName:Ljava/lang/String;

    iput-object v2, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->musicListShowName:Ljava/lang/String;

    iput-object v2, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->listType:Lcn/kuwo/base/bean/ListType;

    iput-object v2, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->musicAdapter:Lcn/kuwo/ui/adapter/MusicAdapter;

    iput-object v2, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->stateUtils:Lcn/kuwo/ui/StateUtils;

    new-instance v0, Lcn/kuwo/ui/fragment/LocalMusicFragment$1;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/LocalMusicFragment$1;-><init>(Lcn/kuwo/ui/fragment/LocalMusicFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->downloadMgrObserver:Lcn/kuwo/core/observers/IDownloadMgrObserver;

    new-instance v0, Lcn/kuwo/ui/fragment/LocalMusicFragment$2;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/LocalMusicFragment$2;-><init>(Lcn/kuwo/ui/fragment/LocalMusicFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->listObserver:Lcn/kuwo/core/observers/ext/ListObserver;

    new-instance v0, Lcn/kuwo/base/util/KwTimer;

    new-instance v1, Lcn/kuwo/ui/fragment/LocalMusicFragment$3;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/LocalMusicFragment$3;-><init>(Lcn/kuwo/ui/fragment/LocalMusicFragment;)V

    invoke-direct {v0, v1}, Lcn/kuwo/base/util/KwTimer;-><init>(Lcn/kuwo/base/util/KwTimer$Listener;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->kwTimer:Lcn/kuwo/base/util/KwTimer;

    iput-object v2, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->musicList:Lcn/kuwo/base/bean/MusicList;

    new-instance v0, Lcn/kuwo/ui/fragment/LocalMusicFragment$8;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/LocalMusicFragment$8;-><init>(Lcn/kuwo/ui/fragment/LocalMusicFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->onClckListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcn/kuwo/ui/fragment/LocalMusicFragment$9;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/LocalMusicFragment$9;-><init>(Lcn/kuwo/ui/fragment/LocalMusicFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->playControlObserver:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/LocalMusicFragment;->setLayoutContentId(I)V

    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/LocalMusicFragment;->setLayoutTopId(I)V

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/ui/fragment/LocalMusicFragment;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/LocalMusicFragment;->update()V

    return-void
.end method

.method static synthetic access$100(Lcn/kuwo/ui/fragment/LocalMusicFragment;)Lcn/kuwo/base/bean/MusicList;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->musicList:Lcn/kuwo/base/bean/MusicList;

    return-object v0
.end method

.method private update()V
    .locals 3

    sget-object v0, Lcn/kuwo/ui/fragment/LocalMusicFragment$10;->$SwitchMap$cn$kuwo$base$bean$ListType:[I

    iget-object v1, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->listType:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/ListType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->musiclistName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->musicList:Lcn/kuwo/base/bean/MusicList;

    :goto_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->musicList:Lcn/kuwo/base/bean/MusicList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->stateUtils:Lcn/kuwo/ui/StateUtils;

    invoke-virtual {v0}, Lcn/kuwo/ui/StateUtils;->showEmpty()V

    :goto_1
    return-void

    :pswitch_0
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->g()Lcn/kuwo/mod/localmgr/ILocalMgr;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->musiclistName:Ljava/lang/String;

    iget-object v2, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->listType:Lcn/kuwo/base/bean/ListType;

    invoke-interface {v0, v1, v2}, Lcn/kuwo/mod/localmgr/ILocalMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->musicList:Lcn/kuwo/base/bean/MusicList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->musicAdapter:Lcn/kuwo/ui/adapter/MusicAdapter;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->musicList:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList;->h()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/MusicAdapter;->update(Ljava/util/List;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->musicAdapter:Lcn/kuwo/ui/adapter/MusicAdapter;

    invoke-virtual {v0}, Lcn/kuwo/ui/adapter/MusicAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->stateUtils:Lcn/kuwo/ui/StateUtils;

    invoke-virtual {v0}, Lcn/kuwo/ui/StateUtils;->showEmpty()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->stateUtils:Lcn/kuwo/ui/StateUtils;

    invoke-virtual {v0}, Lcn/kuwo/ui/StateUtils;->hideStateView()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/LocalMusicFragment;->getKuwoBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "key_music_list_show_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->musicListShowName:Ljava/lang/String;

    const-string v1, "key_music_list_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->musiclistName:Ljava/lang/String;

    const-string v1, "key_music_list_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/ListType;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->listType:Lcn/kuwo/base/bean/ListType;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onDestroy()V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->playControlObserver:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->f:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->downloadMgrObserver:Lcn/kuwo/core/observers/IDownloadMgrObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->listObserver:Lcn/kuwo/core/observers/ext/ListObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->listType:Lcn/kuwo/base/bean/ListType;

    sget-object v1, Lcn/kuwo/base/bean/ListType;->g:Lcn/kuwo/base/bean/ListType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/LocalMusicFragment;->hideTopView()V

    :cond_0
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->playControlObserver:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->f:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->downloadMgrObserver:Lcn/kuwo/core/observers/IDownloadMgrObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->listObserver:Lcn/kuwo/core/observers/ext/ListObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    new-instance v0, Lcn/kuwo/ui/StateUtils;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcn/kuwo/ui/StateUtils;-><init>(Landroid/view/View;Lcn/kuwo/ui/StateUtils$OnScreenClickListener;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->stateUtils:Lcn/kuwo/ui/StateUtils;

    const v0, 0x7f0b006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->tvTilte:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->tvTilte:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->musicListShowName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->onClckListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b006b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->onClckListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/LocalMusicFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v4, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcn/kuwo/ui/adapter/MusicAdapter;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/LocalMusicFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/kuwo/ui/adapter/MusicAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->musicAdapter:Lcn/kuwo/ui/adapter/MusicAdapter;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->musicAdapter:Lcn/kuwo/ui/adapter/MusicAdapter;

    invoke-virtual {v0, v4}, Lcn/kuwo/ui/adapter/MusicAdapter;->setShowLike(Z)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->musicAdapter:Lcn/kuwo/ui/adapter/MusicAdapter;

    invoke-virtual {v0, v4}, Lcn/kuwo/ui/adapter/MusicAdapter;->setShowDownloadState(Z)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->listType:Lcn/kuwo/base/bean/ListType;

    sget-object v1, Lcn/kuwo/base/bean/ListType;->h:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/ListType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->musicAdapter:Lcn/kuwo/ui/adapter/MusicAdapter;

    invoke-virtual {v0, v4}, Lcn/kuwo/ui/adapter/MusicAdapter;->setShowDelete(Z)V

    :cond_1
    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->musicAdapter:Lcn/kuwo/ui/adapter/MusicAdapter;

    new-instance v1, Lcn/kuwo/ui/fragment/LocalMusicFragment$4;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/LocalMusicFragment$4;-><init>(Lcn/kuwo/ui/fragment/LocalMusicFragment;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/MusicAdapter;->setOnItemClickListener(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->musicAdapter:Lcn/kuwo/ui/adapter/MusicAdapter;

    new-instance v1, Lcn/kuwo/ui/fragment/LocalMusicFragment$5;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/LocalMusicFragment$5;-><init>(Lcn/kuwo/ui/fragment/LocalMusicFragment;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/MusicAdapter;->setOnPlaySingleListener(Lcn/kuwo/ui/adapter/MusicAdapter$OnPlaySingleListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->musicAdapter:Lcn/kuwo/ui/adapter/MusicAdapter;

    new-instance v1, Lcn/kuwo/ui/fragment/LocalMusicFragment$6;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/LocalMusicFragment$6;-><init>(Lcn/kuwo/ui/fragment/LocalMusicFragment;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/MusicAdapter;->setOnItemDeleteListener(Lcn/kuwo/ui/adapter/MusicAdapter$OnItemDeleteListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->musicAdapter:Lcn/kuwo/ui/adapter/MusicAdapter;

    new-instance v1, Lcn/kuwo/ui/fragment/LocalMusicFragment$7;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/LocalMusicFragment$7;-><init>(Lcn/kuwo/ui/fragment/LocalMusicFragment;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/MusicAdapter;->setOnItemLikeListener(Lcn/kuwo/ui/adapter/MusicAdapter$OnItemLikeListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment;->musicAdapter:Lcn/kuwo/ui/adapter/MusicAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/LocalMusicFragment;->update()V

    return-void
.end method
