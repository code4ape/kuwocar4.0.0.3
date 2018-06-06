.class public Lcn/kuwo/service/IjkPlayerPlayCtrl;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/base/util/KwTimer$Listener;
.implements Lcn/kuwo/service/kwplayer/IPlayCtrl;
.implements Lcn/kuwo/service/remote/kwplayer/Spectrum;


# static fields
.field public static b:I

.field private static final d:Ljava/lang/String;

.field private static p:Ljava/lang/String;


# instance fields
.field protected volatile a:Lcn/kuwo/service/PlayProxy$Status;

.field final c:I

.field private e:Lcn/kuwo/service/KwIjkPlayer;

.field private f:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

.field private g:Lcn/kuwo/service/PlayStateNotify;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private q:Lcn/kuwo/service/DownloadDelegate$DataSrc;

.field private r:I

.field private s:I

.field private t:J

.field private u:J

.field private v:Lcn/kuwo/base/util/KwTimer;

.field private w:Z

.field private x:Lcn/kuwo/service/DownloadDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcn/kuwo/service/IjkPlayerPlayCtrl;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->h:Z

    iput v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->j:I

    iput v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->k:I

    iput v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->l:I

    iput v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->r:I

    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    iput-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a:Lcn/kuwo/service/PlayProxy$Status;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->v:Lcn/kuwo/base/util/KwTimer;

    const/16 v0, 0x2710

    iput v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->c:I

    new-instance v0, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;

    invoke-direct {v0, p0}, Lcn/kuwo/service/IjkPlayerPlayCtrl$1;-><init>(Lcn/kuwo/service/IjkPlayerPlayCtrl;)V

    iput-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->x:Lcn/kuwo/service/DownloadDelegate;

    new-instance v0, Lcn/kuwo/service/PlayStateNotify;

    invoke-direct {v0}, Lcn/kuwo/service/PlayStateNotify;-><init>()V

    iput-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->g:Lcn/kuwo/service/PlayStateNotify;

    return-void
.end method

.method static synthetic a(Lcn/kuwo/service/IjkPlayerPlayCtrl;I)I
    .locals 0

    iput p1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->m:I

    return p1
.end method

.method static synthetic a(Lcn/kuwo/service/IjkPlayerPlayCtrl;J)J
    .locals 1

    iput-wide p1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->t:J

    return-wide p1
.end method

.method static synthetic a(Lcn/kuwo/service/IjkPlayerPlayCtrl;Lcn/kuwo/service/DownloadDelegate$DataSrc;)Lcn/kuwo/service/DownloadDelegate$DataSrc;
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->q:Lcn/kuwo/service/DownloadDelegate$DataSrc;

    return-object p1
.end method

.method private a(Lcn/kuwo/base/bean/Music;ZI)Lcn/kuwo/service/PlayDelegate$ErrorCode;
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playLocal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/kuwo/base/bean/Music;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->i:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v3}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->stop(Z)V

    invoke-virtual {p0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a()V

    invoke-direct {p0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->c()V

    iput p3, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->j:I

    iput-boolean v3, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->h:Z

    iput-boolean p2, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->i:Z

    const/16 v0, 0x64

    iput v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->l:I

    iput v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->k:I

    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    iput-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->n:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->g:Lcn/kuwo/service/PlayStateNotify;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->g:Lcn/kuwo/service/PlayStateNotify;

    invoke-virtual {v0}, Lcn/kuwo/service/PlayStateNotify;->a()V

    :cond_1
    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownCacheMgr;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->o:Ljava/lang/String;

    :try_start_0
    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->a:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Lcn/kuwo/service/DownloadDelegate$ErrorCode;)Lcn/kuwo/service/PlayDelegate$ErrorCode;
    .locals 2

    sget-object v0, Lcn/kuwo/service/IjkPlayerPlayCtrl$2;->a:[I

    invoke-virtual {p1}, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->p:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->a:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->f:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->q:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->g:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->o:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->m:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->n:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->s:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->p:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method static synthetic a(Lcn/kuwo/service/IjkPlayerPlayCtrl;Lcn/kuwo/service/DownloadDelegate$ErrorCode;)Lcn/kuwo/service/PlayDelegate$ErrorCode;
    .locals 1

    invoke-direct {p0, p1}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Lcn/kuwo/service/DownloadDelegate$ErrorCode;)Lcn/kuwo/service/PlayDelegate$ErrorCode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcn/kuwo/service/IjkPlayerPlayCtrl;)Lcn/kuwo/service/PlayStateNotify;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->g:Lcn/kuwo/service/PlayStateNotify;

    return-object v0
.end method

.method static synthetic a(Lcn/kuwo/service/IjkPlayerPlayCtrl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->o:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcn/kuwo/service/IjkPlayerPlayCtrl;Lcn/kuwo/service/PlayProxy$Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Lcn/kuwo/service/PlayProxy$Status;)V

    return-void
.end method

.method private final a(Lcn/kuwo/service/PlayProxy$Status;)V
    .locals 3

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {p1}, Lcn/kuwo/service/PlayProxy$Status;->ordinal()I

    move-result v1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v2

    invoke-interface {v2}, Lcn/kuwo/mod/playcontrol/IPlayControl;->e()Lcn/kuwo/base/bean/Music;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/kuwo/kwmusiccar/KwCarPlay;->sendPlayerStatusBroadcast(Landroid/content/Context;ILcn/kuwo/base/bean/Music;)V

    return-void
.end method

.method static synthetic b(Lcn/kuwo/service/IjkPlayerPlayCtrl;I)I
    .locals 0

    iput p1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->k:I

    return p1
.end method

.method static synthetic b(Lcn/kuwo/service/IjkPlayerPlayCtrl;J)J
    .locals 1

    iput-wide p1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->u:J

    return-wide p1
.end method

.method private b(Lcn/kuwo/base/bean/Music;ZI)Lcn/kuwo/service/PlayDelegate$ErrorCode;
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playNet:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/kuwo/base/bean/Music;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->stop(Z)V

    invoke-virtual {p0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a()V

    iput p3, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->j:I

    iput-boolean p2, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->i:Z

    iput-boolean v3, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->h:Z

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->g:Lcn/kuwo/service/PlayStateNotify;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->g:Lcn/kuwo/service/PlayStateNotify;

    invoke-virtual {v0}, Lcn/kuwo/service/PlayStateNotify;->a()V

    :cond_0
    sget v0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->b:I

    if-lez v0, :cond_1

    sget v0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->b:I

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownloadMgr;->a(I)V

    sput v3, Lcn/kuwo/service/IjkPlayerPlayCtrl;->b:I

    :cond_1
    invoke-static {}, Lcn/kuwo/service/MainService;->e()Lcn/kuwo/service/DownloadProxy;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/DownloadProxy$Quality;->a:Lcn/kuwo/service/DownloadProxy$Quality;

    invoke-virtual {v0, p1, v1}, Lcn/kuwo/service/DownloadProxy;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$Quality;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ""

    const-string v1, "download_when_play_setting_enable"

    invoke-static {v0, v1, v4}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->t:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Lcn/kuwo/service/DownloadProxy$DownGroup;->a:Lcn/kuwo/service/DownloadProxy$DownGroup;

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownloadMgr;->a(Lcn/kuwo/service/DownloadProxy$DownGroup;)Lcn/kuwo/service/downloader/DownloadMgr;

    move-result-object v0

    if-eqz p2, :cond_3

    sget-object v2, Lcn/kuwo/service/DownloadProxy$DownType;->g:Lcn/kuwo/service/DownloadProxy$DownType;

    :goto_1
    invoke-static {}, Lcn/kuwo/base/util/QualityUtils;->getPlayQuality()Lcn/kuwo/service/DownloadProxy$Quality;

    move-result-object v3

    iget-object v4, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->x:Lcn/kuwo/service/DownloadDelegate;

    iget-object v1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->f:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v1}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcn/kuwo/service/downloader/DownloadMgr;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$DownType;Lcn/kuwo/service/DownloadProxy$Quality;Lcn/kuwo/service/DownloadDelegate;Landroid/os/Handler;)I

    move-result v0

    sput v0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->b:I

    invoke-direct {p0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->c()V

    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->a:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    goto :goto_0

    :cond_3
    sget-object v2, Lcn/kuwo/service/DownloadProxy$DownType;->c:Lcn/kuwo/service/DownloadProxy$DownType;

    goto :goto_1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcn/kuwo/service/IjkPlayerPlayCtrl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcn/kuwo/service/IjkPlayerPlayCtrl;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->d()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->p:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->p:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->p:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sput-object v1, Lcn/kuwo/service/IjkPlayerPlayCtrl;->p:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->p:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownCacheMgr;->i(Ljava/lang/String;)V

    sput-object v1, Lcn/kuwo/service/IjkPlayerPlayCtrl;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic c(Lcn/kuwo/service/IjkPlayerPlayCtrl;I)I
    .locals 0

    iput p1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->l:I

    return p1
.end method

.method static synthetic c(Lcn/kuwo/service/IjkPlayerPlayCtrl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->o:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->v:Lcn/kuwo/base/util/KwTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/base/util/KwTimer;

    invoke-direct {v0, p0}, Lcn/kuwo/base/util/KwTimer;-><init>(Lcn/kuwo/base/util/KwTimer$Listener;)V

    iput-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->v:Lcn/kuwo/base/util/KwTimer;

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->v:Lcn/kuwo/base/util/KwTimer;

    invoke-virtual {v0, p0}, Lcn/kuwo/base/util/KwTimer;->setListener(Lcn/kuwo/base/util/KwTimer$Listener;)V

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->v:Lcn/kuwo/base/util/KwTimer;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcn/kuwo/base/util/KwTimer;->start(I)V

    return-void
.end method

.method static synthetic c(Lcn/kuwo/service/IjkPlayerPlayCtrl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->b(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x7

    invoke-static {v0}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcn/kuwo/service/IjkPlayerPlayCtrl;)I
    .locals 1

    iget v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->k:I

    return v0
.end method

.method static synthetic d(Lcn/kuwo/service/IjkPlayerPlayCtrl;I)I
    .locals 0

    iput p1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->s:I

    return p1
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->v:Lcn/kuwo/base/util/KwTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->v:Lcn/kuwo/base/util/KwTimer;

    invoke-virtual {v0}, Lcn/kuwo/base/util/KwTimer;->stop()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcn/kuwo/service/IjkPlayerPlayCtrl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->d(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->p:Ljava/lang/String;

    iget-boolean v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->i:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcn/kuwo/service/downloader/DownCacheMgr;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sput-object p1, Lcn/kuwo/service/IjkPlayerPlayCtrl;->p:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method static synthetic e(Lcn/kuwo/service/IjkPlayerPlayCtrl;I)I
    .locals 0

    iput p1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->r:I

    return p1
.end method

.method static synthetic e(Lcn/kuwo/service/IjkPlayerPlayCtrl;)J
    .locals 2

    iget-wide v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->t:J

    return-wide v0
.end method

.method private e()Z
    .locals 2

    iget v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->l:I

    if-lez v0, :cond_0

    iget v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->k:I

    iget v1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->l:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcn/kuwo/service/IjkPlayerPlayCtrl;)I
    .locals 1

    iget v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->l:I

    return v0
.end method

.method static synthetic g(Lcn/kuwo/service/IjkPlayerPlayCtrl;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->h:Z

    return v0
.end method

.method static synthetic h(Lcn/kuwo/service/IjkPlayerPlayCtrl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcn/kuwo/service/IjkPlayerPlayCtrl;)Lcn/kuwo/service/KwIjkPlayer;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->o:Ljava/lang/String;

    iput v1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->m:I

    iput v1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->k:I

    iput v1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->l:I

    iput v1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->s:I

    iput v1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->m:I

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    invoke-virtual {v0, p1}, Lcn/kuwo/service/KwIjkPlayer;->a(I)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/service/KwIjkPlayer;->a(FF)V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    invoke-virtual {v0, p1}, Lcn/kuwo/service/KwIjkPlayer;->c(I)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    invoke-virtual {v0, p1}, Lcn/kuwo/service/KwIjkPlayer;->d(I)I

    goto :goto_0
.end method

.method public a(Lcn/kuwo/core/messagemgr/ThreadMessageHandler;)V
    .locals 2

    sget-object v0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->d:Ljava/lang/String;

    const-string v1, "setMessageHandler"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->f:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    return-void
.end method

.method public a(Lcn/kuwo/mod/audioeffect/EqualizerItem;)V
    .locals 2

    sget-object v0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->d:Ljava/lang/String;

    const-string v1, "setEqParam"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    invoke-virtual {v0, p1}, Lcn/kuwo/service/KwIjkPlayer;->a(Lcn/kuwo/mod/audioeffect/EqualizerItem;)V

    :cond_0
    return-void
.end method

.method public a(S)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    invoke-virtual {v0, p1}, Lcn/kuwo/service/KwIjkPlayer;->b(Z)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    invoke-virtual {v0, p1}, Lcn/kuwo/service/KwIjkPlayer;->b(Ljava/lang/String;)Z

    :goto_0
    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    new-instance v1, Lcn/kuwo/service/IjkPlayerPlayCtrl$PlayCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/kuwo/service/IjkPlayerPlayCtrl$PlayCallback;-><init>(Lcn/kuwo/service/IjkPlayerPlayCtrl;Lcn/kuwo/service/IjkPlayerPlayCtrl$1;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/service/KwIjkPlayer;->a(Lcn/kuwo/service/IjkPlayerCallback;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->p()Lcn/kuwo/mod/audioeffect/IAudioEffectMgr;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->p()Lcn/kuwo/mod/audioeffect/IAudioEffectMgr;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/mod/audioeffect/IAudioEffectMgr;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lcn/kuwo/mod/audioeffect/IAudioEffectMgr;->a(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Lcn/kuwo/service/KwIjkPlayer;

    invoke-direct {v0}, Lcn/kuwo/service/KwIjkPlayer;-><init>()V

    iput-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    invoke-virtual {v0, p1}, Lcn/kuwo/service/KwIjkPlayer;->a(Ljava/lang/String;)V

    iget v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->j:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    iget v1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->j:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcn/kuwo/service/KwIjkPlayer;->a(J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    invoke-virtual {v0}, Lcn/kuwo/service/KwIjkPlayer;->b()V

    goto :goto_0
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    int-to-short v1, p1

    invoke-virtual {v0, v1}, Lcn/kuwo/service/KwIjkPlayer;->a(S)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    invoke-virtual {v0, p1}, Lcn/kuwo/service/KwIjkPlayer;->b(I)V

    :cond_0
    return-void
.end method

.method public getBufferPos()I
    .locals 4

    const/16 v3, 0x7800

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v1

    sget-object v2, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->getDuration()I

    move-result v1

    iget-boolean v2, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->h:Z

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->k:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->k:I

    if-lt v2, v3, :cond_0

    if-eqz v1, :cond_0

    iget v2, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->l:I

    if-eqz v2, :cond_0

    iget v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->l:I

    if-ge v0, v3, :cond_3

    iget v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->k:I

    int-to-float v0, v0

    iget v2, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->l:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    :goto_1
    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->k:I

    add-int/lit16 v0, v0, -0x7800

    int-to-float v0, v0

    iget v2, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->l:I

    add-int/lit16 v2, v2, -0x7800

    int-to-float v2, v2

    div-float/2addr v0, v2

    goto :goto_1
.end method

.method public getCurrentPos()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v1

    sget-object v2, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v1

    sget-object v2, Lcn/kuwo/service/PlayProxy$Status;->e:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    invoke-virtual {v0}, Lcn/kuwo/service/KwIjkPlayer;->h()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v1

    sget-object v2, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v1

    sget-object v2, Lcn/kuwo/service/PlayProxy$Status;->e:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    invoke-virtual {v0}, Lcn/kuwo/service/KwIjkPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getPlayLogInfo(Lcn/kuwo/service/PlayProxy$PlayLogInfo;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v3, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v0, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->o:Ljava/lang/String;

    iput-object v0, p1, Lcn/kuwo/service/PlayProxy$PlayLogInfo;->b:Ljava/lang/String;

    iget-boolean v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->h:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput v0, p1, Lcn/kuwo/service/PlayProxy$PlayLogInfo;->a:I

    iget-boolean v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->h:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p1, Lcn/kuwo/service/PlayProxy$PlayLogInfo;->c:Z

    iget-boolean v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->h:Z

    if-eqz v0, :cond_4

    :goto_3
    iput v1, p1, Lcn/kuwo/service/PlayProxy$PlayLogInfo;->d:I

    move v1, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->m:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->q:Lcn/kuwo/service/DownloadDelegate$DataSrc;

    sget-object v3, Lcn/kuwo/service/DownloadDelegate$DataSrc;->c:Lcn/kuwo/service/DownloadDelegate$DataSrc;

    if-eq v0, v3, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    iget v1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->s:I

    goto :goto_3
.end method

.method public getPreparingPercent()I
    .locals 1

    iget v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->r:I

    return v0
.end method

.method public getStatus()Lcn/kuwo/service/PlayProxy$Status;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    if-nez v0, :cond_0

    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    invoke-virtual {v0}, Lcn/kuwo/service/KwIjkPlayer;->j()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    iput-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a:Lcn/kuwo/service/PlayProxy$Status;

    :goto_1
    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a:Lcn/kuwo/service/PlayProxy$Status;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    iput-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a:Lcn/kuwo/service/PlayProxy$Status;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->c:Lcn/kuwo/service/PlayProxy$Status;

    iput-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a:Lcn/kuwo/service/PlayProxy$Status;

    goto :goto_1

    :pswitch_3
    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    iput-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a:Lcn/kuwo/service/PlayProxy$Status;

    goto :goto_1

    :pswitch_4
    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->d:Lcn/kuwo/service/PlayProxy$Status;

    iput-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a:Lcn/kuwo/service/PlayProxy$Status;

    goto :goto_1

    :pswitch_5
    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->e:Lcn/kuwo/service/PlayProxy$Status;

    iput-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a:Lcn/kuwo/service/PlayProxy$Status;

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onFFXData([D[D)V
    .locals 10

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->w:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    new-array v3, v0, [D

    move v0, v1

    move v2, v1

    :goto_1
    array-length v4, p1

    div-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_2

    aget-wide v4, p1, v2

    add-int/lit8 v6, v2, 0x1

    aget-wide v6, p1, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    aput-wide v4, v3, v0

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    array-length v0, p2

    div-int/lit8 v0, v0, 0x2

    new-array v2, v0, [D

    move v0, v1

    :goto_2
    array-length v4, p2

    div-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_3

    aget-wide v4, p2, v0

    add-int/lit8 v6, v0, 0x1

    aget-wide v6, p2, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    aput-wide v4, v2, v1

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->g:Lcn/kuwo/service/PlayStateNotify;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->g:Lcn/kuwo/service/PlayStateNotify;

    invoke-virtual {v0, v3, v2}, Lcn/kuwo/service/PlayStateNotify;->a([D[D)V

    goto :goto_0
.end method

.method public onTimer(Lcn/kuwo/base/util/KwTimer;)V
    .locals 8

    const-wide/16 v6, 0x7530

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcn/kuwo/base/util/KwTimer;->getRunningTimeMiliseconds()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    sget-object v0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadDelegate_Start timeout cost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/kuwo/base/util/KwTimer;->getRunningTimeMiliseconds()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->d()V

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->g:Lcn/kuwo/service/PlayStateNotify;

    sget-object v1, Lcn/kuwo/service/PlayDelegate$ErrorCode;->d:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/service/PlayStateNotify;->a(Lcn/kuwo/service/PlayDelegate$ErrorCode;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v2, 0x8

    iget-object v3, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    invoke-virtual {v3}, Lcn/kuwo/service/KwIjkPlayer;->j()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->h:Z

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->u:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->u:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v6

    if-ltz v2, :cond_0

    const-string v2, "playing buffer timeout"

    sget-object v3, Lcn/kuwo/service/IjkPlayerPlayCtrl;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cost:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->d()V

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->g:Lcn/kuwo/service/PlayStateNotify;

    sget-object v1, Lcn/kuwo/service/PlayDelegate$ErrorCode;->e:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/service/PlayStateNotify;->a(Lcn/kuwo/service/PlayDelegate$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    iget-object v1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    invoke-virtual {v1}, Lcn/kuwo/service/KwIjkPlayer;->j()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->g:Lcn/kuwo/service/PlayStateNotify;

    invoke-virtual {p0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->getDuration()I

    move-result v1

    invoke-virtual {p0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->getCurrentPos()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/kuwo/service/PlayStateNotify;->a(III)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    invoke-virtual {v0}, Lcn/kuwo/service/KwIjkPlayer;->e()V

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->g:Lcn/kuwo/service/PlayStateNotify;

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->d:Lcn/kuwo/service/PlayProxy$Status;

    invoke-virtual {v0, v1}, Lcn/kuwo/service/PlayStateNotify;->a(Lcn/kuwo/service/PlayProxy$Status;)V

    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->d:Lcn/kuwo/service/PlayProxy$Status;

    invoke-direct {p0, v0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Lcn/kuwo/service/PlayProxy$Status;)V

    :cond_0
    return-void
.end method

.method public play(Lcn/kuwo/base/bean/Music;ZI)Lcn/kuwo/service/PlayDelegate$ErrorCode;
    .locals 4

    iget-object v0, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Lcn/kuwo/base/bean/Music;ZI)Lcn/kuwo/service/PlayDelegate$ErrorCode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p1, Lcn/kuwo/base/bean/Music;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->b(Lcn/kuwo/base/bean/Music;ZI)Lcn/kuwo/service/PlayDelegate$ErrorCode;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->i:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    invoke-virtual {v0}, Lcn/kuwo/service/KwIjkPlayer;->c()V

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->g:Lcn/kuwo/service/PlayStateNotify;

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    invoke-virtual {v0, v1}, Lcn/kuwo/service/PlayStateNotify;->b(Lcn/kuwo/service/PlayProxy$Status;)V

    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    invoke-direct {p0, v0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->a(Lcn/kuwo/service/PlayProxy$Status;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->p()Lcn/kuwo/mod/audioeffect/IAudioEffectMgr;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->p()Lcn/kuwo/mod/audioeffect/IAudioEffectMgr;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/mod/audioeffect/IAudioEffectMgr;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lcn/kuwo/mod/audioeffect/IAudioEffectMgr;->a(I)V

    :cond_0
    return-void
.end method

.method public seek(I)V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->d:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v0, v1, :cond_0

    :cond_2
    invoke-direct {p0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->getBufferPos()I

    move-result v0

    add-int/lit16 v0, v0, -0x2710

    if-le v0, p1, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->getDuration()I

    move-result v0

    add-int/lit16 v0, v0, -0x1f4

    if-le p1, v0, :cond_4

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->g:Lcn/kuwo/service/PlayStateNotify;

    iget-object v1, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->n:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/service/PlayStateNotify;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcn/kuwo/service/KwIjkPlayer;->b(J)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->d:Ljava/lang/String;

    const-string v1, "can\'t seek need buffer"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDelegate(Lcn/kuwo/service/PlayDelegate;)V
    .locals 2

    sget-object v0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->d:Ljava/lang/String;

    const-string v1, "setDelegate"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->g:Lcn/kuwo/service/PlayStateNotify;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->g:Lcn/kuwo/service/PlayStateNotify;

    invoke-virtual {v0, p1}, Lcn/kuwo/service/PlayStateNotify;->a(Lcn/kuwo/service/PlayDelegate;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->d:Ljava/lang/String;

    const-string v1, "mPlayStateNotify is null"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVolume(FF)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    invoke-virtual {v0, p1, p2}, Lcn/kuwo/service/KwIjkPlayer;->a(FF)V

    return-void
.end method

.method public stop(Z)V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/service/IjkPlayerPlayCtrl;->d()V

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    invoke-virtual {v0}, Lcn/kuwo/service/KwIjkPlayer;->d()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/service/IjkPlayerPlayCtrl;->e:Lcn/kuwo/service/KwIjkPlayer;

    return-void
.end method
