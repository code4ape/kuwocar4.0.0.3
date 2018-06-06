.class public Lcn/kuwo/kwmusiccar/WelcomeActivity;
.super Landroid/support/v4/app/FragmentActivity;

# interfaces
.implements Lcn/kuwo/core/observers/IAppObserver;


# static fields
.field public static final WELCOME_TIME:I = 0x5dc

.field public static currentWTime:J

.field public static volatile initFinished:Z


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mInSampleSize:I

.field mLogo:Landroid/widget/ImageView;

.field mWelcomeImage:Landroid/widget/ImageView;

.field private runner:Lcn/kuwo/core/messagemgr/MessageManager$Runner;

.field private startRingPlayer:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->initFinished:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    iput-object v0, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->runner:Lcn/kuwo/core/messagemgr/MessageManager$Runner;

    iput-object v0, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->mWelcomeImage:Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput v0, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->mInSampleSize:I

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/kwmusiccar/WelcomeActivity;)Lcn/kuwo/core/messagemgr/MessageManager$Runner;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->runner:Lcn/kuwo/core/messagemgr/MessageManager$Runner;

    return-object v0
.end method

.method static synthetic access$100(Lcn/kuwo/kwmusiccar/WelcomeActivity;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->startActivity(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$302(Lcn/kuwo/kwmusiccar/WelcomeActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->startRingPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private hasSDCard()Z
    .locals 2

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private fs()V
    .registers 3

    .prologue
    const/16 v1, 0x400

    .line 30
    invoke-virtual {p0}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 33
    invoke-virtual {p0}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 44
    return-void
.end method
.method private hideNavigationBar()V
    .locals 2

    invoke-virtual {p0}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1506

    invoke-direct {p0}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->fs()V

    return-void
.end method

.method private init()V
    .locals 3

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->ReadConf()V

    invoke-static {p0}, Lcn/kuwo/base/util/DeviceUtils;->init(Landroid/app/Activity;)Z

    sget-boolean v0, Lcn/kuwo/base/util/DeviceUtils;->LOWER_DEVICE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->mInSampleSize:I

    :cond_0
    invoke-direct {p0}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->playStartRing()V

    invoke-direct {p0}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->loadWelcomePic()V

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->fetchAppUid()V

    invoke-static {}, Lcn/kuwo/base/util/KwExceptionHandler;->initAndSendLogs()V

    sget-object v0, Lcn/kuwo/base/util/KwThreadPool$JobType;->IMMEDIATELY:Lcn/kuwo/base/util/KwThreadPool$JobType;

    new-instance v1, Lcn/kuwo/kwmusiccar/WelcomeActivity$InitRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcn/kuwo/kwmusiccar/WelcomeActivity$InitRunnable;-><init>(Lcn/kuwo/kwmusiccar/WelcomeActivity$1;)V

    invoke-static {v0, v1}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V

    return-void
.end method

.method private inits()V
    .locals 2

    invoke-direct {p0}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->init()V

    new-instance v0, Lcn/kuwo/kwmusiccar/WelcomeActivity$1;

    invoke-direct {v0, p0}, Lcn/kuwo/kwmusiccar/WelcomeActivity$1;-><init>(Lcn/kuwo/kwmusiccar/WelcomeActivity;)V

    iput-object v0, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->runner:Lcn/kuwo/core/messagemgr/MessageManager$Runner;

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->runner:Lcn/kuwo/core/messagemgr/MessageManager$Runner;

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method

.method private loadWelcomePic()V
    .locals 0

    return-void
.end method

.method private needShowGuide()Z
    .locals 1

    sget-boolean v0, Lcn/kuwo/base/util/DeviceUtils;->FIRST_INSTALL:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcn/kuwo/base/util/DeviceUtils;->COVER_INSTALL:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private playStartRing()V
    .locals 2

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->startRingPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->startRingPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->startRingPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/kuwo/kwmusiccar/WelcomeActivity$2;

    invoke-direct {v1, p0}, Lcn/kuwo/kwmusiccar/WelcomeActivity$2;-><init>(Lcn/kuwo/kwmusiccar/WelcomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->startRingPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method

.method private startActivity(Ljava/lang/Class;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->finish()V

    return-void
.end method


# virtual methods
.method public IAppObserver_InitFinished()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->initFinished:Z

    return-void
.end method

.method public IAppObserver_NetworkStateChanged(ZZ)V
    .locals 0

    return-void
.end method

.method public IAppObserver_OnBackground()V
    .locals 0

    return-void
.end method

.method public IAppObserver_OnForground()V
    .locals 0

    return-void
.end method

.method public IAppObserver_OnLowMemory()V
    .locals 0

    return-void
.end method

.method public IAppObserver_OnNowplayingShow(Z)V
    .locals 0

    return-void
.end method

.method public IAppObserver_OnUpdateDatabase()V
    .locals 1

    const-string v0, "\u6570\u636e\u5347\u7ea7\u4e2d\uff0c\u8bf7\u7a0d\u540e..."

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    return-void
.end method

.method public IAppObserver_PrepareExitApp()V
    .locals 0

    return-void
.end method

.method public IAppObserver_SDCardStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public IAppObserver_WelcomePageDisappear()V
    .locals 2

    const-string v0, "WelcomeActivity"

    const-string v1, "IAppObserver_WelcomePageDisappear"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

	invoke-direct {p0}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->fs()V
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->currentWTime:J

    invoke-virtual {p0}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "cn.kuwo.kwmusicauto.action.STARTAPP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cn.kuwo.kwmusicauto.action.PLAY_MUSIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cn.kuwo.kwmusicauto.action.SEARCH_MUSIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cn.kuwo.kwmusicauto.action.PLAY_ALL_MUSIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cn.kuwo.kwmusicauto.action.PLAY_ALBUM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "kuwo_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/kuwo/kwmusiccar/App;->hasRightKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "enter_background"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "cn.kuwo.kwmusicauto.action.STARTAPP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    :cond_3
    sget-boolean v0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->initFinished:Z

    if-eqz v0, :cond_4

    const-class v0, Lcn/kuwo/kwmusiccar/MainActivity;

    invoke-direct {p0, v0}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->hasSDCard()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/kuwo/kwmusiccar/NoSDCardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->finish()V

    goto :goto_0

    :cond_5
    const v0, 0x7f04002d

    invoke-virtual {p0, v0}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->setContentView(I)V

    const v0, 0x7f0b00a4

    invoke-virtual {p0, v0}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->mWelcomeImage:Landroid/widget/ImageView;

    const v0, 0x7f0b00a5

    invoke-virtual {p0, v0}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->mLogo:Landroid/widget/ImageView;

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/mod/settings/KwSettingMgr;->a()Lcn/kuwo/mod/settings/KwSettingMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/mod/settings/KwSettingMgr;->b()V

    invoke-direct {p0}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->inits()V

    invoke-static {}, Lcn/kuwo/mod/theme/ThemeMgr;->a()Lcn/kuwo/mod/theme/ThemeMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/kuwo/mod/theme/ThemeMgr;->a(Landroid/content/Context;)V

    invoke-static {}, Lcn/kuwo/mod/theme/ThemeMgr;->a()Lcn/kuwo/mod/theme/ThemeMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/mod/theme/ThemeMgr;->b()Lcn/kuwo/mod/theme/KwTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/mod/theme/KwTheme;->a()I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->mWelcomeImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcn/kuwo/mod/theme/KwTheme;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    invoke-virtual {v0}, Lcn/kuwo/mod/theme/KwTheme;->b()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcn/kuwo/mod/theme/KwTheme;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->mWelcomeImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->mWelcomeImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->mBitmap:Landroid/graphics/Bitmap;

    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .param p1, "hasFocus"    # Z

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onWindowFocusChanged(Z)V

    .line 18
    if-eqz p1, :cond_12

    .line 19
    invoke-virtual {p0}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 27
    :cond_12
    return-void
.end method