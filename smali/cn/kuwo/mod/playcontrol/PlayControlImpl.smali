.class public Lcn/kuwo/mod/playcontrol/PlayControlImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/core/observers/IConfigMgrObserver;
.implements Lcn/kuwo/core/observers/IListObserver;
.implements Lcn/kuwo/core/observers/IUserInfoMgrObserver;
.implements Lcn/kuwo/mod/playcontrol/IPlayControl;
.implements Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor$OnShakeListener;
.implements Lcn/kuwo/service/PlayDelegate;


# instance fields
.field a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

.field b:Z

.field c:Z

.field d:Ljava/util/Random;

.field e:Z

.field private f:I

.field private g:Lcn/kuwo/base/bean/MusicList;

.field private h:Lcn/kuwo/base/bean/Music;

.field private i:I

.field private j:I

.field private k:I

.field private l:[I

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private volatile r:J

.field private s:Lcn/kuwo/core/observers/ext/AppObserver;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->f:I

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->i:I

    iput v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->j:I

    iput v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->k:I

    iput-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->l:[I

    iput v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->m:I

    iput v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->n:I

    iput v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->o:I

    iput-boolean v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->p:Z

    new-instance v0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    invoke-direct {v0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iput-boolean v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->b:Z

    iput-boolean v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->c:Z

    iput-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->d:Ljava/util/Random;

    iput-boolean v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->q:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->r:J

    new-instance v0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$8;

    invoke-direct {v0, p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl$8;-><init>(Lcn/kuwo/mod/playcontrol/PlayControlImpl;)V

    iput-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->s:Lcn/kuwo/core/observers/ext/AppObserver;

    iput-boolean v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->e:Z

    return-void
.end method

.method private D()V
    .locals 0

    return-void
.end method

.method private E()V
    .locals 0

    return-void
.end method

.method private F()V
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget-object v2, v2, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->a:Lcn/kuwo/base/bean/Music;

    if-nez v2, :cond_0

    const-string v0, "PlayControlImpl"

    const-string v1, "psrc: log music null"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcn/kuwo/service/MainService;->d()Lcn/kuwo/service/PlayProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcn/kuwo/service/PlayProxy;->h()Lcn/kuwo/service/PlayProxy$PlayLogInfo;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v0, "PlayControlImpl"

    const-string v1, "psrc: info null"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->C()V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v4, ""

    iget-object v4, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget-object v4, v4, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->a:Lcn/kuwo/base/bean/Music;

    iget-object v4, v4, Lcn/kuwo/base/bean/Music;->p:Lcn/kuwo/base/util/KwDate;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget-object v4, v4, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->a:Lcn/kuwo/base/bean/Music;

    iget-object v4, v4, Lcn/kuwo/base/bean/Music;->p:Lcn/kuwo/base/util/KwDate;

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v2, 0x800

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "NA:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget-object v5, v5, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->a:Lcn/kuwo/base/bean/Music;

    iget-object v5, v5, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "|AR:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget-object v5, v5, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->a:Lcn/kuwo/base/bean/Music;

    iget-object v5, v5, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "|AL:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget-object v5, v5, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->a:Lcn/kuwo/base/bean/Music;

    iget-object v5, v5, Lcn/kuwo/base/bean/Music;->e:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "|RID:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget-object v5, v5, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->a:Lcn/kuwo/base/bean/Music;

    iget-wide v6, v5, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "|DUR:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget-object v5, v5, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->a:Lcn/kuwo/base/bean/Music;

    iget v5, v5, Lcn/kuwo/base/bean/Music;->f:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "|T:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v2, v3, Lcn/kuwo/service/PlayProxy$PlayLogInfo;->c:Z

    if-eqz v2, :cond_4

    move v2, v0

    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "|CTYPE:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget-object v2, v2, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->a:Lcn/kuwo/base/bean/Music;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/Music;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "song1"

    :goto_4
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "|PT:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->k:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "|DELAY:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget-wide v6, v5, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->i:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "|BLKTM:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget v5, v5, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->e:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "|BLKCNT:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget v5, v5, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->f:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "|BR:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v3, Lcn/kuwo/service/PlayProxy$PlayLogInfo;->a:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "|FMT:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v3, Lcn/kuwo/service/PlayProxy$PlayLogInfo;->b:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "|CACHE:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, v3, Lcn/kuwo/service/PlayProxy$PlayLogInfo;->c:Z

    if-eqz v5, :cond_6

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|LSRC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget-object v1, v1, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->b:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|FISIZE:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget-object v1, v1, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->a:Lcn/kuwo/base/bean/Music;

    iget-wide v6, v1, Lcn/kuwo/base/bean/Music;->t:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "|SPEED:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v3, Lcn/kuwo/service/PlayProxy$PlayLogInfo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|ENDTYPE:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget v1, v1, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|MEM:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v6, Lcn/kuwo/base/util/DeviceUtils;->TOTAL_MEM:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\u7535\u53f0"

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;->c:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;

    :goto_6
    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget v1, v1, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->c:I

    packed-switch v1, :pswitch_data_0

    :goto_7
    sget-object v0, Lcn/kuwo/base/log/LogDef$LogType;->u:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v0}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/log/ServiceLevelLogger;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget v1, v1, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->c:I

    invoke-static {v0, v1}, Lcn/kuwo/kwmusiccar/KwCarPlay;->sendPlayEndBroadcast(Landroid/content/Context;I)V

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget v0, v0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget v0, v0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->d:I

    sget-object v1, Lcn/kuwo/service/PlayDelegate$ErrorCode;->n:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    invoke-virtual {v1}, Lcn/kuwo/service/PlayDelegate$ErrorCode;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget v0, v0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->d:I

    sget-object v1, Lcn/kuwo/service/PlayDelegate$ErrorCode;->s:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    invoke-virtual {v1}, Lcn/kuwo/service/PlayDelegate$ErrorCode;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget v0, v0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->d:I

    sget-object v1, Lcn/kuwo/service/PlayDelegate$ErrorCode;->t:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    invoke-virtual {v1}, Lcn/kuwo/service/PlayDelegate$ErrorCode;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget v0, v0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->d:I

    sget-object v1, Lcn/kuwo/service/PlayDelegate$ErrorCode;->q:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    invoke-virtual {v1}, Lcn/kuwo/service/PlayDelegate$ErrorCode;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget v0, v0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->d:I

    sget-object v1, Lcn/kuwo/service/PlayDelegate$ErrorCode;->m:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    invoke-virtual {v1}, Lcn/kuwo/service/PlayDelegate$ErrorCode;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcn/kuwo/base/log/LogDef$LogType;->n:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v0}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget v2, v2, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->d:I

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/log/ServiceLevelLogger;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_3
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    goto/16 :goto_2

    :cond_4
    move v2, v1

    goto/16 :goto_3

    :cond_5
    const-string v2, "song0"

    goto/16 :goto_4

    :cond_6
    move v0, v1

    goto/16 :goto_5

    :cond_7
    sget-object v0, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;->a:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;

    goto/16 :goto_6

    :pswitch_0
    iget-boolean v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->b:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->b:Z

    sget-object v1, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;->a:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget-object v2, v2, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->a:Lcn/kuwo/base/bean/Music;

    iget v3, v3, Lcn/kuwo/service/PlayProxy$PlayLogInfo;->a:I

    invoke-static {v3}, Lcn/kuwo/service/DownloadProxy$Quality;->a(I)Lcn/kuwo/service/DownloadProxy$Quality;

    move-result-object v3

    invoke-virtual {v3}, Lcn/kuwo/service/DownloadProxy$Quality;->ordinal()I

    move-result v3

    iget-object v5, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v5}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v2, v3, v5}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;Lcn/kuwo/base/bean/Music;ILjava/lang/String;)V

    goto/16 :goto_7

    :cond_8
    sget-object v1, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;->c:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget-object v2, v2, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->a:Lcn/kuwo/base/bean/Music;

    iget v3, v3, Lcn/kuwo/service/PlayProxy$PlayLogInfo;->a:I

    invoke-static {v3}, Lcn/kuwo/service/DownloadProxy$Quality;->a(I)Lcn/kuwo/service/DownloadProxy$Quality;

    move-result-object v3

    invoke-virtual {v3}, Lcn/kuwo/service/DownloadProxy$Quality;->ordinal()I

    move-result v3

    iget-object v5, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v5}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v2, v3, v5}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;Lcn/kuwo/base/bean/Music;ILjava/lang/String;)V

    goto/16 :goto_7

    :pswitch_1
    sget-object v1, Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;->a:Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget-object v2, v2, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->a:Lcn/kuwo/base/bean/Music;

    iget v3, v3, Lcn/kuwo/service/PlayProxy$PlayLogInfo;->a:I

    invoke-static {v3}, Lcn/kuwo/service/DownloadProxy$Quality;->a(I)Lcn/kuwo/service/DownloadProxy$Quality;

    move-result-object v3

    invoke-virtual {v3}, Lcn/kuwo/service/DownloadProxy$Quality;->ordinal()I

    move-result v3

    iget-object v5, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v5}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v2, v3, v5}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$LogType;Lcn/kuwo/base/log/sevicelevel/bean/PlayLog$Result;Lcn/kuwo/base/bean/Music;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcn/kuwo/mod/playcontrol/PlayControlImpl;)I
    .locals 1

    iget v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->f:I

    return v0
.end method

.method static synthetic a(Lcn/kuwo/mod/playcontrol/PlayControlImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->p:Z

    return p1
.end method

.method static synthetic b(Lcn/kuwo/mod/playcontrol/PlayControlImpl;)Lcn/kuwo/base/bean/Music;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    return-object v0
.end method

.method static synthetic c(Lcn/kuwo/mod/playcontrol/PlayControlImpl;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->D()V

    return-void
.end method

.method private e(I)I
    .locals 4

    const/high16 v1, -0x80000000

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->d:Ljava/util/Random;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->d:Ljava/util/Random;

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->d:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    if-eq v1, v0, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/2addr v0, p1

    :goto_0
    return v0

    :cond_1
    rem-int v0, v1, p1

    goto :goto_0
.end method

.method private e(Z)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->n()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->q()Lcn/kuwo/mod/mobilead/audioad/IAudioAdMgr;

    move-result-object v0

    iget v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->j:I

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    iget-object v2, v2, Lcn/kuwo/base/bean/Music;->m:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcn/kuwo/mod/mobilead/audioad/IAudioAdMgr;->a(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->n()V

    goto :goto_0
.end method


# virtual methods
.method public A()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget-wide v2, v2, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->g:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget v3, v2, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->e:I

    int-to-long v4, v3

    add-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, v2, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->e:I

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/playcontrol/PlayControlImpl$16;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl$16;-><init>(Lcn/kuwo/mod/playcontrol/PlayControlImpl;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method

.method B()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->o()V

    iput-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    iput-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->i:I

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/playcontrol/PlayControlImpl$19;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl$19;-><init>(Lcn/kuwo/mod/playcontrol/PlayControlImpl;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method

.method C()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iput-object v2, v0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->a:Lcn/kuwo/base/bean/Music;

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iput-object v2, v0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->b:Lcn/kuwo/base/bean/MusicList;

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iput v1, v0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->f:I

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iput v1, v0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->e:I

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->i:J

    return-void
.end method

.method public IConfigMgrObserver_ItemChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public IConfigMgrObserver_UpdateFinish(Z)V
    .locals 0

    return-void
.end method

.method public IListObserver_changeName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public IListObserver_deleteList(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->B()V

    :cond_0
    return-void
.end method

.method public IListObserver_initComplete()V
    .locals 3

    const-string v0, ""

    const-string v1, "login_sid"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->e:Z

    :cond_0
    iget-boolean v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->v()V

    const-string v0, "\u827e\u8fe6\u53f7"

    const-string v1, "IListObserver_initComplete load data"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public IListObserver_insertList(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public IListObserver_insertOverflow(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public IListObserver_loadComplete()V
    .locals 2

    iget-boolean v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->e:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->e()I

    move-result v0

    sget v1, Lcn/kuwo/base/bean/UserInfo;->e:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->e:Z

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    if-nez v0, :cond_0

    const-string v0, "\u827e\u8fe6\u53f7"

    const-string v1, "IListObserver_loadComplete load data"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->v()V

    :cond_0
    return-void
.end method

.method public IListObserver_startLoad()V
    .locals 0

    return-void
.end method

.method public IListObserver_updateMusic(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v1, -0x1

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->f:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->r()V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0, v2}, Lcn/kuwo/base/bean/MusicList;->c(Lcn/kuwo/base/bean/Music;)I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0, v2}, Lcn/kuwo/base/bean/MusicList;->d(Lcn/kuwo/base/bean/Music;)I

    move-result v0

    :cond_1
    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v1

    iput-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    iput v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->i:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    invoke-interface {p2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-eq v0, v1, :cond_7

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->o()V

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->B()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_1

    :cond_4
    const-string v1, "\u7535\u53f0"

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->f:I

    if-ne v1, v3, :cond_5

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->u()V

    goto :goto_0

    :cond_5
    iget v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->i:I

    sub-int v0, v1, v0

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v1

    if-lt v0, v1, :cond_6

    const/4 v0, 0x0

    :cond_6
    iput v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->i:I

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->p()V

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    iget v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->i:I

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a(Lcn/kuwo/base/bean/MusicList;I)Z

    goto :goto_0

    :cond_7
    const-string v0, "PlayControlImpl"

    const-string v1, "List change,current music missed,next music can\'t be find!"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public IUserInfoMgrObserver_OnLogin(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, ""

    const-string v1, "login_auto_login"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->e:Z

    iget-boolean v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcn/kuwo/base/bean/ListType;->v:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->B()V

    :cond_0
    return-void
.end method

.method public IUserInfoMgrObserver_OnLogout(ZLjava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcn/kuwo/base/bean/ListType;->v:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->B()V

    :cond_0
    return-void
.end method

.method public IUserInfoMgrObserver_OnReg(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public IUserInfoMgrObserver_OnSendRegSms(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public IUserInfoMgrObserver_OnUserStatusChange(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a()V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->s:Lcn/kuwo/core/observers/ext/AppObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->h:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method public a(I)V
    .locals 3

    iget v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->f:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->f:I

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->r()V

    invoke-static {}, Lcn/kuwo/kwmusiccar/MainActivity;->getInstance()Lcn/kuwo/kwmusiccar/MainActivity;

    move-result-object v0

    iget v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->f:I

    invoke-static {v0, v1}, Lcn/kuwo/kwmusiccar/KwCarPlay;->sendPlayerModeBroadcast(Landroid/content/Context;I)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/playcontrol/PlayControlImpl$1;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl$1;-><init>(Lcn/kuwo/mod/playcontrol/PlayControlImpl;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    :cond_0
    return-void
.end method

.method public a(III)V
    .locals 0

    iput p1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->j:I

    iput p2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->k:I

    return-void
.end method

.method public a(J)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->o:I

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget-wide v2, v1, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->h:J

    sub-long v2, p1, v2

    iput-wide v2, v0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->i:J

    const/4 v0, 0x3

    iput v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->n:I

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/playcontrol/PlayControlImpl$10;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl$10;-><init>(Lcn/kuwo/mod/playcontrol/PlayControlImpl;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->s()V

    return-void
.end method

.method public a(Lcn/kuwo/service/PlayDelegate$ErrorCode;)V
    .locals 5

    const/4 v2, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->c:I

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    invoke-virtual {p1}, Lcn/kuwo/service/PlayDelegate$ErrorCode;->ordinal()I

    move-result v1

    iput v1, v0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->d:I

    invoke-direct {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->F()V

    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->j:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->k:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->r:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/kuwo/service/PlayDelegate$ErrorCode;->o:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    if-eq p1, v0, :cond_1

    iput v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->n:I

    :cond_1
    iget v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->n:I

    if-ge v0, v2, :cond_3

    const-string v0, "PlayControlImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play fail,retry times:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->n:I

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    if-eqz v0, :cond_2

    const-string v0, "\u7535\u53f0"

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcn/kuwo/service/MainService;->d()Lcn/kuwo/service/PlayProxy;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0, v1, v3, v3}, Lcn/kuwo/service/PlayProxy;->a(Lcn/kuwo/base/bean/Music;ZI)Lcn/kuwo/service/PlayProxy$ErrorCode;

    :goto_1
    const-string v0, "PlayControlImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play music:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    iget-object v2, v2, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcn/kuwo/service/MainService;->d()Lcn/kuwo/service/PlayProxy;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0, v1, v4, v3}, Lcn/kuwo/service/PlayProxy;->a(Lcn/kuwo/base/bean/Music;ZI)Lcn/kuwo/service/PlayProxy$ErrorCode;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    iput-boolean v4, v0, Lcn/kuwo/base/bean/Music;->w:Z

    iget v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->o:I

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/playcontrol/PlayControlImpl$13;

    invoke-direct {v2, p0, p1}, Lcn/kuwo/mod/playcontrol/PlayControlImpl$13;-><init>(Lcn/kuwo/mod/playcontrol/PlayControlImpl;Lcn/kuwo/service/PlayDelegate$ErrorCode;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    iget v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->o:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    iget v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->o:I

    if-gt v0, v1, :cond_5

    :cond_4
    const-string v0, "PlayControlImpl"

    const-string v1, "play fail num >= 5, stopplay"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "PlayControlImpl"

    const-string v1, "play fail,next music"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->e(Z)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    iput-object p1, v0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->g()Lcn/kuwo/mod/localmgr/ILocalMgr;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    invoke-interface {v0, v1}, Lcn/kuwo/mod/localmgr/ILocalMgr;->a(Lcn/kuwo/base/bean/Music;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->p:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/service/MainService;->d()Lcn/kuwo/service/PlayProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/kuwo/service/PlayProxy;->a(Z)V

    goto :goto_0
.end method

.method public a(ZLjava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iput v3, v0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->c:I

    invoke-direct {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->F()V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/playcontrol/PlayControlImpl$14;

    invoke-direct {v2, p0, p1}, Lcn/kuwo/mod/playcontrol/PlayControlImpl$14;-><init>(Lcn/kuwo/mod/playcontrol/PlayControlImpl;Z)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    if-eqz p1, :cond_0

    invoke-direct {p0, v3}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->e(Z)V

    :cond_0
    return-void
.end method

.method public a([D[D)V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/playcontrol/PlayControlImpl$20;

    invoke-direct {v2, p0, p1, p2}, Lcn/kuwo/mod/playcontrol/PlayControlImpl$20;-><init>(Lcn/kuwo/mod/playcontrol/PlayControlImpl;[D[D)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method

.method a(Lcn/kuwo/base/bean/Music;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iput v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->n:I

    iput-boolean v1, p1, Lcn/kuwo/base/bean/Music;->w:Z

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    iget-object v3, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    if-eqz v3, :cond_2

    const-string v3, "\u7535\u53f0"

    iget-object v4, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v4}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v0, v3, :cond_1

    invoke-static {}, Lcn/kuwo/service/MainService;->d()Lcn/kuwo/service/PlayProxy;

    move-result-object v0

    iget v3, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->k:I

    invoke-virtual {v0, p1, v2, v3}, Lcn/kuwo/service/PlayProxy;->a(Lcn/kuwo/base/bean/Music;ZI)Lcn/kuwo/service/PlayProxy$ErrorCode;

    move-result-object v0

    :goto_1
    const-string v3, "PlayControlImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "play music:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " path:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->t()V

    sget-object v3, Lcn/kuwo/service/PlayProxy$ErrorCode;->c:Lcn/kuwo/service/PlayProxy$ErrorCode;

    if-ne v0, v3, :cond_4

    const-string v0, "PlayControlImpl"

    const-string v2, "play click too fast"

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/kuwo/service/MainService;->d()Lcn/kuwo/service/PlayProxy;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v1}, Lcn/kuwo/service/PlayProxy;->a(Lcn/kuwo/base/bean/Music;ZI)Lcn/kuwo/service/PlayProxy$ErrorCode;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v3, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v0, v3, :cond_3

    invoke-static {}, Lcn/kuwo/service/MainService;->d()Lcn/kuwo/service/PlayProxy;

    move-result-object v0

    iget v3, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->k:I

    invoke-virtual {v0, p1, v1, v3}, Lcn/kuwo/service/PlayProxy;->a(Lcn/kuwo/base/bean/Music;ZI)Lcn/kuwo/service/PlayProxy$ErrorCode;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcn/kuwo/service/MainService;->d()Lcn/kuwo/service/PlayProxy;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Lcn/kuwo/service/PlayProxy;->a(Lcn/kuwo/base/bean/Music;ZI)Lcn/kuwo/service/PlayProxy$ErrorCode;

    move-result-object v0

    goto :goto_1

    :cond_4
    sget-object v3, Lcn/kuwo/service/PlayProxy$ErrorCode;->b:Lcn/kuwo/service/PlayProxy$ErrorCode;

    if-ne v0, v3, :cond_5

    const-string v0, "PlayControlImpl"

    const-string v2, "play no copyright"

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto/16 :goto_0
.end method

.method public a(Lcn/kuwo/base/bean/MusicList;)Z
    .locals 4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->b:Z

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->o()V

    iput-object p1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->i:I

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/playcontrol/PlayControlImpl$5;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl$5;-><init>(Lcn/kuwo/mod/playcontrol/PlayControlImpl;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return v3
.end method

.method public a(Lcn/kuwo/base/bean/MusicList;I)Z
    .locals 5

    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->q()Lcn/kuwo/mod/mobilead/audioad/IAudioAdMgr;

    move-result-object v2

    invoke-interface {v2}, Lcn/kuwo/mod/mobilead/audioad/IAudioAdMgr;->d()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    iget v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->f:I

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->r()V

    iput-object p1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v2, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v3, Lcn/kuwo/mod/playcontrol/PlayControlImpl$2;

    invoke-direct {v3, p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl$2;-><init>(Lcn/kuwo/mod/playcontrol/PlayControlImpl;)V

    invoke-virtual {v0, v2, v3}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->u()V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    if-ltz p2, :cond_0

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->f:I

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->r()V

    :cond_3
    iput-object p1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v2

    sget-object v3, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v4, Lcn/kuwo/mod/playcontrol/PlayControlImpl$3;

    invoke-direct {v4, p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl$3;-><init>(Lcn/kuwo/mod/playcontrol/PlayControlImpl;)V

    invoke-virtual {v2, v3, v4}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    :cond_4
    iput v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->o:I

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iput v1, v2, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->c:I

    invoke-direct {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->F()V

    invoke-virtual {p1, p2}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v2

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    if-eq v2, v1, :cond_5

    iput v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->j:I

    iput v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->k:I

    :cond_5
    invoke-virtual {p0, v2}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a(Lcn/kuwo/base/bean/Music;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->j:I

    iput v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->k:I

    iput-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iput-object v2, v0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->a:Lcn/kuwo/base/bean/Music;

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    iput-object v2, v0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->b:Lcn/kuwo/base/bean/MusicList;

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->h:J

    iput p2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->i:I

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v2, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v3, Lcn/kuwo/mod/playcontrol/PlayControlImpl$4;

    invoke-direct {v3, p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl$4;-><init>(Lcn/kuwo/mod/playcontrol/PlayControlImpl;)V

    invoke-virtual {v0, v2, v3}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method public b()V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->s:Lcn/kuwo/core/observers/ext/AppObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->h:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->b(Z)V

    invoke-direct {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->E()V

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->p:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/service/MainService;->d()Lcn/kuwo/service/PlayProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/kuwo/service/PlayProxy;->a(I)Z

    goto :goto_0
.end method

.method public b(Z)V
    .locals 12

    const-wide/16 v10, -0x1

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-boolean v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->q:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-wide v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->r:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    :cond_2
    iput-wide v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->r:J

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "PlayControl"

    const-string v1, "CurListName"

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v6}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    iget v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    if-eqz v0, :cond_3

    const-string v0, "PlayControl"

    const-string v1, "CurMusicPos"

    iget v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->i:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3, v6}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;JZ)Z

    const-string v0, "PlayControl"

    const-string v1, "CurDuration"

    iget v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->j:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3, v6}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;JZ)Z

    const-string v0, "PlayControl"

    const-string v1, "CurProgress"

    iget v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->k:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3, v6}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;JZ)Z

    :goto_1
    const-string v0, "PlayControl"

    const-string v1, "PlayMode_v2"

    iget v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->f:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3, v6}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;JZ)Z

    goto :goto_0

    :cond_3
    const-string v0, "PlayControl"

    const-string v1, "CurMusicPos"

    invoke-static {v0, v1, v10, v11, v6}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;JZ)Z

    const-string v0, "PlayControl"

    const-string v1, "CurDuration"

    invoke-static {v0, v1, v8, v9, v6}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;JZ)Z

    const-string v0, "PlayControl"

    const-string v1, "CurProgress"

    invoke-static {v0, v1, v8, v9, v6}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;JZ)Z

    goto :goto_1

    :cond_4
    const-string v0, "PlayControl"

    const-string v1, "CurListName"

    const-string v2, ""

    invoke-static {v0, v1, v2, v6}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, "PlayControl"

    const-string v1, "CurMusicPos"

    invoke-static {v0, v1, v10, v11, v6}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;JZ)Z

    const-string v0, "PlayControl"

    const-string v1, "CurDuration"

    invoke-static {v0, v1, v8, v9, v6}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;JZ)Z

    const-string v0, "PlayControl"

    const-string v1, "CurProgress"

    invoke-static {v0, v1, v8, v9, v6}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;JZ)Z

    goto :goto_1
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->i:I

    return v0
.end method

.method c(I)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-array v1, p1, [I

    iput-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->l:[I

    iput v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->m:I

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->l:[I

    aput v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->e(I)I

    move-result v1

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->l:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->l:[I

    iget-object v4, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->l:[I

    aget v4, v4, v1

    aput v4, v3, v0

    iget-object v3, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->l:[I

    aput v2, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public c(Z)V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/playcontrol/PlayControlImpl$9;

    invoke-direct {v2, p0, p1}, Lcn/kuwo/mod/playcontrol/PlayControlImpl$9;-><init>(Lcn/kuwo/mod/playcontrol/PlayControlImpl;Z)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method

.method public d()Lcn/kuwo/base/bean/MusicList;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    return-object v0
.end method

.method public d(I)V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/playcontrol/PlayControlImpl$17;

    invoke-direct {v2, p0, p1}, Lcn/kuwo/mod/playcontrol/PlayControlImpl$17;-><init>(Lcn/kuwo/mod/playcontrol/PlayControlImpl;I)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method

.method public d(Z)V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/playcontrol/PlayControlImpl$18;

    invoke-direct {v2, p0, p1}, Lcn/kuwo/mod/playcontrol/PlayControlImpl$18;-><init>(Lcn/kuwo/mod/playcontrol/PlayControlImpl;Z)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method

.method public e()Lcn/kuwo/base/bean/Music;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->f:I

    return v0
.end method

.method public g()V
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->p:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/service/MainService;->d()Lcn/kuwo/service/PlayProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/PlayProxy;->c()Z

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    iget-boolean v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->j:I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/kuwo/service/MainService;->d()Lcn/kuwo/service/PlayProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/PlayProxy;->getDuration()I

    move-result v0

    goto :goto_0
.end method

.method public getStatus()Lcn/kuwo/service/PlayProxy$Status;
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->p:Z

    if-nez v0, :cond_0

    sget-object v0, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcn/kuwo/service/MainService;->d()Lcn/kuwo/service/PlayProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/PlayProxy;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    goto :goto_0
.end method

.method public h()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->p:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    if-nez v1, :cond_2

    const-string v1, "\u5f53\u524d\u65e0\u6b4c\u66f2\u64ad\u653e"

    invoke-static {v1}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v1

    sget-object v2, Lcn/kuwo/service/PlayProxy$Status;->d:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcn/kuwo/service/MainService;->d()Lcn/kuwo/service/PlayProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/PlayProxy;->d()Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v1

    sget-object v2, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v1, v2, :cond_4

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v1

    sget-object v2, Lcn/kuwo/service/PlayProxy$Status;->e:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v1, v2, :cond_5

    :cond_4
    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    iget v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->i:I

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a(Lcn/kuwo/base/bean/MusicList;I)Z

    move-result v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v1

    sget-object v2, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v1, v2, :cond_6

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v1

    sget-object v2, Lcn/kuwo/service/PlayProxy$Status;->c:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v1, v2, :cond_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public i()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->p:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "\u5f53\u524d\u65e0\u6b4c\u66f2\u64ad\u653e"

    invoke-static {v1}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->f:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    const-string v1, "\u7535\u53f0"

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->u()V

    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->c()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_3

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_5

    add-int/lit8 v0, v1, 0x1

    :cond_5
    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {p0, v1, v0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a(Lcn/kuwo/base/bean/MusicList;I)Z

    goto :goto_1
.end method

.method public j()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->p:Z

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v1, "\u5f53\u524d\u65e0\u6b4c\u66f2\u64ad\u653e"

    invoke-static {v1}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "\u7535\u53f0"

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->i()Z

    move v0, v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->f:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    const-string v0, "\u7535\u53f0"

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->u()V

    :cond_4
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->c()I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_4

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    if-nez v0, :cond_6

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {p0, v2, v0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a(Lcn/kuwo/base/bean/MusicList;I)Z

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public k()I
    .locals 2

    iget-boolean v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->k:I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/kuwo/service/MainService;->d()Lcn/kuwo/service/PlayProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/PlayProxy;->e()I

    move-result v0

    goto :goto_0
.end method

.method public l()I
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcn/kuwo/service/MainService;->d()Lcn/kuwo/service/PlayProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/PlayProxy;->f()I

    move-result v0

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcn/kuwo/service/MainService;->d()Lcn/kuwo/service/PlayProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/PlayProxy;->g()Z

    move-result v0

    goto :goto_0
.end method

.method public n()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "PlayControlImpl"

    const-string v1, "autoPlayNext current list error"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->o:I

    const-string v2, "\u7535\u53f0"

    iget-object v3, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->c()I

    move-result v0

    if-le v0, v4, :cond_2

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a(Lcn/kuwo/base/bean/MusicList;I)Z

    :cond_2
    :goto_1
    iput v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->o:I

    goto :goto_0

    :cond_3
    iget v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->f:I

    if-nez v2, :cond_4

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    iget-boolean v0, v0, Lcn/kuwo/base/bean/Music;->w:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    iget v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->i:I

    invoke-virtual {p0, v0, v2}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a(Lcn/kuwo/base/bean/MusicList;I)Z

    goto :goto_1

    :cond_4
    iget v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->f:I

    if-ne v2, v5, :cond_6

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->c()I

    move-result v2

    if-le v2, v4, :cond_5

    iget-object v3, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_5

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a(Lcn/kuwo/base/bean/MusicList;I)Z

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v2, v0}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v2

    iput-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->q()V

    iput v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->k:I

    iput v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->j:I

    invoke-virtual {p0, v5}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->b(Z)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v2, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v3, Lcn/kuwo/mod/playcontrol/PlayControlImpl$6;

    invoke-direct {v3, p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl$6;-><init>(Lcn/kuwo/mod/playcontrol/PlayControlImpl;)V

    invoke-virtual {v0, v2, v3}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    sget-object v2, Lcn/kuwo/service/PlayProxy$Status;->e:Lcn/kuwo/service/PlayProxy$Status;

    invoke-virtual {v2}, Lcn/kuwo/service/PlayProxy$Status;->ordinal()I

    move-result v2

    iget-object v3, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    invoke-static {v0, v2, v3}, Lcn/kuwo/kwmusiccar/KwCarPlay;->sendPlayerStatusBroadcast(Landroid/content/Context;ILcn/kuwo/base/bean/Music;)V

    goto :goto_1

    :cond_6
    iget v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->f:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->c()I

    move-result v2

    if-le v2, v4, :cond_2

    iget-object v3, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_7

    add-int/lit8 v0, v2, 0x1

    :cond_7
    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {p0, v2, v0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a(Lcn/kuwo/base/bean/MusicList;I)Z

    goto/16 :goto_1

    :cond_8
    iget v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->f:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->u()V

    goto/16 :goto_1
.end method

.method public o()V
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->p:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/service/MainService;->d()Lcn/kuwo/service/PlayProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/PlayProxy;->b()Z

    goto :goto_0
.end method

.method public onShake(I)V
    .locals 2

    const-string v0, "PlayControlImpl"

    const-string v1, "shake "

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->i()Z

    :cond_0
    return-void
.end method

.method p()V
    .locals 4

    const/4 v3, -0x1

    const-string v1, "\u827e\u8fe6\u53f7"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "curPlayList size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->i:I

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->i:I

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    iget v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->i:I

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    iput v3, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->i:I

    goto :goto_1
.end method

.method q()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/MusicList;->c(Lcn/kuwo/base/bean/Music;)I

    move-result v0

    iput v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->i:I

    iget v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->i:I

    if-ne v0, v2, :cond_0

    iput-object v3, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v3, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    iput v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->i:I

    goto :goto_0
.end method

.method r()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->l:[I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->t()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->l:[I

    return-void
.end method

.method s()V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    iget v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->f:I

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    if-eqz v1, :cond_3

    const-string v1, "\u7535\u53f0"

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->c()I

    move-result v1

    if-le v1, v3, :cond_1

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v2

    if-le v2, v4, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget-wide v2, v0, Lcn/kuwo/base/bean/Music;->a:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    invoke-static {}, Lcn/kuwo/service/MainService;->d()Lcn/kuwo/service/PlayProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/kuwo/service/PlayProxy;->a(Lcn/kuwo/base/bean/Music;)V

    const-string v1, "PlayControlImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prefetch music :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->f:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->c()I

    move-result v1

    if-le v1, v3, :cond_1

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_4

    add-int/lit8 v0, v1, 0x1

    :goto_1
    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    iget v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->f:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->l:[I

    if-eqz v1, :cond_1

    iget v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->m:I

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->l:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->l:[I

    iget v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->m:I

    aget v1, v1, v2

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->l:[I

    iget v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->m:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/MusicList;->get(I)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    goto :goto_0
.end method

.method t()V
    .locals 1

    invoke-static {}, Lcn/kuwo/service/MainService;->d()Lcn/kuwo/service/PlayProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/PlayProxy;->a()V

    return-void
.end method

.method u()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "PlayControlImpl"

    const-string v1, "randPlayCurList,curlist == 0"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->l:[I

    if-eqz v0, :cond_2

    iget v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->m:I

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->l:[I

    array-length v1, v1

    if-lt v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->c(I)V

    :cond_3
    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->l:[I

    if-eqz v0, :cond_4

    iget v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->m:I

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->l:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->l:[I

    iget v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->m:I

    aget v0, v0, v1

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->l:[I

    iget v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->m:I

    aget v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a(Lcn/kuwo/base/bean/MusicList;I)Z

    iget v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->m:I

    :cond_4
    return-void
.end method

.method v()V
    .locals 4

    const-string v0, "PlayControl"

    const-string v1, "PlayMode_v2"

    const-wide/16 v2, 0x2

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->f:I

    const-string v0, "PlayControl"

    const-string v1, "CurListName"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5347\u7ea7"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "curlist:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v1

    iget v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->f:I

    invoke-static {v1, v2}, Lcn/kuwo/kwmusiccar/KwCarPlay;->sendPlayerModeBroadcast(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->g:Lcn/kuwo/base/bean/MusicList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "PlayControl"

    const-string v1, "CurMusicPos"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->i:I

    invoke-virtual {p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->p()V

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->h:Lcn/kuwo/base/bean/Music;

    if-eqz v0, :cond_0

    const-string v0, "PlayControl"

    const-string v1, "CurDuration"

    iget v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->j:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->j:I

    const-string v0, "PlayControl"

    const-string v1, "CurProgress"

    iget v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->k:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->k:I

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/playcontrol/PlayControlImpl$7;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl$7;-><init>(Lcn/kuwo/mod/playcontrol/PlayControlImpl;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->q:Z

    goto :goto_0
.end method

.method w()V
    .locals 0

    return-void
.end method

.method public x()V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/playcontrol/PlayControlImpl$11;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl$11;-><init>(Lcn/kuwo/mod/playcontrol/PlayControlImpl;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method

.method public y()V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/playcontrol/PlayControlImpl$12;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl$12;-><init>(Lcn/kuwo/mod/playcontrol/PlayControlImpl;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method

.method public z()V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    iget v1, v0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->f:I

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$LogInfo;->g:J

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/playcontrol/PlayControlImpl$15;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl$15;-><init>(Lcn/kuwo/mod/playcontrol/PlayControlImpl;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method
