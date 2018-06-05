.class public final Lcn/kuwo/base/config/ConfMgr;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcn/kuwo/base/config/ConfMgrImpl;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/kuwo/base/config/ConfMgrImpl;

    invoke-direct {v0}, Lcn/kuwo/base/config/ConfMgrImpl;-><init>()V

    sput-object v0, Lcn/kuwo/base/config/ConfMgr;->a:Lcn/kuwo/base/config/ConfMgrImpl;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/kuwo/base/config/ConfMgr;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    const-class v1, Lcn/kuwo/base/config/ConfMgr;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcn/kuwo/base/config/ConfMgr;->b()Lcn/kuwo/base/config/ConfMgrImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcn/kuwo/base/config/ConfMgrImpl;->a(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 4

    const-class v1, Lcn/kuwo/base/config/ConfMgr;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcn/kuwo/base/config/ConfMgr;->b()Lcn/kuwo/base/config/ConfMgrImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/kuwo/base/config/ConfMgrImpl;->a(Ljava/lang/String;Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-class v1, Lcn/kuwo/base/config/ConfMgr;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcn/kuwo/base/config/ConfMgr;->b()Lcn/kuwo/base/config/ConfMgrImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcn/kuwo/base/config/ConfMgrImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a()V
    .locals 2

    const-class v1, Lcn/kuwo/base/config/ConfMgr;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcn/kuwo/base/config/ConfMgr;->b()Lcn/kuwo/base/config/ConfMgrImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/config/ConfMgrImpl;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 2

    const-class v1, Lcn/kuwo/base/config/ConfMgr;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcn/kuwo/base/config/ConfMgr;->b()Lcn/kuwo/base/config/ConfMgrImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/kuwo/base/config/ConfMgrImpl;->a(Ljava/lang/String;Ljava/lang/String;IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;JZ)Z
    .locals 8

    const-class v7, Lcn/kuwo/base/config/ConfMgr;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcn/kuwo/base/config/ConfMgr;->b()Lcn/kuwo/base/config/ConfMgrImpl;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcn/kuwo/base/config/ConfMgrImpl;->a(Ljava/lang/String;Ljava/lang/String;JZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v7

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    const-class v1, Lcn/kuwo/base/config/ConfMgr;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcn/kuwo/base/config/ConfMgr;->b()Lcn/kuwo/base/config/ConfMgrImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/kuwo/base/config/ConfMgrImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    const-class v1, Lcn/kuwo/base/config/ConfMgr;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcn/kuwo/base/config/ConfMgr;->b()Lcn/kuwo/base/config/ConfMgrImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcn/kuwo/base/config/ConfMgrImpl;->a(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 2

    const-class v1, Lcn/kuwo/base/config/ConfMgr;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcn/kuwo/base/config/ConfMgr;->b()Lcn/kuwo/base/config/ConfMgrImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/kuwo/base/config/ConfMgrImpl;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized b()Lcn/kuwo/base/config/ConfMgrImpl;
    .locals 2

    const-class v1, Lcn/kuwo/base/config/ConfMgr;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcn/kuwo/base/config/ConfMgr;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lcn/kuwo/base/config/ConfMgr;->a:Lcn/kuwo/base/config/ConfMgrImpl;

    invoke-virtual {v0}, Lcn/kuwo/base/config/ConfMgrImpl;->a()V

    const/4 v0, 0x1

    sput-boolean v0, Lcn/kuwo/base/config/ConfMgr;->b:Z

    :cond_0
    sget-object v0, Lcn/kuwo/base/config/ConfMgr;->a:Lcn/kuwo/base/config/ConfMgrImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
