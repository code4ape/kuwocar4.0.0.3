.class public Lcn/kuwo/kwmusiccar/App;
.super Landroid/app/Application;


# static fields
.field private static APP_CHANNEL:Ljava/lang/String; = null

.field public static IS_DEBUG:Z = false

.field public static IS_FORGROUND:Z = false

.field private static IS_NEEDCHECK:Z = false

.field public static final KUWO_KEY:Ljava/lang/String; = "kuwo_key"

.field public static START_TIME:J

.field private static _instance:Lcn/kuwo/kwmusiccar/App;

.field private static bcopyrightopen:Z

.field public static forceForground:Z

.field private static volatile isExiting:Z

.field private static isMainActivityShowing:Z

.field private static mainThreadHandler:Landroid/os/Handler;

.field private static mainThreadID:J


# instance fields
.field private kuwoRunningtime:J

.field private kwLocationClient:Lcn/kuwo/base/util/KwLocationClient;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcn/kuwo/kwmusiccar/App;->mainThreadHandler:Landroid/os/Handler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sput-wide v0, Lcn/kuwo/kwmusiccar/App;->mainThreadID:J

    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/kwmusiccar/App;->_instance:Lcn/kuwo/kwmusiccar/App;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/kuwo/kwmusiccar/App;->START_TIME:J

    sput-boolean v2, Lcn/kuwo/kwmusiccar/App;->IS_NEEDCHECK:Z

    const-string v0, ""

    sput-object v0, Lcn/kuwo/kwmusiccar/App;->APP_CHANNEL:Ljava/lang/String;

    sput-boolean v2, Lcn/kuwo/kwmusiccar/App;->bcopyrightopen:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcn/kuwo/kwmusiccar/App;->isMainActivityShowing:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/kwmusiccar/App;->kwLocationClient:Lcn/kuwo/base/util/KwLocationClient;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcn/kuwo/kwmusiccar/App;->isExiting:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcn/kuwo/kwmusiccar/App;->bcopyrightopen:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcn/kuwo/kwmusiccar/App;->bcopyrightopen:Z

    return p0
.end method

.method static synthetic access$200()V
    .locals 0

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->innerUpdateForgroundState()V

    return-void
.end method

.method public static fetchAppUid()V
    .locals 4

    const-string v0, "appconfig"

    const-string v1, "appuid"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UidFetcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appUid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/kuwo/base/util/UidFetcher;->fetchUid(Ljava/lang/String;)V

    return-void
.end method

.method public static getAppUid()Ljava/lang/String;
    .locals 3

    const-string v0, "appconfig"

    const-string v1, "appuid"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->fetchAppUid()V

    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcn/kuwo/kwmusiccar/App;
    .locals 1

    sget-object v0, Lcn/kuwo/kwmusiccar/App;->_instance:Lcn/kuwo/kwmusiccar/App;

    return-object v0
.end method

.method public static getMainThreadHandler()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcn/kuwo/kwmusiccar/App;->mainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getMainThreadID()J
    .locals 2

    sget-wide v0, Lcn/kuwo/kwmusiccar/App;->mainThreadID:J

    return-wide v0
.end method

.method public static hasRightKey(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-boolean v2, Lcn/kuwo/kwmusiccar/App;->IS_NEEDCHECK:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "\u6388\u6743\u7684\u952e\u503c\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v2, Lcn/kuwo/kwmusiccar/App;->APP_CHANNEL:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcn/kuwo/kwmusiccar/App;->APP_CHANNEL:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "\u6388\u6743\u7684\u952e\u503c\u4e0d\u5408\u6cd5\uff01"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public static initModMgr(Z)V
    .locals 1

    const-string v0, "aac"

    invoke-static {v0}, Lcn/kuwo/service/kwplayer/codec/DecoderManager;->getDecoder(Ljava/lang/String;)Lcn/kuwo/service/kwplayer/codec/IDecoder;

    invoke-static {}, Lcn/kuwo/mod/list/RecentPlayListMgr;->a()Lcn/kuwo/mod/list/RecentPlayListMgr;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->a()Lcn/kuwo/mod/radio/IRadioMgr;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->q()Lcn/kuwo/mod/mobilead/audioad/IAudioAdMgr;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->e()Lcn/kuwo/mod/search/ISearchMgr;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->c()Lcn/kuwo/mod/lyric/ILyricsMgr;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->g()Lcn/kuwo/mod/localmgr/ILocalMgr;

    invoke-static {}, Lcn/kuwo/base/log/LogMgr;->b()V

    return-void
.end method

.method private static initVipKey()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "vip"

    const-string v1, "vip_on"

    invoke-static {v0, v1, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, ""

    const-string v2, "local_vip_on"

    invoke-static {v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_2

    const-string v1, ""

    const-string v2, "download_when_play_setting_enable"

    invoke-static {v1, v2, v3, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    :goto_0
    const-string v1, ""

    const-string v2, "local_vip_on"

    invoke-static {v1, v2, v0, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "kuwo.vip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    const-string v1, "local_vip_on"

    invoke-static {v0, v1, v4, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    const-string v0, "vip"

    const-string v1, "vip_on"

    invoke-static {v0, v1, v4, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    :cond_1
    return-void

    :cond_2
    const-string v1, ""

    const-string v2, "download_when_play_setting_enable"

    invoke-static {v1, v2, v4, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    goto :goto_0
.end method

.method private static innerUpdateForgroundState()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v0, "activity"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-boolean v3, Lcn/kuwo/kwmusiccar/App;->forceForground:Z

    if-eqz v3, :cond_3

    :goto_1
    sget-boolean v0, Lcn/kuwo/base/util/KwExceptionHandler;->lockScreenVisible:Z

    if-eqz v0, :cond_6

    :goto_2
    sget-boolean v0, Lcn/kuwo/kwmusiccar/App;->IS_FORGROUND:Z

    if-eq v0, v2, :cond_0

    sput-boolean v2, Lcn/kuwo/kwmusiccar/App;->IS_FORGROUND:Z

    const-string v0, "\u524d\u540e\u53f0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IS_FORGROUND\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v3, Lcn/kuwo/kwmusiccar/App;->IS_FORGROUND:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "   isForground:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/kwmusiccar/App$6;

    invoke-direct {v2}, Lcn/kuwo/kwmusiccar/App$6;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    goto :goto_0

    :cond_3
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_3
    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/kwmusiccar/App$7;

    invoke-direct {v2}, Lcn/kuwo/kwmusiccar/App$7;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    goto :goto_0

    :cond_6
    move v2, v1

    goto :goto_2
.end method

.method public static isExiting()Z
    .locals 1

    sget-boolean v0, Lcn/kuwo/kwmusiccar/App;->isExiting:Z

    return v0
.end method

.method public static isMainActivityShowing()Z
    .locals 1

    sget-boolean v0, Lcn/kuwo/kwmusiccar/App;->isMainActivityShowing:Z

    return v0
.end method

.method public static isOpenCopyRight()Z
    .locals 1

    sget-boolean v0, Lcn/kuwo/kwmusiccar/App;->bcopyrightopen:Z

    return v0
.end method

.method private saveAppStatusWhenExit()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->e()I

    move-result v1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_0
    sget v2, Lcn/kuwo/base/bean/UserInfo;->e:I

    if-ne v1, v2, :cond_2

    const-string v0, ""

    const-string v1, "login_auto_login"

    invoke-static {v0, v1, v3, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    const-string v0, ""

    const-string v1, "login_type"

    const-string v2, "kong"

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, ""

    const-string v2, "login_type"

    invoke-static {v1, v2, v0, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    sget-object v1, Lcn/kuwo/base/bean/UserInfo;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcn/kuwo/base/bean/UserInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->c()Lcn/kuwo/base/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/bean/UserInfo;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    :goto_2
    const-string v1, ""

    const-string v2, "login_access_token"

    invoke-static {v1, v2, v0, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_1

    :cond_4
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->c()Lcn/kuwo/base/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/bean/UserInfo;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static setForceForground(Landroid/app/Activity;Z)V
    .locals 0

    sput-boolean p1, Lcn/kuwo/kwmusiccar/App;->forceForground:Z

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->innerUpdateForgroundState()V

    return-void
.end method

.method public static setMainActivityShowing(Z)V
    .locals 0

    sput-boolean p0, Lcn/kuwo/kwmusiccar/App;->isMainActivityShowing:Z

    return-void
.end method

.method public static updateForgroundState()V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/kwmusiccar/App$5;

    invoke-direct {v1}, Lcn/kuwo/kwmusiccar/App$5;-><init>()V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method


# virtual methods
.method public ReadConf()V
    .locals 3

    const-string v0, "last_check_vip"

    invoke-static {v0}, Lcn/kuwo/base/util/SettingsUtils;->getStringSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcn/kuwo/base/util/KwDate;

    invoke-direct {v1, v0}, Lcn/kuwo/base/util/KwDate;-><init>(Ljava/lang/String;)V

    const v0, 0x15180

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcn/kuwo/base/util/KwDate;->increase(II)Lcn/kuwo/base/util/KwDate;

    new-instance v0, Lcn/kuwo/base/util/KwDate;

    invoke-direct {v0}, Lcn/kuwo/base/util/KwDate;-><init>()V

    invoke-virtual {v1, v0}, Lcn/kuwo/base/util/KwDate;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/kuwo/base/util/KwThreadPool$JobType;->NORMAL:Lcn/kuwo/base/util/KwThreadPool$JobType;

    new-instance v1, Lcn/kuwo/kwmusiccar/App$4;

    invoke-direct {v1, p0}, Lcn/kuwo/kwmusiccar/App$4;-><init>(Lcn/kuwo/kwmusiccar/App;)V

    invoke-static {v0, v1}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/SDKInitializer;->initialize(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public exitApp()V
    .locals 8

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/App;->kwLocationClient:Lcn/kuwo/base/util/KwLocationClient;

    invoke-virtual {v0}, Lcn/kuwo/base/util/KwLocationClient;->stop()V

    sget-object v0, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->c:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcn/kuwo/kwmusiccar/App;->kuwoRunningtime:J

    sub-long/2addr v4, v6

    invoke-static {v0, v2, v3, v4, v5}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;JJ)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->b(Z)V

    invoke-direct {p0}, Lcn/kuwo/kwmusiccar/App;->saveAppStatusWhenExit()V

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->release()V

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->e:Lcn/kuwo/service/PlayProxy$Status;

    invoke-virtual {v1}, Lcn/kuwo/service/PlayProxy$Status;->ordinal()I

    move-result v1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v2

    invoke-interface {v2}, Lcn/kuwo/mod/playcontrol/IPlayControl;->e()Lcn/kuwo/base/bean/Music;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/kuwo/kwmusiccar/KwCarPlay;->sendPlayerStatusBroadcast(Landroid/content/Context;ILcn/kuwo/base/bean/Music;)V

    invoke-static {p0}, Lcn/kuwo/kwmusiccar/KwCarPlay;->sendExitBroadcast(Landroid/content/Context;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/kwmusiccar/App$1;

    invoke-direct {v2, p0}, Lcn/kuwo/kwmusiccar/App$1;-><init>(Lcn/kuwo/kwmusiccar/App;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    invoke-static {}, Lcn/kuwo/service/MainService;->d()Lcn/kuwo/service/PlayProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/service/MainService;->d()Lcn/kuwo/service/PlayProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/PlayProxy;->b()Z

    :cond_0
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/kwmusiccar/App$2;

    invoke-direct {v1, p0}, Lcn/kuwo/kwmusiccar/App$2;-><init>(Lcn/kuwo/kwmusiccar/App;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method

.method public getKwLocationClient()Lcn/kuwo/base/util/KwLocationClient;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/App;->kwLocationClient:Lcn/kuwo/base/util/KwLocationClient;

    return-object v0
.end method

.method public init()V
    .locals 5

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcn/kuwo/kwmusiccar/App;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcn/kuwo/kwmusiccar/App;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcn/kuwo/kwmusiccar/App;->IS_DEBUG:Z

    const-string v0, "debugtest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v4, Lcn/kuwo/kwmusiccar/App;->IS_DEBUG:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcn/kuwo/kwmusiccar/App;->IS_DEBUG:Z

    invoke-static {v0}, Lcn/kuwo/base/log/LogMgr;->a(Z)V

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "src"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/kuwo/kwmusiccar/App;->APP_CHANNEL:Ljava/lang/String;

    :cond_0
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "check_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcn/kuwo/kwmusiccar/App;->IS_NEEDCHECK:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v0, "check_key"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v3, Lcn/kuwo/kwmusiccar/App;->IS_NEEDCHECK:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "APP_CHANNEL"

    sget-object v2, Lcn/kuwo/kwmusiccar/App;->APP_CHANNEL:Ljava/lang/String;

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appinit"

    const-string v2, "\u8bbe\u7f6e\u65e5\u5fd7\u6a21\u5f0f"

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v1, Lcn/kuwo/kwmusiccar/App;->IS_FORGROUND:Z

    invoke-static {v1}, Ljavax/net/ssl/HttpsURLConnection;->setFollowRedirects(Z)V

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->init()V

    invoke-static {}, Lcn/kuwo/base/util/SDCardUtils;->init()V

    const-string v0, "shortcut"

    invoke-static {v0, v1}, Lcn/kuwo/base/util/SettingsUtils;->setBooleanSettings(Ljava/lang/String;Z)V

    const-string v0, "copyright"

    invoke-static {v0, v1}, Lcn/kuwo/base/util/SettingsUtils;->getBooleanSettings(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcn/kuwo/kwmusiccar/App;->bcopyrightopen:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuwo/kwmusiccar/App;->kuwoRunningtime:J

    invoke-static {}, Lcn/kuwo/base/util/DeviceUtils;->isUseAnrWatchDog()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/github/anrwatchdog/ANRWatchDog;

    invoke-direct {v0}, Lcom/github/anrwatchdog/ANRWatchDog;-><init>()V

    invoke-virtual {v0}, Lcom/github/anrwatchdog/ANRWatchDog;->start()V

    :cond_0
    invoke-static {}, Lcn/kuwo/base/util/DeviceUtils;->isUseLeakCanary()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/squareup/leakcanary/LeakCanary;->a(Landroid/app/Application;)Lcom/squareup/leakcanary/RefWatcher;

    :cond_1
    new-instance v0, Lcn/kuwo/base/util/KwLocationClient;

    invoke-direct {v0, p0}, Lcn/kuwo/base/util/KwLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/kuwo/kwmusiccar/App;->kwLocationClient:Lcn/kuwo/base/util/KwLocationClient;

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/App;->kwLocationClient:Lcn/kuwo/base/util/KwLocationClient;

    invoke-virtual {v0}, Lcn/kuwo/base/util/KwLocationClient;->start()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/kuwo/kwmusiccar/App;->START_TIME:J

    sput-object p0, Lcn/kuwo/kwmusiccar/App;->_instance:Lcn/kuwo/kwmusiccar/App;

    new-instance v0, Lcn/kuwo/base/util/KwExceptionHandler;

    invoke-direct {v0}, Lcn/kuwo/base/util/KwExceptionHandler;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :try_start_0
    invoke-virtual {p0}, Lcn/kuwo/kwmusiccar/App;->getExternalCacheDir()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcn/kuwo/kwmusiccar/App;->init()V

    invoke-static {}, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr;->a()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcn/kuwo/base/util/KwExceptionHandler;->lowMemory:Z

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/kwmusiccar/App$3;

    invoke-direct {v2, p0}, Lcn/kuwo/kwmusiccar/App$3;-><init>(Lcn/kuwo/kwmusiccar/App;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method
