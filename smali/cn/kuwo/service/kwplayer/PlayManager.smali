.class public final Lcn/kuwo/service/kwplayer/PlayManager;
.super Ljava/lang/Object;


# static fields
.field public static final CHANNEL_COUNT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "PlayManager"

.field private static instance:Lcn/kuwo/service/kwplayer/PlayManager;


# instance fields
.field private audioMgr:Landroid/media/AudioManager;

.field private curentPlayCtrl:Lcn/kuwo/service/kwplayer/IPlayCtrl;

.field private delegate:Lcn/kuwo/service/PlayDelegate;

.field private effectParam:Lcn/kuwo/mod/audioeffect/AudioEffectParam;

.field private ijkPlayerPlayCtrl:Lcn/kuwo/service/IjkPlayerPlayCtrl;

.field private lastDstVolume:I

.field private lastEffectType:I

.field private localPlayCtrl:Lcn/kuwo/service/kwplayer/LocalPlayCtrl;

.field private lowerVolumeByFocusChange:Z

.field private maxVolume:I

.field private netPlayCtrl:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

.field private onAudioFocusChangeListener:Lcn/kuwo/service/kwplayer/PlayManager$KwOnAudioFocusChangeListener;

.field private pauseByFocusChange:Z

.field private pauseByPhoneCall:Z

.field private prefetchDelegate:Lcn/kuwo/service/DownloadDelegate;

.field private prefetchFile:Ljava/lang/String;

.field private prefetchID:I

.field private prefetchRid:J

.field private sound3DParam:[Z

.field private threadHandler:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

.field private volumeBeforeMute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/kuwo/service/kwplayer/PlayManager;

    invoke-direct {v0}, Lcn/kuwo/service/kwplayer/PlayManager;-><init>()V

    sput-object v0, Lcn/kuwo/service/kwplayer/PlayManager;->instance:Lcn/kuwo/service/kwplayer/PlayManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/kuwo/mod/audioeffect/AudioEffectParam;

    invoke-direct {v0}, Lcn/kuwo/mod/audioeffect/AudioEffectParam;-><init>()V

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->effectParam:Lcn/kuwo/mod/audioeffect/AudioEffectParam;

    const/4 v0, 0x7

    new-array v0, v0, [Z

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->sound3DParam:[Z

    iput-boolean v2, p0, Lcn/kuwo/service/kwplayer/PlayManager;->pauseByFocusChange:Z

    iput-boolean v2, p0, Lcn/kuwo/service/kwplayer/PlayManager;->pauseByPhoneCall:Z

    iput-boolean v2, p0, Lcn/kuwo/service/kwplayer/PlayManager;->lowerVolumeByFocusChange:Z

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->prefetchID:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->prefetchRid:J

    new-instance v0, Lcn/kuwo/service/kwplayer/PlayManager$6;

    invoke-direct {v0, p0}, Lcn/kuwo/service/kwplayer/PlayManager$6;-><init>(Lcn/kuwo/service/kwplayer/PlayManager;)V

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->prefetchDelegate:Lcn/kuwo/service/DownloadDelegate;

    const/16 v0, 0x50

    iput v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->lastDstVolume:I

    iput v2, p0, Lcn/kuwo/service/kwplayer/PlayManager;->lastEffectType:I

    return-void
.end method

.method private abandonAudioFocus()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->onAudioFocusChangeListener:Lcn/kuwo/service/kwplayer/PlayManager$KwOnAudioFocusChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->audioMgr:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->onAudioFocusChangeListener:Lcn/kuwo/service/kwplayer/PlayManager$KwOnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->onAudioFocusChangeListener:Lcn/kuwo/service/kwplayer/PlayManager$KwOnAudioFocusChangeListener;

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcn/kuwo/service/kwplayer/PlayManager;)Lcn/kuwo/service/PlayDelegate;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->delegate:Lcn/kuwo/service/PlayDelegate;

    return-object v0
.end method

.method static synthetic access$300(Lcn/kuwo/service/kwplayer/PlayManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/service/kwplayer/PlayManager;->onLostAudioFocus(Z)V

    return-void
.end method

.method static synthetic access$400(Lcn/kuwo/service/kwplayer/PlayManager;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->lowerVolume()V

    return-void
.end method

.method static synthetic access$500(Lcn/kuwo/service/kwplayer/PlayManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->lowerVolumeByFocusChange:Z

    return v0
.end method

.method static synthetic access$600(Lcn/kuwo/service/kwplayer/PlayManager;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->resumeVolume()V

    return-void
.end method

.method static synthetic access$700(Lcn/kuwo/service/kwplayer/PlayManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/service/kwplayer/PlayManager;->onGainAudioFocus(Z)V

    return-void
.end method

.method static synthetic access$802(Lcn/kuwo/service/kwplayer/PlayManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->prefetchFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcn/kuwo/service/kwplayer/PlayManager;I)I
    .locals 0

    iput p1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->prefetchID:I

    return p1
.end method

.method private deletePrefetchFile()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->prefetchFile:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->prefetchFile:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownCacheMgr;->i(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->prefetchID:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->prefetchRid:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->prefetchFile:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcn/kuwo/service/kwplayer/PlayManager;
    .locals 1

    sget-object v0, Lcn/kuwo/service/kwplayer/PlayManager;->instance:Lcn/kuwo/service/kwplayer/PlayManager;

    return-object v0
.end method

.method private isPlayOrBuffering()Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/service/kwplayer/IPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v1

    sget-object v2, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v1, v2, :cond_2

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/service/kwplayer/IPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v1

    sget-object v2, Lcn/kuwo/service/PlayProxy$Status;->c:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private lowerVolume()V
    .locals 3

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->isPlayOrBuffering()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->lowerVolumeByFocusChange:Z

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->curentPlayCtrl:Lcn/kuwo/service/kwplayer/IPlayCtrl;

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3e99999a    # 0.3f

    invoke-interface {v0, v1, v2}, Lcn/kuwo/service/kwplayer/IPlayCtrl;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private notifyPreStart(Z)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->delegate:Lcn/kuwo/service/PlayDelegate;

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/service/kwplayer/PlayManager$4;

    invoke-direct {v1, p0, p1}, Lcn/kuwo/service/kwplayer/PlayManager$4;-><init>(Lcn/kuwo/service/kwplayer/PlayManager;Z)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    :cond_0
    return-void
.end method

.method private onGainAudioFocus(Z)V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->pauseByFocusChange:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->pauseByPhoneCall:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->setNoRecoverPause()V

    invoke-static {}, Lcn/kuwo/kwmusiccar/KwCarPlay;->isReceiverPause()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->resume()V

    :cond_2
    return-void
.end method

.method private onLostAudioFocus(Z)V
    .locals 3

    const/4 v1, 0x1

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/service/kwplayer/IPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v2, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v0, v2, :cond_0

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/service/kwplayer/IPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v2, Lcn/kuwo/service/PlayProxy$Status;->c:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v0, v2, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->pause()V

    invoke-static {}, Lcn/kuwo/kwmusiccar/KwCarPlay;->resetReceiverPause()V

    if-nez p1, :cond_3

    iput-boolean v1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->pauseByFocusChange:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->pauseByPhoneCall:Z

    goto :goto_1
.end method

.method private playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->curentPlayCtrl:Lcn/kuwo/service/kwplayer/IPlayCtrl;

    return-object v0
.end method

.method private playLocal(Lcn/kuwo/base/bean/Music;ZI)V
    .locals 6

    const/4 v2, 0x1

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->useIjkPlayCtrl()V

    invoke-direct {p0, v2}, Lcn/kuwo/service/kwplayer/PlayManager;->notifyPreStart(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6b63\u5728\u64ad\u653e\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    invoke-interface {v0, p1, v2, p3}, Lcn/kuwo/service/kwplayer/IPlayCtrl;->play(Lcn/kuwo/base/bean/Music;ZI)Lcn/kuwo/service/PlayDelegate$ErrorCode;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayDelegate$ErrorCode;->a:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    if-eq v0, v1, :cond_0

    iget-wide v2, p1, Lcn/kuwo/base/bean/Music;->a:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcn/kuwo/service/kwplayer/PlayManager;->playNet(Lcn/kuwo/base/bean/Music;ZI)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/PlayManager;->notifyError(Lcn/kuwo/service/PlayDelegate$ErrorCode;)V

    goto :goto_0
.end method

.method private playNet(Lcn/kuwo/base/bean/Music;ZI)V
    .locals 2

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->useIjkPlayCtrl()V

    invoke-static {}, Lcn/kuwo/service/MainService;->e()Lcn/kuwo/service/DownloadProxy;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/DownloadProxy$Quality;->a:Lcn/kuwo/service/DownloadProxy$Quality;

    invoke-virtual {v0, p1, v1}, Lcn/kuwo/service/DownloadProxy;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$Quality;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/kuwo/service/kwplayer/PlayManager;->notifyPreStart(Z)V

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6b63\u5728\u64ad\u653e\u672c\u5730\u6b4c\u66f2\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcn/kuwo/service/kwplayer/IPlayCtrl;->play(Lcn/kuwo/base/bean/Music;ZI)Lcn/kuwo/service/PlayDelegate$ErrorCode;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayDelegate$ErrorCode;->a:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/PlayManager;->notifyError(Lcn/kuwo/service/PlayDelegate$ErrorCode;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6b63\u5728\u64ad\u653e\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestAudioFocus()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->setNoRecoverPause()V

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->onAudioFocusChangeListener:Lcn/kuwo/service/kwplayer/PlayManager$KwOnAudioFocusChangeListener;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/service/kwplayer/PlayManager$KwOnAudioFocusChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/kuwo/service/kwplayer/PlayManager$KwOnAudioFocusChangeListener;-><init>(Lcn/kuwo/service/kwplayer/PlayManager;Lcn/kuwo/service/kwplayer/PlayManager$1;)V

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->onAudioFocusChangeListener:Lcn/kuwo/service/kwplayer/PlayManager$KwOnAudioFocusChangeListener;

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->audioMgr:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->onAudioFocusChangeListener:Lcn/kuwo/service/kwplayer/PlayManager$KwOnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->audioMgr:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->onAudioFocusChangeListener:Lcn/kuwo/service/kwplayer/PlayManager$KwOnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_1
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->audioMgr:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->onAudioFocusChangeListener:Lcn/kuwo/service/kwplayer/PlayManager$KwOnAudioFocusChangeListener;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->audioMgr:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->onAudioFocusChangeListener:Lcn/kuwo/service/kwplayer/PlayManager$KwOnAudioFocusChangeListener;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private resumeVolume()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->lowerVolumeByFocusChange:Z

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->isPlayOrBuffering()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->curentPlayCtrl:Lcn/kuwo/service/kwplayer/IPlayCtrl;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Lcn/kuwo/service/kwplayer/IPlayCtrl;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setBassVolume(I)V
    .locals 6

    const/16 v5, 0xc8

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->lastEffectType:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "audioeffect"

    const-string v1, "bassreset"

    invoke-static {v0, v1, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-ne p1, v4, :cond_2

    if-eqz v0, :cond_2

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/service/kwplayer/PlayManager$7;

    invoke-direct {v1, p0}, Lcn/kuwo/service/kwplayer/PlayManager$7;-><init>(Lcn/kuwo/service/kwplayer/PlayManager;)V

    invoke-virtual {v0, v5, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->a(ILcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    const-string v0, "audioeffect"

    const-string v1, "bassreset"

    invoke-static {v0, v1, v2, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    :cond_1
    :goto_1
    iput p1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->lastEffectType:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->lastEffectType:I

    if-ne v0, v4, :cond_1

    const-string v0, "audioeffect"

    const-string v1, "bassreset"

    invoke-static {v0, v1, v3, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/service/kwplayer/PlayManager$8;

    invoke-direct {v1, p0}, Lcn/kuwo/service/kwplayer/PlayManager$8;-><init>(Lcn/kuwo/service/kwplayer/PlayManager;)V

    invoke-virtual {v0, v5, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->a(ILcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto :goto_1
.end method

.method private useIjkPlayCtrl()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->ijkPlayerPlayCtrl:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-direct {v0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;-><init>()V

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->ijkPlayerPlayCtrl:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->ijkPlayerPlayCtrl:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->threadHandler:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v0, v1}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Lcn/kuwo/core/messagemgr/ThreadMessageHandler;)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->ijkPlayerPlayCtrl:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->delegate:Lcn/kuwo/service/PlayDelegate;

    invoke-virtual {v0, v1}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->setDelegate(Lcn/kuwo/service/PlayDelegate;)V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->ijkPlayerPlayCtrl:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->curentPlayCtrl:Lcn/kuwo/service/kwplayer/IPlayCtrl;

    return-void
.end method

.method private useLocalPlayCtrl()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->localPlayCtrl:Lcn/kuwo/service/kwplayer/LocalPlayCtrl;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->threadHandler:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-direct {v0, v1}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;-><init>(Lcn/kuwo/core/messagemgr/ThreadMessageHandler;)V

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->localPlayCtrl:Lcn/kuwo/service/kwplayer/LocalPlayCtrl;

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->localPlayCtrl:Lcn/kuwo/service/kwplayer/LocalPlayCtrl;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->delegate:Lcn/kuwo/service/PlayDelegate;

    invoke-virtual {v0, v1}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->setDelegate(Lcn/kuwo/service/PlayDelegate;)V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->localPlayCtrl:Lcn/kuwo/service/kwplayer/LocalPlayCtrl;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->curentPlayCtrl:Lcn/kuwo/service/kwplayer/IPlayCtrl;

    return-void
.end method

.method private useNetPlayCtrl()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->netPlayCtrl:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->threadHandler:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-direct {v0, v1}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;-><init>(Lcn/kuwo/core/messagemgr/ThreadMessageHandler;)V

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->netPlayCtrl:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->netPlayCtrl:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->delegate:Lcn/kuwo/service/PlayDelegate;

    invoke-virtual {v0, v1}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->setDelegate(Lcn/kuwo/service/PlayDelegate;)V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->netPlayCtrl:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->curentPlayCtrl:Lcn/kuwo/service/kwplayer/IPlayCtrl;

    return-void
.end method


# virtual methods
.method public canclePrefetch()V
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->prefetchID:I

    if-le v0, v2, :cond_0

    invoke-static {}, Lcn/kuwo/service/MainService;->e()Lcn/kuwo/service/DownloadProxy;

    move-result-object v0

    iget v1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->prefetchID:I

    invoke-virtual {v0, v1}, Lcn/kuwo/service/DownloadProxy;->a(I)V

    iput v2, p0, Lcn/kuwo/service/kwplayer/PlayManager;->prefetchID:I

    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->prefetchRid:J

    return-void
.end method

.method public getBufferPos()I
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/service/kwplayer/IPlayCtrl;->getBufferPos()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentPos()I
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/service/kwplayer/IPlayCtrl;->getCurrentPos()I

    move-result v0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/service/kwplayer/IPlayCtrl;->getDuration()I

    move-result v0

    goto :goto_0
.end method

.method public getMaxVolume()I
    .locals 1

    iget v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->maxVolume:I

    return v0
.end method

.method public getPlayLogInfo()Lcn/kuwo/service/PlayProxy$PlayLogInfo;
    .locals 2

    new-instance v0, Lcn/kuwo/service/PlayProxy$PlayLogInfo;

    invoke-direct {v0}, Lcn/kuwo/service/PlayProxy$PlayLogInfo;-><init>()V

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/kuwo/service/kwplayer/IPlayCtrl;->getPlayLogInfo(Lcn/kuwo/service/PlayProxy$PlayLogInfo;)Z

    return-object v0
.end method

.method public getPreparingPercent()I
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/service/kwplayer/IPlayCtrl;->getPreparingPercent()I

    move-result v0

    goto :goto_0
.end method

.method public getStatus()Lcn/kuwo/service/PlayProxy$Status;
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/service/kwplayer/IPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    goto :goto_0
.end method

.method public getVolume()I
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->audioMgr:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public init(Lcn/kuwo/core/messagemgr/ThreadMessageHandler;)V
    .locals 3

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->threadHandler:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcn/kuwo/kwmusiccar/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->audioMgr:Landroid/media/AudioManager;

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->audioMgr:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->maxVolume:I

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->requestAudioFocus()V

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcn/kuwo/kwmusiccar/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_0
    new-instance v1, Lcn/kuwo/service/kwplayer/PlayManager$KwPhoneStateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/kuwo/service/kwplayer/PlayManager$KwPhoneStateListener;-><init>(Lcn/kuwo/service/kwplayer/PlayManager;Lcn/kuwo/service/kwplayer/PlayManager$1;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isMute()Z
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->audioMgr:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected notifyError(Lcn/kuwo/service/PlayDelegate$ErrorCode;)V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/service/kwplayer/PlayManager$5;

    invoke-direct {v1, p0, p1}, Lcn/kuwo/service/kwplayer/PlayManager$5;-><init>(Lcn/kuwo/service/kwplayer/PlayManager;Lcn/kuwo/service/PlayDelegate$ErrorCode;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method

.method public pause()V
    .locals 2

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/service/kwplayer/IPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/service/kwplayer/IPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->c:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v0, v1, :cond_0

    :cond_2
    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/service/kwplayer/IPlayCtrl;->pause()V

    goto :goto_0
.end method

.method public play(Lcn/kuwo/base/bean/Music;ZI)V
    .locals 4

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/kuwo/service/kwplayer/IPlayCtrl;->stop(Z)V

    :cond_0
    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->requestAudioFocus()V

    invoke-static {}, Lcn/kuwo/base/util/SDCardUtils;->isAvaliable()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->m:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/PlayManager;->notifyError(Lcn/kuwo/service/PlayDelegate$ErrorCode;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcn/kuwo/service/kwplayer/PlayManager;->playLocal(Lcn/kuwo/base/bean/Music;ZI)V

    :goto_1
    iget-wide v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->prefetchRid:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcn/kuwo/base/bean/Music;->a:J

    iget-wide v2, p0, Lcn/kuwo/service/kwplayer/PlayManager;->prefetchRid:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->deletePrefetchFile()V

    goto :goto_0

    :cond_3
    iget-wide v0, p1, Lcn/kuwo/base/bean/Music;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    invoke-direct {p0, p1, p2, p3}, Lcn/kuwo/service/kwplayer/PlayManager;->playNet(Lcn/kuwo/base/bean/Music;ZI)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->i:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/PlayManager;->notifyError(Lcn/kuwo/service/PlayDelegate$ErrorCode;)V

    goto :goto_1
.end method

.method public prefetch(Lcn/kuwo/base/bean/Music;)V
    .locals 6

    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isOnlyWifiConnect()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcn/kuwo/base/bean/Music;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-string v0, "PlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prefetch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p1, Lcn/kuwo/base/bean/Music;->a:J

    iput-wide v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->prefetchRid:J

    const-string v0, ""

    const-string v1, "music_quality_when_play"

    invoke-static {}, Lcn/kuwo/mod/settings/SettingsDefualtValueUtls;->a()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Lcn/kuwo/service/MainService;->e()Lcn/kuwo/service/DownloadProxy;

    move-result-object v0

    sget-object v2, Lcn/kuwo/service/DownloadProxy$DownType;->b:Lcn/kuwo/service/DownloadProxy$DownType;

    invoke-static {}, Lcn/kuwo/service/DownloadProxy$Quality;->values()[Lcn/kuwo/service/DownloadProxy$Quality;

    move-result-object v1

    long-to-int v3, v4

    aget-object v3, v1, v3

    iget-object v4, p0, Lcn/kuwo/service/kwplayer/PlayManager;->prefetchDelegate:Lcn/kuwo/service/DownloadDelegate;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->threadHandler:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v1}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcn/kuwo/service/DownloadProxy;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$DownType;Lcn/kuwo/service/DownloadProxy$Quality;Lcn/kuwo/service/DownloadDelegate;Landroid/os/Handler;)I

    move-result v0

    iput v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->prefetchID:I

    goto :goto_0
.end method

.method public release()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->abandonAudioFocus()V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->localPlayCtrl:Lcn/kuwo/service/kwplayer/LocalPlayCtrl;

    invoke-virtual {v0, v2}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->cancle(Z)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->netPlayCtrl:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    invoke-virtual {v0, v2}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->cancle(Z)V

    invoke-virtual {p0, v1}, Lcn/kuwo/service/kwplayer/PlayManager;->setDelegate(Lcn/kuwo/service/PlayDelegate;)V

    iput-object v1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->ijkPlayerPlayCtrl:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    iput-object v1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->curentPlayCtrl:Lcn/kuwo/service/kwplayer/IPlayCtrl;

    iput-object v1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->localPlayCtrl:Lcn/kuwo/service/kwplayer/LocalPlayCtrl;

    iput-object v1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->netPlayCtrl:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    iput-object v1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->audioMgr:Landroid/media/AudioManager;

    return-void
.end method

.method public requestAudioFocus(Z)V
    .locals 3

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->requestAudioFocus()V

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/kuwo/kwmusiccar/KwCarPlay;->sendAudioFocusToClientBroadcast(Landroid/content/Context;IZ)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/service/kwplayer/IPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->d:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/service/kwplayer/IPlayCtrl;->resume()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/service/kwplayer/IPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->d:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->requestAudioFocus()V

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/service/kwplayer/IPlayCtrl;->resume()V

    :cond_0
    return-void
.end method

.method public seek(I)V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/kuwo/service/kwplayer/IPlayCtrl;->seek(I)V

    :cond_0
    return-void
.end method

.method public set3DSoundChannel(IZ)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->ijkPlayerPlayCtrl:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->ijkPlayerPlayCtrl:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-virtual {v0, p1, p2}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(IZ)V

    :cond_0
    return-void
.end method

.method public set3DSoundEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->ijkPlayerPlayCtrl:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->ijkPlayerPlayCtrl:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-virtual {v0, p1}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Z)V

    :cond_0
    return-void
.end method

.method public set3DSoundParam(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x7

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v5, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_3

    iget-object v2, p0, Lcn/kuwo/service/kwplayer/PlayManager;->sound3DParam:[Z

    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_3

    iget-object v3, p0, Lcn/kuwo/service/kwplayer/PlayManager;->sound3DParam:[Z

    const/16 v0, 0x31

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    :goto_2
    aput-boolean v0, v3, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public setAudioEffect(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/service/kwplayer/PlayManager;->setBassVolume(I)V

    invoke-virtual {p0, p1}, Lcn/kuwo/service/kwplayer/PlayManager;->setEffectType(I)V

    return-void
.end method

.method public setBassStrength(I)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->effectParam:Lcn/kuwo/mod/audioeffect/AudioEffectParam;

    iput p1, v0, Lcn/kuwo/mod/audioeffect/AudioEffectParam;->c:I

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->ijkPlayerPlayCtrl:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->ijkPlayerPlayCtrl:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-virtual {v0, p1}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->b(I)V

    :cond_0
    return-void
.end method

.method public setDelegate(Lcn/kuwo/service/PlayDelegate;)V
    .locals 1

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->delegate:Lcn/kuwo/service/PlayDelegate;

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->localPlayCtrl:Lcn/kuwo/service/kwplayer/LocalPlayCtrl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->localPlayCtrl:Lcn/kuwo/service/kwplayer/LocalPlayCtrl;

    invoke-virtual {v0, p1}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->setDelegate(Lcn/kuwo/service/PlayDelegate;)V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->netPlayCtrl:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->netPlayCtrl:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    invoke-virtual {v0, p1}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->setDelegate(Lcn/kuwo/service/PlayDelegate;)V

    :cond_1
    return-void
.end method

.method public setEffectType(I)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->effectParam:Lcn/kuwo/mod/audioeffect/AudioEffectParam;

    iput p1, v0, Lcn/kuwo/mod/audioeffect/AudioEffectParam;->a:I

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->ijkPlayerPlayCtrl:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->ijkPlayerPlayCtrl:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-virtual {v0, p1}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(I)V

    :cond_0
    return-void
.end method

.method public setEqulizer(Lcn/kuwo/mod/audioeffect/EqualizerItem;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->effectParam:Lcn/kuwo/mod/audioeffect/AudioEffectParam;

    iput-object p1, v0, Lcn/kuwo/mod/audioeffect/AudioEffectParam;->b:Lcn/kuwo/mod/audioeffect/EqualizerItem;

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->ijkPlayerPlayCtrl:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->ijkPlayerPlayCtrl:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-virtual {v0, p1}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Lcn/kuwo/mod/audioeffect/EqualizerItem;)V

    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->isMute()Z

    move-result v0

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->audioMgr:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->volumeBeforeMute:I

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->audioMgr:Landroid/media/AudioManager;

    invoke-virtual {v1, v4, v3, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :goto_0
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    new-instance v2, Lcn/kuwo/service/kwplayer/PlayManager$2;

    invoke-direct {v2, p0, v0}, Lcn/kuwo/service/kwplayer/PlayManager$2;-><init>(Lcn/kuwo/service/kwplayer/PlayManager;Z)V

    invoke-virtual {v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->audioMgr:Landroid/media/AudioManager;

    invoke-virtual {v1, v4, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->audioMgr:Landroid/media/AudioManager;

    iget v2, p0, Lcn/kuwo/service/kwplayer/PlayManager;->volumeBeforeMute:I

    invoke-virtual {v1, v4, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method public setNoRecoverPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->pauseByFocusChange:Z

    iput-boolean v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->pauseByPhoneCall:Z

    return-void
.end method

.method public setStrength(S)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->ijkPlayerPlayCtrl:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->ijkPlayerPlayCtrl:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-virtual {v0, p1}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(S)V

    :cond_0
    return-void
.end method

.method public setVirtualizerStrength(I)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->effectParam:Lcn/kuwo/mod/audioeffect/AudioEffectParam;

    iput p1, v0, Lcn/kuwo/mod/audioeffect/AudioEffectParam;->d:I

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->ijkPlayerPlayCtrl:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->ijkPlayerPlayCtrl:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-virtual {v0, p1}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->c(I)V

    :cond_0
    return-void
.end method

.method public setVoiceBalance(II)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->effectParam:Lcn/kuwo/mod/audioeffect/AudioEffectParam;

    iput p1, v0, Lcn/kuwo/mod/audioeffect/AudioEffectParam;->e:I

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->effectParam:Lcn/kuwo/mod/audioeffect/AudioEffectParam;

    iput p2, v0, Lcn/kuwo/mod/audioeffect/AudioEffectParam;->f:I

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->ijkPlayerPlayCtrl:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->ijkPlayerPlayCtrl:Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-virtual {v0, p1, p2}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(II)V

    :cond_0
    return-void
.end method

.method public setVolume(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget v2, p0, Lcn/kuwo/service/kwplayer/PlayManager;->maxVolume:I

    if-le p1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->getVolume()I

    move-result v2

    if-eq p1, v2, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->isMute()Z

    move-result v3

    iput p1, p0, Lcn/kuwo/service/kwplayer/PlayManager;->volumeBeforeMute:I

    if-lez p1, :cond_3

    move v2, v0

    :goto_1
    if-ne v2, v3, :cond_2

    if-nez v3, :cond_4

    :goto_2
    invoke-virtual {p0, v0}, Lcn/kuwo/service/kwplayer/PlayManager;->setMute(Z)V

    :cond_2
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager;->audioMgr:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/service/kwplayer/PlayManager$1;

    invoke-direct {v1, p0, p1}, Lcn/kuwo/service/kwplayer/PlayManager$1;-><init>(Lcn/kuwo/service/kwplayer/PlayManager;I)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public stop()V
    .locals 2

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/kuwo/service/kwplayer/PlayManager;->playCtrl()Lcn/kuwo/service/kwplayer/IPlayCtrl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcn/kuwo/service/kwplayer/IPlayCtrl;->stop(Z)V

    :cond_0
    return-void
.end method

.method public updateVolume()V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/service/kwplayer/PlayManager$3;

    invoke-direct {v1, p0}, Lcn/kuwo/service/kwplayer/PlayManager$3;-><init>(Lcn/kuwo/service/kwplayer/PlayManager;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method
