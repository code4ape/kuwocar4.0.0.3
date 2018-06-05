.class public Lcn/kuwo/base/util/MediaButtonRegister;
.super Ljava/lang/Object;


# static fields
.field private static INSTANCE:Lcn/kuwo/base/util/MediaButtonRegister;

.field private static session:Landroid/media/session/MediaSession;


# instance fields
.field private registerRunnable:Lcn/kuwo/base/util/MediaButtonRegister$MediaButtonRegisterRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/kuwo/base/util/MediaButtonRegister;

    invoke-direct {v0}, Lcn/kuwo/base/util/MediaButtonRegister;-><init>()V

    sput-object v0, Lcn/kuwo/base/util/MediaButtonRegister;->INSTANCE:Lcn/kuwo/base/util/MediaButtonRegister;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/base/util/MediaButtonRegister;->registerRunnable:Lcn/kuwo/base/util/MediaButtonRegister$MediaButtonRegisterRunnable;

    return-void
.end method

.method public static getInstance()Lcn/kuwo/base/util/MediaButtonRegister;
    .locals 1

    sget-object v0, Lcn/kuwo/base/util/MediaButtonRegister;->INSTANCE:Lcn/kuwo/base/util/MediaButtonRegister;

    return-object v0
.end method

.method private static setMediaButtonEvent(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const-string v0, "cn.kuwo.kwmusiccar"

    const-string v1, "\u827e\u8fe6\u53f7"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMediaButtonEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcn/kuwo/base/util/MediaButtonRegister;->session:Landroid/media/session/MediaSession;

    if-eqz v1, :cond_0

    sget-object v1, Lcn/kuwo/base/util/MediaButtonRegister;->session:Landroid/media/session/MediaSession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setActive(Z)V

    const/4 v1, 0x0

    sput-object v1, Lcn/kuwo/base/util/MediaButtonRegister;->session:Landroid/media/session/MediaSession;

    :cond_0
    sget-object v1, Lcn/kuwo/base/util/MediaButtonRegister;->session:Landroid/media/session/MediaSession;

    if-nez v1, :cond_1

    new-instance v1, Landroid/media/session/MediaSession;

    invoke-direct {v1, p0, v0}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcn/kuwo/base/util/MediaButtonRegister;->session:Landroid/media/session/MediaSession;

    :cond_1
    sget-object v0, Lcn/kuwo/base/util/MediaButtonRegister;->session:Landroid/media/session/MediaSession;

    invoke-virtual {v0, v5}, Landroid/media/session/MediaSession;->setActive(Z)V

    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v0}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    const/4 v1, 0x3

    const-wide/16 v2, -0x1

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/util/MediaButtonRegister;->session:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    sget-object v0, Lcn/kuwo/base/util/MediaButtonRegister;->session:Landroid/media/session/MediaSession;

    invoke-virtual {v0, v5}, Landroid/media/session/MediaSession;->setFlags(I)V

    sget-object v0, Lcn/kuwo/base/util/MediaButtonRegister;->session:Landroid/media/session/MediaSession;

    new-instance v1, Lcn/kuwo/base/util/MediaButtonRegister$1;

    invoke-direct {v1, p0}, Lcn/kuwo/base/util/MediaButtonRegister$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    return-void
.end method


# virtual methods
.method public registerMediaButtonEventReveiver(Landroid/content/Context;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/mod/settings/KwSettingMgr;->a()Lcn/kuwo/mod/settings/KwSettingMgr;

    move-result-object v0

    const-string v1, "registerMediaButton"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/mod/settings/KwSettingMgr;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    :try_start_0
    invoke-static {p1}, Lcn/kuwo/base/util/MediaButtonRegister;->setMediaButtonEvent(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcn/kuwo/kwmusiccar/MediaButtonReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcn/kuwo/base/util/MediaButtonRegister;->unRegisterMediaButtonEventReceiver(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public startRegister(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/base/util/MediaButtonRegister;->registerRunnable:Lcn/kuwo/base/util/MediaButtonRegister$MediaButtonRegisterRunnable;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/base/util/MediaButtonRegister$MediaButtonRegisterRunnable;

    invoke-direct {v0, p1}, Lcn/kuwo/base/util/MediaButtonRegister$MediaButtonRegisterRunnable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/kuwo/base/util/MediaButtonRegister;->registerRunnable:Lcn/kuwo/base/util/MediaButtonRegister$MediaButtonRegisterRunnable;

    :cond_0
    iget-object v0, p0, Lcn/kuwo/base/util/MediaButtonRegister;->registerRunnable:Lcn/kuwo/base/util/MediaButtonRegister$MediaButtonRegisterRunnable;

    invoke-virtual {v0}, Lcn/kuwo/base/util/MediaButtonRegister$MediaButtonRegisterRunnable;->isStop()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/base/util/MediaButtonRegister;->registerRunnable:Lcn/kuwo/base/util/MediaButtonRegister$MediaButtonRegisterRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/kuwo/base/util/MediaButtonRegister$MediaButtonRegisterRunnable;->setStop(Z)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/base/util/MediaButtonRegister;->registerRunnable:Lcn/kuwo/base/util/MediaButtonRegister$MediaButtonRegisterRunnable;

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    :cond_1
    return-void
.end method

.method public stopRegister()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/base/util/MediaButtonRegister;->registerRunnable:Lcn/kuwo/base/util/MediaButtonRegister$MediaButtonRegisterRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/util/MediaButtonRegister;->registerRunnable:Lcn/kuwo/base/util/MediaButtonRegister$MediaButtonRegisterRunnable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/util/MediaButtonRegister$MediaButtonRegisterRunnable;->setStop(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/base/util/MediaButtonRegister;->registerRunnable:Lcn/kuwo/base/util/MediaButtonRegister$MediaButtonRegisterRunnable;

    :cond_0
    return-void
.end method

.method public unRegisterMediaButtonEventReceiver(Landroid/content/Context;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    sget-object v0, Lcn/kuwo/base/util/MediaButtonRegister;->session:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/base/util/MediaButtonRegister;->session:Landroid/media/session/MediaSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setActive(Z)V

    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/base/util/MediaButtonRegister;->session:Landroid/media/session/MediaSession;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcn/kuwo/kwmusiccar/MediaButtonReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    goto :goto_0
.end method
