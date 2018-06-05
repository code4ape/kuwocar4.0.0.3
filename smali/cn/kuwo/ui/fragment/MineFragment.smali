.class public Lcn/kuwo/ui/fragment/MineFragment;
.super Lcn/kuwo/ui/fragment/BaseLocalRootFragment;


# instance fields
.field private adapter:Lcn/kuwo/ui/adapter/KuwoLocalAdapter;

.field private listObserver:Lcn/kuwo/core/observers/ext/ListObserver;

.field private rvContent:Landroid/support/v7/widget/RecyclerView;

.field private userInfoMgrObserver:Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/BaseLocalRootFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MineFragment;->adapter:Lcn/kuwo/ui/adapter/KuwoLocalAdapter;

    new-instance v0, Lcn/kuwo/ui/fragment/MineFragment$2;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/MineFragment$2;-><init>(Lcn/kuwo/ui/fragment/MineFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MineFragment;->listObserver:Lcn/kuwo/core/observers/ext/ListObserver;

    new-instance v0, Lcn/kuwo/ui/fragment/MineFragment$3;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/MineFragment$3;-><init>(Lcn/kuwo/ui/fragment/MineFragment;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MineFragment;->userInfoMgrObserver:Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/ui/fragment/MineFragment;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MineFragment;->update()V

    return-void
.end method

.method private update()V
    .locals 6

    const/16 v5, 0xa

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v2, "\u6700\u8fd1\u64ad\u653e"

    invoke-interface {v0, v2}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->getItem(Lcn/kuwo/base/bean/MusicList;)Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v2, "\u6211\u559c\u6b22\u542c"

    invoke-interface {v0, v2}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->getItem(Lcn/kuwo/base/bean/MusicList;)Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    const-string v2, "\u76ae\u80a4"

    invoke-static {v0, v2}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->getItem(ILjava/lang/String;)Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x3

    const-string v2, "\u97f3\u6548"

    invoke-static {v0, v2}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->getItem(ILjava/lang/String;)Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xc

    const-string v2, "\u4e0b\u8f7d\u7ba1\u7406"

    invoke-static {v0, v2}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->getItem(ILjava/lang/String;)Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/list/IListMgr;->e()Ljava/util/List;

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

    check-cast v0, Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v3

    sget-object v4, Lcn/kuwo/base/bean/ListType;->h:Lcn/kuwo/base/bean/ListType;

    if-eq v3, v4, :cond_0

    invoke-static {v0}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->getItem(Lcn/kuwo/base/bean/MusicList;)Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/kuwo/mod/settings/KwSettingMgr;->a()Lcn/kuwo/mod/settings/KwSettingMgr;

    move-result-object v0

    const-string v2, "setting_listen"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcn/kuwo/mod/settings/KwSettingMgr;->a(Ljava/lang/String;I)I

    move-result v0

    if-ge v0, v5, :cond_2

    const/4 v0, 0x4

    const-string v2, "\u8bd5\u542c\u97f3\u8d28"

    invoke-static {v0, v2}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->getItem(ILjava/lang/String;)Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v0, 0x6

    const-string v2, "\u4e0b\u8f7d\u97f3\u8d28"

    invoke-static {v0, v2}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->getItem(ILjava/lang/String;)Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xb

    const-string v2, "\u8fb9\u542c\u8fb9\u5b58"

    invoke-static {v0, v2}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->getItem(ILjava/lang/String;)Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x8

    const-string v2, "\u6e05\u9664\u7f13\u5b58"

    invoke-static {v0, v2}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->getItem(ILjava/lang/String;)Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x9

    const-string v2, "\u68c0\u67e5\u66f4\u65b0"

    invoke-static {v0, v2}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->getItem(ILjava/lang/String;)Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x5

    const-string v2, "\u767b\u5f55"

    invoke-static {v0, v2}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->getItem(ILjava/lang/String;)Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "\u9000\u51fa"

    invoke-static {v5, v0}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;->getItem(ILjava/lang/String;)Lcn/kuwo/ui/adapter/KuwoLocalAdapter$KuwoLocalItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MineFragment;->adapter:Lcn/kuwo/ui/adapter/KuwoLocalAdapter;

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter;->setItems(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcn/kuwo/ui/fragment/BaseLocalRootFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/fragment/MineFragment;->listObserver:Lcn/kuwo/core/observers/ext/ListObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/fragment/MineFragment;->userInfoMgrObserver:Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcn/kuwo/ui/fragment/BaseLocalRootFragment;->onDestroy()V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/fragment/MineFragment;->listObserver:Lcn/kuwo/core/observers/ext/ListObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/ui/fragment/MineFragment;->userInfoMgrObserver:Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcn/kuwo/ui/fragment/BaseLocalRootFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0b002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MineFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MineFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcn/kuwo/ui/adapter/KuwoLocalAdapter;

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/MineFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/MineFragment;->adapter:Lcn/kuwo/ui/adapter/KuwoLocalAdapter;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MineFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcn/kuwo/ui/itemdecoration/SpaceItemDecoration;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MineFragment;->rvContent:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MineFragment;->adapter:Lcn/kuwo/ui/adapter/KuwoLocalAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-direct {p0}, Lcn/kuwo/ui/fragment/MineFragment;->update()V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MineFragment;->adapter:Lcn/kuwo/ui/adapter/KuwoLocalAdapter;

    new-instance v1, Lcn/kuwo/ui/fragment/MineFragment$1;

    invoke-direct {v1, p0}, Lcn/kuwo/ui/fragment/MineFragment$1;-><init>(Lcn/kuwo/ui/fragment/MineFragment;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/ui/adapter/KuwoLocalAdapter;->setOnItemClickListener(Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;)V

    return-void
.end method
