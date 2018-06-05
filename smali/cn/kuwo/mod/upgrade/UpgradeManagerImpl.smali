.class public Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/core/observers/IConfigMgrObserver;


# instance fields
.field a:Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$DownloadReceiver;

.field b:Landroid/content/DialogInterface$OnCancelListener;

.field private c:Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

.field private d:Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

.field private volatile e:Z

.field private volatile f:Z

.field private g:Z

.field private h:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    invoke-direct {v0}, Lcn/kuwo/mod/upgrade/AppUpgradeInfo;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->c:Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    new-instance v0, Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    invoke-direct {v0}, Lcn/kuwo/mod/upgrade/AppUpgradeInfo;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->d:Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    iput-boolean v1, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->e:Z

    iput-boolean v1, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->f:Z

    iput-boolean v1, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->g:Z

    new-instance v0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$DownloadReceiver;

    invoke-direct {v0}, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$DownloadReceiver;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->a:Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$DownloadReceiver;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->h:Ljava/lang/Boolean;

    new-instance v0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$1;

    invoke-direct {v0, p0}, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$1;-><init>(Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;)V

    iput-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->b:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    const/4 v1, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v3, "kwplayercar_ar_"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "kwplayercar_ar_"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\."

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-string v3, "\\."

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v6

    array-length v3, v7

    if-lt v8, v3, :cond_0

    if-le v8, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-ne v8, v3, :cond_4

    move v5, v2

    :goto_1
    if-ge v5, v8, :cond_4

    :try_start_0
    aget-object v3, v6, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v4, v3

    :goto_2
    :try_start_1
    aget-object v3, v7, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    :goto_3
    if-lt v4, v3, :cond_0

    if-le v4, v3, :cond_3

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v3

    move v4, v2

    goto :goto_2

    :catch_1
    move-exception v3

    move v3, v2

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->h:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->e()V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 3

    iget-object v1, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->h:Ljava/lang/Boolean;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->h:Ljava/lang/Boolean;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    const/16 v1, 0x3e8

    new-instance v2, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2;

    invoke-direct {v2, p0, p1, p2}, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2;-><init>(Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(ILcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;)Lcn/kuwo/mod/upgrade/AppUpgradeInfo;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->d:Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    return-object v0
.end method

.method private e()V
    .locals 2

    iget-object v1, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->h:Ljava/lang/Boolean;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->h:Ljava/lang/Boolean;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private f()V
    .locals 5

    iget-object v1, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->h:Ljava/lang/Boolean;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->h:Ljava/lang/Boolean;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcn/kuwo/kwmusiccar/MainActivity;->getInstance()Lcn/kuwo/kwmusiccar/MainActivity;

    move-result-object v0

    const-string v1, "\u68c0\u67e5\u66f4\u65b0"

    const-string v2, "\u60a8\u5f53\u524d\u4f7f\u7528\u7684\u662f\u6700\u65b0\u7248\u672c"

    const-string v3, "\u786e\u5b9a"

    new-instance v4, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$3;

    invoke-direct {v4, p0}, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$3;-><init>(Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcn/kuwo/ui/dialog/DialogUtils;->showSimpleDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private g()Z
    .locals 4

    iget-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->d:Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    invoke-virtual {v0}, Lcn/kuwo/mod/upgrade/AppUpgradeInfo;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UpgradeManagerImpl"

    const-string v1, "[isShouldPrompt] invalid"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->d:Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    iget-object v0, v0, Lcn/kuwo/mod/upgrade/AppUpgradeInfo;->a:Ljava/lang/String;

    sget-object v1, Lcn/kuwo/base/util/DeviceUtils;->VERSION_CODE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    const-string v0, "UpgradeManagerImpl"

    const-string v1, "[isShouldPrompt] version is less than current version"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->d:Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    iget-wide v0, v0, Lcn/kuwo/mod/upgrade/AppUpgradeInfo;->d:J

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    const-string v0, "UpgradeManagerImpl"

    const-string v1, "[isShouldPrompt] prompted times >= 3"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "UpgradeManagerImpl"

    const-string v1, "[isShouldPrompt] network is not avaliable"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public IConfigMgrObserver_ItemChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public IConfigMgrObserver_UpdateFinish(Z)V
    .locals 3

    const-string v0, "UpgradeManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IConfigMgrObserver_UpdateFinish] bSuccess = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "UpgradeManagerImpl"

    const-string v1, "[IConfigMgrObserver_UpdateFinish] already notified. ingore."

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->f:Z

    iget-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->d:Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    const-string v1, "NewestSoft-prompt"

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/upgrade/AppUpgradeInfo;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "UpgradeManagerImpl"

    const-string v1, "[IConfigMgrObserver_UpdateFinish] loadMv local conf failed"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "UpgradeManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IConfigMgrObserver_UpdateFinish] local conf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->d:Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    invoke-virtual {v2}, Lcn/kuwo/mod/upgrade/AppUpgradeInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->g:Z

    invoke-virtual {p0}, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->c()Z

    const-string v0, "UpgradeManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IConfigMgrObserver_UpdateFinish] server conf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->c:Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    invoke-virtual {v2}, Lcn/kuwo/mod/upgrade/AppUpgradeInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->d()Z

    goto :goto_0
.end method

.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->e:Z

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->h:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/base/config/ConfMgr;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->d:Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    invoke-virtual {v2}, Lcn/kuwo/mod/upgrade/AppUpgradeInfo;->a()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "UpgradeManagerImpl"

    const-string v2, "[manualCheckUpdate] invalid"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\u76ee\u524d\u6ca1\u6709\u7f51\u7edc\u53ef\u7528"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/kuwo/base/util/ToastUtil;->showNormal(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->d:Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    iget-object v2, v2, Lcn/kuwo/mod/upgrade/AppUpgradeInfo;->a:Ljava/lang/String;

    sget-object v3, Lcn/kuwo/base/util/DeviceUtils;->VERSION_CODE:Ljava/lang/String;

    invoke-static {v2, v3}, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_1

    const-string v1, "UpgradeManagerImpl"

    const-string v2, "[manualCheckUpdate] version is less than current version"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    :try_start_2
    iget-object v1, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->d:Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    invoke-virtual {v1}, Lcn/kuwo/mod/upgrade/AppUpgradeInfo;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->a(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected c()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->c:Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    const-string v2, "NewestSoft"

    invoke-virtual {v1, v2}, Lcn/kuwo/mod/upgrade/AppUpgradeInfo;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "UpgradeManagerImpl"

    const-string v2, "[parseNewestInfo] loadMv server conf failed"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->c:Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    invoke-virtual {v1}, Lcn/kuwo/mod/upgrade/AppUpgradeInfo;->a()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "UpgradeManagerImpl"

    const-string v2, "[parseNewestInfo] server conf is invalid"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->c:Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    invoke-virtual {v0}, Lcn/kuwo/mod/upgrade/AppUpgradeInfo;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->c:Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    iget-object v0, v0, Lcn/kuwo/mod/upgrade/AppUpgradeInfo;->a:Ljava/lang/String;

    sget-object v1, Lcn/kuwo/base/util/DeviceUtils;->VERSION_CODE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->d:Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    invoke-virtual {v0}, Lcn/kuwo/mod/upgrade/AppUpgradeInfo;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->c:Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    iget-object v0, v0, Lcn/kuwo/mod/upgrade/AppUpgradeInfo;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->d:Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    iget-object v1, v1, Lcn/kuwo/mod/upgrade/AppUpgradeInfo;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->c:Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    iput-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->d:Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    iget-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->d:Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcn/kuwo/mod/upgrade/AppUpgradeInfo;->d:J

    iget-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->d:Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    const-string v1, "NewestSoft-prompt"

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/upgrade/AppUpgradeInfo;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "UpgradeManagerImpl"

    const-string v1, "[parseNewestInfo] save new upgrade conf failed"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected d()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->g:Z

    if-nez v2, :cond_0

    const-string v1, "UpgradeManagerImpl"

    const-string v2, "[checkPrompt] no prompt 0"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->g()Z

    move-result v2

    iput-boolean v2, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->g:Z

    iget-boolean v2, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->g:Z

    if-nez v2, :cond_1

    const-string v1, "UpgradeManagerImpl"

    const-string v2, "[checkPrompt] no prompt 1"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->d:Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    invoke-virtual {v0}, Lcn/kuwo/mod/upgrade/AppUpgradeInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->a(Ljava/lang/String;Z)V

    move v0, v1

    goto :goto_0
.end method
