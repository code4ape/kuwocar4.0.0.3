.class public Lcn/kuwo/ui/fragment/OnlineMusicFragment;
.super Lcn/kuwo/ui/fragment/BaseOnlineFragment;


# instance fields
.field private isAutoPlay:Z

.field private musicAdapter:Lcn/kuwo/ui/adapter/MusicAdapter;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private playControlObserver:Lcn/kuwo/core/observers/ext/PlayControlObserver;

.field private playCount:I

.field private pos:I

.field protected rvContent:Landroid/support/v7/widget/RecyclerView;

.field private tvListName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->musicAdapter:Lcn/kuwo/ui/adapter/MusicAdapter;

    iput-boolean v1, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->isAutoPlay:Z

    iput v1, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->playCount:I

    iput v1, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->pos:I

    new-instance v0, Lcn/kuwo/ui/fragment/OnlineMusicFragment$4;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment$4;-><init>(Lcn/kuwo/ui/fragment/OnlineMusicFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->onClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcn/kuwo/ui/fragment/OnlineMusicFragment$5;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment$5;-><init>(Lcn/kuwo/ui/fragment/OnlineMusicFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->playControlObserver:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->setLayoutTopId(I)V

    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->setLayoutContentId(I)V

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/ui/fragment/OnlineMusicFragment;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->update()V

    return-void
.end method

.method private update()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->musicAdapter:Lcn/kuwo/ui/adapter/MusicAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->musicAdapter:Lcn/kuwo/ui/adapter/MusicAdapter;

    invoke-virtual {v0}, Lcn/kuwo/ui/adapter/MusicAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->playControlObserver:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onDestroy()V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->playControlObserver:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method protected onFail(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onFail(I)V

    iget v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->playCount:I

    if-lez v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, v1, v2}, Lcn/kuwo/kwmusiccar/KwCarPlay;->sendMusicsToClientBroadcast(Landroid/content/Context;ILorg/json/JSONArray;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcn/kuwo/kwmusiccar/KwCarPlay;->sendMusicsToClientBroadcast(Landroid/content/Context;ILorg/json/JSONArray;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKuwoSateRestore(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onKuwoSateRestore(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "firstCompleteVisiableItemPos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->pos:I

    const-string v0, "OnlineMusicFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onKuwoStateSaved()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    const-string v2, "firstCompleteVisiableItemPos"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-object v1
.end method

.method protected onSuccess(Lcn/kuwo/base/bean/online/OnlineRootInfo;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onSuccess(Lcn/kuwo/base/bean/online/OnlineRootInfo;)V

    invoke-virtual {p1}, Lcn/kuwo/base/bean/online/OnlineRootInfo;->b()Lcn/kuwo/base/bean/online/BaseOnlineSection;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->a()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/quku/BaseQukuItem;

    instance-of v4, v0, Lcn/kuwo/base/bean/quku/MusicInfo;

    if-eqz v4, :cond_0

    check-cast v0, Lcn/kuwo/base/bean/quku/MusicInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->b()Lcn/kuwo/base/bean/Music;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0, v2}, Lcn/kuwo/kwmusiccar/KwCarPlay;->packMusic2Json(Lcn/kuwo/base/bean/Music;Lorg/json/JSONArray;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->musicAdapter:Lcn/kuwo/ui/adapter/MusicAdapter;

    invoke-virtual {v0}, Lcn/kuwo/ui/adapter/MusicAdapter;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->musicAdapter:Lcn/kuwo/ui/adapter/MusicAdapter;

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/MusicAdapter;->update(Ljava/util/List;)V

    iget v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->playCount:I

    if-lez v0, :cond_2

    iget v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->playCount:I

    invoke-interface {v1, v5, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v5}, Lcn/kuwo/base/util/PlayMusicHelper;->play(Ljava/util/List;I)V

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcn/kuwo/kwmusiccar/KwCarPlay;->sendMusicsToClientBroadcast(Landroid/content/Context;ILorg/json/JSONArray;)V

    :cond_2
    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    iget v1, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->pos:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->musicAdapter:Lcn/kuwo/ui/adapter/MusicAdapter;

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/MusicAdapter;->add(Ljava/util/List;)V

    goto :goto_1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/fragment/BaseOnlineFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->getOnlineType()Lcn/kuwo/mod/quku/OnlineType;

    move-result-object v0

    sget-object v1, Lcn/kuwo/mod/quku/OnlineType;->g:Lcn/kuwo/mod/quku/OnlineType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->hideTopView()V

    :cond_0
    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->getKuwoBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "key_auto_play"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->isAutoPlay:Z

    const-string v1, "key_play_count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->playCount:I

    :cond_1
    const v0, 0x7f0b006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->tvListName:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->tvListName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->getOnlineName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b006b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b006d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v4, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcn/kuwo/ui/adapter/MusicAdapter;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/kuwo/ui/adapter/MusicAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->musicAdapter:Lcn/kuwo/ui/adapter/MusicAdapter;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->musicAdapter:Lcn/kuwo/ui/adapter/MusicAdapter;

    invoke-virtual {v0, v4}, Lcn/kuwo/ui/adapter/MusicAdapter;->setShowLike(Z)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->musicAdapter:Lcn/kuwo/ui/adapter/MusicAdapter;

    new-instance v1, Lcn/kuwo/ui/fragment/OnlineMusicFragment$1;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment$1;-><init>(Lcn/kuwo/ui/fragment/OnlineMusicFragment;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/MusicAdapter;->setOnItemClickListener(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->musicAdapter:Lcn/kuwo/ui/adapter/MusicAdapter;

    new-instance v1, Lcn/kuwo/ui/fragment/OnlineMusicFragment$2;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment$2;-><init>(Lcn/kuwo/ui/fragment/OnlineMusicFragment;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/MusicAdapter;->setOnItemLikeListener(Lcn/kuwo/ui/adapter/MusicAdapter$OnItemLikeListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->musicAdapter:Lcn/kuwo/ui/adapter/MusicAdapter;

    new-instance v1, Lcn/kuwo/ui/fragment/OnlineMusicFragment$3;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment$3;-><init>(Lcn/kuwo/ui/fragment/OnlineMusicFragment;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/MusicAdapter;->setOnPlaySingleListener(Lcn/kuwo/ui/adapter/MusicAdapter$OnPlaySingleListener;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->setLoadingMoreEnable(Landroid/support/v7/widget/RecyclerView;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->musicAdapter:Lcn/kuwo/ui/adapter/MusicAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, v3}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->load(I)V

    return-void
.end method
