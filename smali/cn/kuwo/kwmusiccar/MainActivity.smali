.class public Lcn/kuwo/kwmusiccar/MainActivity;
.super Landroid/support/v4/app/FragmentActivity;

# interfaces
.implements Lcn/kuwo/base/util/KwTimer$Listener;


# static fields
.field private static final SEARCH_IN_FOREGROUND_TIME:J = 0xbb8L

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcn/kuwo/kwmusiccar/MainActivity;


# instance fields
.field private ACTION_USB_DEVICE_ATTACHED:Ljava/lang/String;

.field private ACTION_USB_DEVICE_DETTACHED:Ljava/lang/String;

.field private configMgrObserver:Lcn/kuwo/core/observers/IConfigMgrObserver;

.field private handler:Landroid/os/Handler;

.field private iAppObserver:Lcn/kuwo/core/observers/IAppObserver;

.field private inAnimation:Landroid/view/animation/AlphaAnimation;

.field private kuwoStartShowTime:J

.field private kwTimer:Lcn/kuwo/base/util/KwTimer;

.field private locationClient:Lcom/baidu/location/LocationClient;

.field private lyricsObserver:Lcn/kuwo/core/observers/ext/LyricsObserver;

.field private mImgFloating:Landroid/widget/ImageView;

.field private mIntent:Landroid/content/Intent;

.field private mScanReceiver:Lcn/kuwo/kwmusiccar/MainActivity$ScanReceiver;

.field private outAnimation:Landroid/view/animation/AlphaAnimation;

.field private playControlObserver:Lcn/kuwo/core/observers/ext/PlayControlObserver;

.field private playController:Lcn/kuwo/ui/PlayController;

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/kwmusiccar/MainActivity;->TAG:Ljava/lang/String;

    sput-object v0, Lcn/kuwo/kwmusiccar/MainActivity;->instance:Lcn/kuwo/kwmusiccar/MainActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    iput-object v2, p0, Lcn/kuwo/kwmusiccar/MainActivity;->playController:Lcn/kuwo/ui/PlayController;

    const-string v0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    iput-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->ACTION_USB_DEVICE_DETTACHED:Ljava/lang/String;

    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    iput-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->ACTION_USB_DEVICE_ATTACHED:Ljava/lang/String;

    new-instance v0, Lcn/kuwo/kwmusiccar/MainActivity$1;

    invoke-direct {v0, p0}, Lcn/kuwo/kwmusiccar/MainActivity$1;-><init>(Lcn/kuwo/kwmusiccar/MainActivity;)V

    iput-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->playControlObserver:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    iput-object v2, p0, Lcn/kuwo/kwmusiccar/MainActivity;->mIntent:Landroid/content/Intent;

    iput-object v2, p0, Lcn/kuwo/kwmusiccar/MainActivity;->kwTimer:Lcn/kuwo/base/util/KwTimer;

    new-instance v0, Lcn/kuwo/kwmusiccar/MainActivity$2;

    invoke-direct {v0, p0}, Lcn/kuwo/kwmusiccar/MainActivity$2;-><init>(Lcn/kuwo/kwmusiccar/MainActivity;)V

    iput-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->lyricsObserver:Lcn/kuwo/core/observers/ext/LyricsObserver;

    new-instance v0, Lcn/kuwo/kwmusiccar/MainActivity$3;

    invoke-direct {v0, p0}, Lcn/kuwo/kwmusiccar/MainActivity$3;-><init>(Lcn/kuwo/kwmusiccar/MainActivity;)V

    iput-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->iAppObserver:Lcn/kuwo/core/observers/IAppObserver;

    new-instance v0, Lcn/kuwo/kwmusiccar/MainActivity$ScanReceiver;

    invoke-direct {v0, p0, v2}, Lcn/kuwo/kwmusiccar/MainActivity$ScanReceiver;-><init>(Lcn/kuwo/kwmusiccar/MainActivity;Lcn/kuwo/kwmusiccar/MainActivity$1;)V

    iput-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->mScanReceiver:Lcn/kuwo/kwmusiccar/MainActivity$ScanReceiver;

    new-instance v0, Lcn/kuwo/kwmusiccar/MainActivity$4;

    invoke-direct {v0, p0}, Lcn/kuwo/kwmusiccar/MainActivity$4;-><init>(Lcn/kuwo/kwmusiccar/MainActivity;)V

    iput-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->configMgrObserver:Lcn/kuwo/core/observers/IConfigMgrObserver;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->kuwoStartShowTime:J

    iput-object v2, p0, Lcn/kuwo/kwmusiccar/MainActivity;->locationClient:Lcom/baidu/location/LocationClient;

    return-void
.end method

.method static synthetic access$100(Lcn/kuwo/kwmusiccar/MainActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/kwmusiccar/MainActivity;->setFullscreen(Z)V

    return-void
.end method

.method static synthetic access$200(Lcn/kuwo/kwmusiccar/MainActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->ACTION_USB_DEVICE_ATTACHED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcn/kuwo/kwmusiccar/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/kwmusiccar/MainActivity;->checkLocalMusicExist()V

    return-void
.end method

.method private checkLocalMusicExist()V
    .locals 2

    sget-object v0, Lcn/kuwo/base/util/KwThreadPool$JobType;->IMMEDIATELY:Lcn/kuwo/base/util/KwThreadPool$JobType;

    new-instance v1, Lcn/kuwo/kwmusiccar/MainActivity$5;

    invoke-direct {v1, p0}, Lcn/kuwo/kwmusiccar/MainActivity$5;-><init>(Lcn/kuwo/kwmusiccar/MainActivity;)V

    invoke-static {v0, v1}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V

    return-void
.end method

.method private exit(J)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lcn/kuwo/kwmusiccar/MainActivity$6;

    invoke-direct {v0, p0}, Lcn/kuwo/kwmusiccar/MainActivity$6;-><init>(Lcn/kuwo/kwmusiccar/MainActivity;)V

    iput-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->runnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/kuwo/kwmusiccar/MainActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static getInstance()Lcn/kuwo/kwmusiccar/MainActivity;
    .locals 1

    sget-object v0, Lcn/kuwo/kwmusiccar/MainActivity;->instance:Lcn/kuwo/kwmusiccar/MainActivity;

    return-object v0
.end method

.method private processIntent(Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcn/kuwo/kwmusiccar/MainActivity;->getInstance()Lcn/kuwo/kwmusiccar/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/kwmusiccar/KwCarPlay;->sendEnterBroadcast(Landroid/content/Context;)V

    invoke-static {p1}, Lcn/kuwo/kwmusiccar/KwCarPlay;->handleCarPlay(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcn/kuwo/kwmusiccar/KwCarPlay;->isEnterBackground(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0xbb8

    invoke-direct {p0, v0, v1}, Lcn/kuwo/kwmusiccar/MainActivity;->exit(J)V

    :cond_2
    iput-object v2, p0, Lcn/kuwo/kwmusiccar/MainActivity;->mIntent:Landroid/content/Intent;

    invoke-static {}, Lcn/kuwo/kwmusiccar/KwCarPlay;->isCarPlayScanFileRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->g()Lcn/kuwo/mod/localmgr/ILocalMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/localmgr/ILocalMgr;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->g()Lcn/kuwo/mod/localmgr/ILocalMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/localmgr/ILocalMgr;->e()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/kuwo/kwmusiccar/MainActivity;->processUri(Landroid/net/Uri;)V

    iput-object v2, p0, Lcn/kuwo/kwmusiccar/MainActivity;->mIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method private setFullscreen(Z)V
    .locals 3

    invoke-virtual {p0}, Lcn/kuwo/kwmusiccar/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_0

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/kuwo/kwmusiccar/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcn/kuwo/kwmusiccar/MainActivity;->isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcn/kuwo/kwmusiccar/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcn/kuwo/kwmusiccar/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcn/kuwo/kwmusiccar/MainActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v2, p1, Landroid/widget/EditText;

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, v2, v0

    aget v2, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v3, v3

    cmpl-float v3, v6, v3

    if-lez v3, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v3, v4

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v3, 0x1

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget-boolean v0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->initFinished:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/kuwo/kwmusiccar/WelcomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/kuwo/kwmusiccar/MainActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcn/kuwo/kwmusiccar/MainActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    sput-object p0, Lcn/kuwo/kwmusiccar/MainActivity;->instance:Lcn/kuwo/kwmusiccar/MainActivity;

    const/high16 v0, 0x7f040000

    invoke-virtual {p0, v0}, Lcn/kuwo/kwmusiccar/MainActivity;->setContentView(I)V

    new-instance v0, Lcn/kuwo/ui/PlayController;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/PlayController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->playController:Lcn/kuwo/ui/PlayController;

    invoke-static {}, Lcn/kuwo/mod/settings/KwSettingMgr;->a()Lcn/kuwo/mod/settings/KwSettingMgr;

    move-result-object v0

    const-string v1, "fullScreen"

    invoke-virtual {v0, v1, v8}, Lcn/kuwo/mod/settings/KwSettingMgr;->a(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, ""

    const-string v2, "key_set_full_screen"

    invoke-static {v1, v2, v0}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/kuwo/kwmusiccar/MainActivity;->setFullscreen(Z)V

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v0

    const v1, 0x7f0b0005

    const v2, 0x7f0b001b

    invoke-virtual {v0, p0, v1, v2}, Lcn/kuwo/ui/fragment/KwFragmentController;->init(Landroid/support/v4/app/FragmentActivity;II)V

    invoke-static {v3}, Lcn/kuwo/ui/JumpUtils;->jump(I)V

    invoke-static {v3}, Lcn/kuwo/kwmusiccar/KwCarPlay;->setMainActivityStatus(I)V

    invoke-virtual {p0}, Lcn/kuwo/kwmusiccar/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->mIntent:Landroid/content/Intent;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->g()Lcn/kuwo/mod/localmgr/ILocalMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/localmgr/ILocalMgr;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->g()Lcn/kuwo/mod/localmgr/ILocalMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/localmgr/ILocalMgr;->e()V

    :cond_1
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcn/kuwo/kwmusiccar/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    invoke-direct {p0}, Lcn/kuwo/kwmusiccar/MainActivity;->checkLocalMusicExist()V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->c:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/kwmusiccar/MainActivity;->lyricsObserver:Lcn/kuwo/core/observers/ext/LyricsObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/kwmusiccar/MainActivity;->playControlObserver:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/kwmusiccar/MainActivity;->iAppObserver:Lcn/kuwo/core/observers/IAppObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/base/util/CopyrightInfo;->init()V

    invoke-static {}, Lcn/kuwo/mod/upgrade/UpgradeManager;->a()V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->h:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/kwmusiccar/MainActivity;->configMgrObserver:Lcn/kuwo/core/observers/IConfigMgrObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    const-string v0, ""

    const-string v1, "login_sid"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcn/kuwo/mod/userinfo/UserInfoHelper;->a()V

    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/kwmusiccar/MainActivity;->ACTION_USB_DEVICE_DETTACHED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/kwmusiccar/MainActivity;->ACTION_USB_DEVICE_ATTACHED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/kwmusiccar/MainActivity;->mScanReceiver:Lcn/kuwo/kwmusiccar/MainActivity$ScanReceiver;

    invoke-virtual {p0, v1, v0}, Lcn/kuwo/kwmusiccar/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->g()Z

    move-result v0

    const-string v2, "MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isKuwoNormalExit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->e()J

    move-result-wide v2

    if-nez v0, :cond_5

    const-string v0, "MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lastCurrentMillis: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " EXIT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->b()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->c:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    invoke-static {}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->b()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static {v0, v2, v3, v4, v5}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;JJ)V

    invoke-static {}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->e:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    invoke-static {}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->c()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static {v0, v2, v3, v4, v5}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;JJ)V

    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;->a:Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;

    invoke-static {}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->d()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static/range {v0 .. v5}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;Ljava/lang/String;JJ)V

    :cond_5
    invoke-static {v8}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->b(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(J)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/kwmusiccar/MainActivity;->instance:Lcn/kuwo/kwmusiccar/MainActivity;

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/kuwo/kwmusiccar/KwCarPlay;->setMainActivityStatus(I)V

    invoke-virtual {p0}, Lcn/kuwo/kwmusiccar/MainActivity;->stopTimer()V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->c:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/kwmusiccar/MainActivity;->lyricsObserver:Lcn/kuwo/core/observers/ext/LyricsObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/kwmusiccar/MainActivity;->playControlObserver:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->h:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/kwmusiccar/MainActivity;->configMgrObserver:Lcn/kuwo/core/observers/IConfigMgrObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/kwmusiccar/MainActivity;->iAppObserver:Lcn/kuwo/core/observers/IAppObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/kuwo/kwmusiccar/MainActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->mScanReceiver:Lcn/kuwo/kwmusiccar/MainActivity$ScanReceiver;

    invoke-virtual {p0, v0}, Lcn/kuwo/kwmusiccar/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "MainActivity"

    const-string v1, "onDestory"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->playController:Lcn/kuwo/ui/PlayController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->playController:Lcn/kuwo/ui/PlayController;

    invoke-virtual {v0}, Lcn/kuwo/ui/PlayController;->release()V

    :cond_1
    invoke-static {}, Lcn/kuwo/base/util/MediaButtonRegister;->getInstance()Lcn/kuwo/base/util/MediaButtonRegister;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/util/MediaButtonRegister;->stopRegister()V

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->exitApp()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcn/kuwo/kwmusiccar/MainActivity;->playController:Lcn/kuwo/ui/PlayController;

    invoke-virtual {v1}, Lcn/kuwo/ui/PlayController;->onBackClick()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/ui/fragment/KwFragmentController;->getTopFragment()Lcn/kuwo/ui/fragment/BaseKuwoFragment;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, p2}, Lcn/kuwo/ui/fragment/BaseKuwoFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    invoke-static {}, Lcn/kuwo/ui/fragment/KwFragmentController;->getInstance()Lcn/kuwo/ui/fragment/KwFragmentController;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/ui/fragment/KwFragmentController;->back()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcn/kuwo/kwmusiccar/MainActivity;->getInstance()Lcn/kuwo/kwmusiccar/MainActivity;

    move-result-object v0

    const-string v1, "\u9177\u6211\u63d0\u793a"

    const-string v2, "\u662f\u5426\u9000\u51fa\u9177\u6211\uff1f"

    const-string v3, "\u9000\u51fa\u9177\u6211"

    const-string v4, "\u8fdb\u5165\u540e\u53f0"

    new-instance v5, Lcn/kuwo/kwmusiccar/MainActivity$7;

    invoke-direct {v5, p0}, Lcn/kuwo/kwmusiccar/MainActivity$7;-><init>(Lcn/kuwo/kwmusiccar/MainActivity;)V

    invoke-static/range {v0 .. v5}, Lcn/kuwo/ui/dialog/DialogUtils;->showSimpleDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    iput-object p1, p0, Lcn/kuwo/kwmusiccar/MainActivity;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method protected onPause()V
    .locals 8

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/kuwo/kwmusiccar/App;->setMainActivityShowing(Z)V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    sget-object v0, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->e:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcn/kuwo/kwmusiccar/MainActivity;->kuwoStartShowTime:J

    sub-long/2addr v4, v6

    invoke-static {v0, v2, v3, v4, v5}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;JJ)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Z)V

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->locationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->locationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->locationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->stop()V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "\u827e\u8fe6\u53f7"

    const-string v1, "onRestoreInstanceState"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 6

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    invoke-static {v1}, Lcn/kuwo/kwmusiccar/App;->setMainActivityShowing(Z)V

    sget-boolean v0, Lcn/kuwo/base/util/DeviceUtils;->START_LOG_SENDED:Z

    if-nez v0, :cond_0

    sput-boolean v1, Lcn/kuwo/base/util/DeviceUtils;->START_LOG_SENDED:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcn/kuwo/kwmusiccar/App;->START_TIME:J

    sub-long/2addr v0, v2

    const-string v2, "appstart"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcn/kuwo/kwmusiccar/App;->START_TIME:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STARTTM:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/log/LogDef$LogType;->l:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v1}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcn/kuwo/base/log/ServiceLevelLogger;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    invoke-virtual {p0}, Lcn/kuwo/kwmusiccar/MainActivity;->startTimer()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcn/kuwo/kwmusiccar/MainActivity;->processIntent(Landroid/content/Intent;)V

    const-string v0, "MainActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/kuwo/kwmusiccar/MainActivity;->checkLocalMusicExist()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->kuwoStartShowTime:J

    iget-wide v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->kuwoStartShowTime:J

    invoke-static {v0, v1}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->b(J)V

    sget-object v0, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->d:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    invoke-static {v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;)V

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->locationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->locationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->locationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->start()V

    :cond_1
    invoke-static {}, Lcn/kuwo/base/util/MediaButtonRegister;->getInstance()Lcn/kuwo/base/util/MediaButtonRegister;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/kuwo/base/util/MediaButtonRegister;->registerMediaButtonEventReveiver(Landroid/content/Context;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "\u827e\u8fe6\u53f7"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStateNotSaved()V

    const-string v0, "\u827e\u8fe6\u53f7"

    const-string v1, "onStateNotSaved"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->updateForgroundState()V

    return-void
.end method

.method public onTimer(Lcn/kuwo/base/util/KwTimer;)V
    .locals 1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->e()Lcn/kuwo/base/bean/Music;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    return-void
.end method

.method public processUri(Landroid/net/Uri;)V
    .locals 7

    const/16 v6, 0xe

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    :cond_2
    :goto_1
    sget-object v0, Lcn/kuwo/kwmusiccar/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/sdcard"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/sdcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "/sdcard"

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->g()Lcn/kuwo/mod/localmgr/ILocalMgr;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/kuwo/mod/localmgr/ILocalMgr;->a(Landroid/net/Uri;)V

    goto :goto_0

    :cond_4
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcn/kuwo/kwmusiccar/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v1

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_5

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v6, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v6, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method public startTimer()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->kwTimer:Lcn/kuwo/base/util/KwTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/base/util/KwTimer;

    invoke-direct {v0, p0}, Lcn/kuwo/base/util/KwTimer;-><init>(Lcn/kuwo/base/util/KwTimer$Listener;)V

    iput-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->kwTimer:Lcn/kuwo/base/util/KwTimer;

    :cond_0
    iget-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->kwTimer:Lcn/kuwo/base/util/KwTimer;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcn/kuwo/base/util/KwTimer;->start(I)V

    return-void
.end method

.method public stopTimer()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->kwTimer:Lcn/kuwo/base/util/KwTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity;->kwTimer:Lcn/kuwo/base/util/KwTimer;

    invoke-virtual {v0}, Lcn/kuwo/base/util/KwTimer;->stop()V

    :cond_0
    return-void
.end method
