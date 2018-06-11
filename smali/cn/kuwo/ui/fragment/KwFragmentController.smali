.class public Lcn/kuwo/ui/fragment/KwFragmentController;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static _INSTANCE:Lcn/kuwo/ui/fragment/KwFragmentController;

.field private static _isInteralCall:Z


# instance fields
.field private _onBackStackChangedListener:Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

.field private backStacks:Ljava/util/Stack;

.field private containerId:I

.field private fm:Landroid/support/v4/app/FragmentManager;

.field private fullscreenContainerId:I

.field private rootTags:Ljava/util/List;

.field private rootTopTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcn/kuwo/ui/fragment/KwFragmentController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuwo/ui/fragment/KwFragmentController;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/kuwo/ui/fragment/KwFragmentController;->_isInteralCall:Z

    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/ui/fragment/KwFragmentController;->_INSTANCE:Lcn/kuwo/ui/fragment/KwFragmentController;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->fm:Landroid/support/v4/app/FragmentManager;

    iput v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->containerId:I

    iput v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->fullscreenContainerId:I

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->backStacks:Ljava/util/Stack;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->rootTags:Ljava/util/List;

    iput-object v1, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->rootTopTag:Ljava/lang/String;

    new-instance v0, Lcn/kuwo/ui/fragment/KwFragmentController$1;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/fragment/KwFragmentController$1;-><init>(Lcn/kuwo/ui/fragment/KwFragmentController;)V

    iput-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->_onBackStackChangedListener:Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    sget-boolean v0, Lcn/kuwo/ui/fragment/KwFragmentController;->_isInteralCall:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "\u4e0d\u5141\u8bb8\u76f4\u63a5\u8c03\u7528\u8fd9\u4e2a\u65b9\u6cd5,\u8bf7\u8c03\u7528getInstance\u83b7\u5f97\u5b9e\u4f8b\u5bf9\u8c61"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/kuwo/ui/fragment/KwFragmentController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcn/kuwo/ui/fragment/KwFragmentController;)Landroid/support/v4/app/FragmentManager;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->fm:Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method

.method public static getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;
    .locals 2

    sget-object v0, Lcn/kuwo/ui/fragment/KwFragmentController;->_INSTANCE:Lcn/kuwo/ui/fragment/KwFragmentController;

    if-nez v0, :cond_1

    const-class v1, Lcn/kuwo/ui/fragment/KwFragmentController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/kuwo/ui/fragment/KwFragmentController;->_INSTANCE:Lcn/kuwo/ui/fragment/KwFragmentController;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcn/kuwo/ui/fragment/KwFragmentController;->_isInteralCall:Z

    new-instance v0, Lcn/kuwo/ui/fragment/KwFragmentController;

    invoke-direct {v0}, Lcn/kuwo/ui/fragment/KwFragmentController;-><init>()V

    sput-object v0, Lcn/kuwo/ui/fragment/KwFragmentController;->_INSTANCE:Lcn/kuwo/ui/fragment/KwFragmentController;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/kuwo/ui/fragment/KwFragmentController;->_isInteralCall:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcn/kuwo/ui/fragment/KwFragmentController;->_INSTANCE:Lcn/kuwo/ui/fragment/KwFragmentController;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public back()Z
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->backStacks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->backStacks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->rootTopTag:Ljava/lang/String;

    iget-object v3, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->backStacks:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-lt v3, v2, :cond_1

    iget-object v1, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->backStacks:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_1
    iget-object v3, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->fm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    iget-object v3, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->fm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    iget-object v3, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->fm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v3, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    move v0, v2

    goto :goto_0
.end method

.method public getBackstackTopFragment()Lcn/kuwo/ui/fragment/BaseKuwoFragment;
    .locals 2

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/KwFragmentController;->getBackstackTopTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->fm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBackstackTopTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->backStacks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->backStacks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getRootTopFragment()Lcn/kuwo/ui/fragment/BaseKuwoFragment;
    .locals 2

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/KwFragmentController;->getRootTopTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->fm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRootTopTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->rootTopTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTopFragment()Lcn/kuwo/ui/fragment/BaseKuwoFragment;
    .locals 2

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/KwFragmentController;->getTopTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->fm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTopTag()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/KwFragmentController;->getBackstackTopTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/KwFragmentController;->getRootTopTag()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public init(Landroid/support/v4/app/FragmentActivity;II)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->fm:Landroid/support/v4/app/FragmentManager;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p3, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->fullscreenContainerId:I

    iput p2, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->containerId:I

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->fm:Landroid/support/v4/app/FragmentManager;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->fm:Landroid/support/v4/app/FragmentManager;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->_onBackStackChangedListener:Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    goto :goto_0
.end method

.method public onActivityPuase()V
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/KwFragmentController;->getTopFragment()Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onFragmentPause()V

    :cond_0
    return-void
.end method

.method public onActivityResumse()V
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/KwFragmentController;->getTopFragment()Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onFragmentResume()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->fm:Landroid/support/v4/app/FragmentManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->fm:Landroid/support/v4/app/FragmentManager;

    :cond_0
    return-void
.end method

.method public showFragment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcn/kuwo/ui/fragment/BaseKuwoFragment;
    .locals 7

	const-string v6, "=====KwFragmentController====="
	
	invoke-static {v6, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    const/4 v1, 0x0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->fm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    iget-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->backStacks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/KwFragmentController;->getBackstackTopTag()Ljava/lang/String;

    move-result-object v0
	
	const-string v6, "getBackstackTopTag======v0=="
	
	invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
	
	
    :goto_0
    iget-object v3, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->rootTags:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->backStacks:Ljava/util/Stack;

    invoke-virtual {v4, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
	
	const-string v6, "condition=:goto_0 =========p1   ======   "
	
	invoke-static {v6, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
	
    if-nez v3, :cond_8

    if-nez v4, :cond_8

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
	
	const-string v6, "condition=:try_start_0 ========newInstance BaseKuwoFragment======   "
	
	invoke-static {v6, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
	
    check-cast v0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_7

    invoke-virtual {v1, p3}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->setKuwoBundle(Landroid/os/Bundle;)V

    invoke-virtual {v1, p1}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->setFragmentTag(Ljava/lang/String;)V

    instance-of v0, v1, Lcn/kuwo/ui/fragment/FullScreenFragmentInterface;
	
	const-string v6, "condition:goto_1  ======p1 =======   "
	
	invoke-static {v6, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
	
    if-eqz v0, :cond_3

    iget v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->fullscreenContainerId:I

    invoke-virtual {v2, v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :goto_2
    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/KwFragmentController;->getBackstackTopFragment()Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    :goto_3
    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_1
    instance-of v0, v1, Lcn/kuwo/ui/fragment/RootFragmentInterface;

    if-eqz v0, :cond_5
	const-string v6, "condition::cond_1  ======p1 =======   "
	
	invoke-static {v6, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
    iput-object p1, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->rootTopTag:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->rootTags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->backStacks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_2
    :goto_4
    iget-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->backStacks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->backStacks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
	const-string v6, "condition::cond_2  ======backStacks pop() v0 =======   "
	
	invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
	
    iget-object v3, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->fm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_4

    :cond_3
    iget v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->containerId:I

    invoke-virtual {v2, v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
	const-string v6, "condition::cond_3  ======FragmentTransaction add p1 =======   "
	
	invoke-static {v6, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->rootTopTag:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->fm:Landroid/support/v4/app/FragmentManager;

    iget-object v3, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->rootTopTag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;
	const-string v6, "condition::cond_4  ======findFragmentByTag v3 =======   "
	
	invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->backStacks:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
	const-string v6, "condition=:cond_5  ===========   "
	
	invoke-static {v6, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
    :cond_6
	const-string v6, "condition=:cond_6  ===========   "
	
	invoke-static {v6, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_7
	const-string v6, "condition=:cond_7  ===========   "
	
	invoke-static {v6, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
    move-object v0, v1

    :goto_5
	
	const-string v6, "condition=:goto_5  ===========   "
	
	invoke-static {v6, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
	
    return-object v0

    :cond_8
    if-eqz v4, :cond_e

    if-nez v5, :cond_d
	const-string v6, "condition=:cond_8  ===========   "
	
	invoke-static {v6, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
    move-object v1, v0

    :cond_9
    :goto_6
    iget-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->backStacks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
	const-string v6, "condition::cond_9:goto_6  ======v1=======   "
	
	invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
    if-nez v0, :cond_b

    iget-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->backStacks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->backStacks:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {p0}, Lcn/kuwo/ui/fragment/KwFragmentController;->getBackstackTopTag()Ljava/lang/String;

    move-result-object v1

    :cond_a
    iget-object v3, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->fm:Landroid/support/v4/app/FragmentManager;
	
	const-string v6, "condition=cond_a  ======v0=======   "
	
	invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
	
    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
	
    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->fm:Landroid/support/v4/app/FragmentManager;
	
	const-string v6, "condition=cond_b  ======p1=======   "
	
	invoke-static {v6, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
	
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_c
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
	
	const-string v6, "condition=cond_c  ======commitAllowingStateLoss=======   "
	
	invoke-static {v6, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
	
    :cond_d
    :goto_7
    iget-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->fm:Landroid/support/v4/app/FragmentManager;
	
	const-string v6, "condition=:cond_d:goto_7  ======findFragmentByTag p1=======   "
	
	invoke-static {v6, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
	
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    goto :goto_5

    :cond_e
	
	const-string v6, "condition=:cond_e  ===========   "
	
	invoke-static {v6, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
	
    if-eqz v3, :cond_d
	
    :cond_f
    :goto_8
	
    iget-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->backStacks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->backStacks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
	
	const-string v6, "condition=:cond_f:goto_8  ======v0=======   "
	
	invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
	
    iget-object v1, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->fm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_8

    :cond_10
    iget-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->rootTopTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->fm:Landroid/support/v4/app/FragmentManager;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->rootTopTag:Ljava/lang/String;
	
	const-string v6, "condition=:cond_10  ======v1=======   "
	
	invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_11
    iput-object p1, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->rootTopTag:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/ui/fragment/KwFragmentController;->fm:Landroid/support/v4/app/FragmentManager;

	const-string v6, "condition=:cond_11  ======p1=======   "
	
	invoke-static {v6, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
	
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_12
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
	const-string v6, "condition=:cond_12  ======commitAllowingStateLoss=======   "
	
	invoke-static {v6, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I 
    goto :goto_7

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :cond_13
    move-object v0, v1

    goto/16 :goto_0
.end method
