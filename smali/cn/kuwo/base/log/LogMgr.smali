.class public final Lcn/kuwo/base/log/LogMgr;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcn/kuwo/base/log/DebugLogger;

.field private static volatile b:Z

.field private static volatile c:Z

.field private static volatile d:I

.field private static e:Lcn/kuwo/base/log/LogMgrImpl;

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/base/log/LogMgr;->a:Lcn/kuwo/base/log/DebugLogger;

    sput-boolean v1, Lcn/kuwo/base/log/LogMgr;->b:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcn/kuwo/base/log/LogMgr;->c:Z

    const/4 v0, 0x3

    sput v0, Lcn/kuwo/base/log/LogMgr;->d:I

    new-instance v0, Lcn/kuwo/base/log/LogMgrImpl;

    invoke-direct {v0}, Lcn/kuwo/base/log/LogMgrImpl;-><init>()V

    sput-object v0, Lcn/kuwo/base/log/LogMgr;->e:Lcn/kuwo/base/log/LogMgrImpl;

    sput-boolean v1, Lcn/kuwo/base/log/LogMgr;->f:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/Exception;)V
    .locals 3

    const-class v1, Lcn/kuwo/base/log/LogMgr;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcn/kuwo/base/log/LogMgr;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/base/log/LogMgr;->a:Lcn/kuwo/base/log/DebugLogger;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/base/log/LogMgr;->a:Lcn/kuwo/base/log/DebugLogger;

    const-string v2, "KuwoException"

    invoke-virtual {v0, v2, p0}, Lcn/kuwo/base/log/DebugLogger;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcn/kuwo/base/log/LogMgr;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/base/log/LogMgr;->a:Lcn/kuwo/base/log/DebugLogger;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcn/kuwo/base/log/LogMgr;->a:Lcn/kuwo/base/log/DebugLogger;

    invoke-virtual {v0, p0, p1}, Lcn/kuwo/base/log/DebugLogger;->a(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcn/kuwo/base/log/LogMgr;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/base/log/LogMgr;->a:Lcn/kuwo/base/log/DebugLogger;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcn/kuwo/base/log/LogMgr;->a:Lcn/kuwo/base/log/DebugLogger;

    invoke-virtual {v0, p0, p1}, Lcn/kuwo/base/log/DebugLogger;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit p0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized a(Z)V
    .locals 3

    const-class v1, Lcn/kuwo/base/log/LogMgr;

    monitor-enter v1

    :try_start_0
    sput-boolean p0, Lcn/kuwo/base/log/LogMgr;->b:Z

    sget-boolean v0, Lcn/kuwo/base/log/LogMgr;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/base/log/LogMgr;->a:Lcn/kuwo/base/log/DebugLogger;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb

    invoke-static {v2}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "kuwo_logcat.log"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcn/kuwo/base/log/LogMgr;->d:I

    invoke-static {v0, v2}, Lcn/kuwo/base/log/DebugLogger;->a(Ljava/lang/String;I)Lcn/kuwo/base/log/DebugLogger;

    move-result-object v0

    sput-object v0, Lcn/kuwo/base/log/LogMgr;->a:Lcn/kuwo/base/log/DebugLogger;

    sget-boolean v0, Lcn/kuwo/base/log/LogMgr;->c:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcn/kuwo/base/log/LogMgr;->a:Lcn/kuwo/base/log/DebugLogger;

    invoke-virtual {v0}, Lcn/kuwo/base/log/DebugLogger;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcn/kuwo/base/log/LogMgr;->a:Lcn/kuwo/base/log/DebugLogger;

    invoke-virtual {v0}, Lcn/kuwo/base/log/DebugLogger;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()Z
    .locals 1

    invoke-static {}, Lcn/kuwo/base/log/LogMgr;->c()Lcn/kuwo/base/log/LogMgrImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/log/LogMgrImpl;->b()Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Lcn/kuwo/base/http/HttpResult;Lcn/kuwo/base/bean/Music;)Z
    .locals 1

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcn/kuwo/base/log/LogMgr;->c()Lcn/kuwo/base/log/LogMgrImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcn/kuwo/base/log/LogMgrImpl;->a(Ljava/lang/String;Lcn/kuwo/base/http/HttpResult;Lcn/kuwo/base/bean/Music;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcn/kuwo/base/log/LogMgr;->c()Lcn/kuwo/base/log/LogMgrImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcn/kuwo/base/log/LogMgrImpl;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    sget-boolean v0, Lcn/kuwo/base/log/LogMgr;->f:Z

    if-nez v0, :cond_0

    sget-object v0, Lcn/kuwo/base/log/LogMgr;->e:Lcn/kuwo/base/log/LogMgrImpl;

    invoke-virtual {v0}, Lcn/kuwo/base/log/LogMgrImpl;->a()V

    const/4 v0, 0x1

    sput-boolean v0, Lcn/kuwo/base/log/LogMgr;->f:Z

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcn/kuwo/base/log/LogMgr;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/base/log/LogMgr;->a:Lcn/kuwo/base/log/DebugLogger;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcn/kuwo/base/log/LogMgr;->a:Lcn/kuwo/base/log/DebugLogger;

    invoke-virtual {v0, p0, p1}, Lcn/kuwo/base/log/DebugLogger;->b(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static declared-synchronized c()Lcn/kuwo/base/log/LogMgrImpl;
    .locals 2

    const-class v0, Lcn/kuwo/base/log/LogMgr;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/kuwo/base/log/LogMgr;->e:Lcn/kuwo/base/log/LogMgrImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcn/kuwo/base/log/LogMgr;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/base/log/LogMgr;->a:Lcn/kuwo/base/log/DebugLogger;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcn/kuwo/base/log/LogMgr;->a:Lcn/kuwo/base/log/DebugLogger;

    invoke-virtual {v0, p0, p1}, Lcn/kuwo/base/log/DebugLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcn/kuwo/base/log/LogMgr;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/base/log/LogMgr;->a:Lcn/kuwo/base/log/DebugLogger;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcn/kuwo/base/log/LogMgr;->a:Lcn/kuwo/base/log/DebugLogger;

    invoke-virtual {v0, p0, p1}, Lcn/kuwo/base/log/DebugLogger;->c(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcn/kuwo/base/log/LogMgr;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/base/log/LogMgr;->a:Lcn/kuwo/base/log/DebugLogger;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcn/kuwo/base/log/LogMgr;->a:Lcn/kuwo/base/log/DebugLogger;

    invoke-virtual {v0, p0, p1}, Lcn/kuwo/base/log/DebugLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
