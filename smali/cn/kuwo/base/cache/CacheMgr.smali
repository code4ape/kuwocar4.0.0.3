.class public Lcn/kuwo/base/cache/CacheMgr;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcn/kuwo/base/cache/CacheMgr;


# instance fields
.field private b:Lcn/kuwo/base/cache/CacheMgrImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/kuwo/base/cache/CacheMgr;

    invoke-direct {v0}, Lcn/kuwo/base/cache/CacheMgr;-><init>()V

    sput-object v0, Lcn/kuwo/base/cache/CacheMgr;->a:Lcn/kuwo/base/cache/CacheMgr;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/kuwo/base/cache/CacheMgrImpl;

    invoke-direct {v0}, Lcn/kuwo/base/cache/CacheMgrImpl;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/cache/CacheMgr;->b:Lcn/kuwo/base/cache/CacheMgrImpl;

    return-void
.end method

.method public static a()Lcn/kuwo/base/cache/CacheMgr;
    .locals 1

    sget-object v0, Lcn/kuwo/base/cache/CacheMgr;->a:Lcn/kuwo/base/cache/CacheMgr;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/base/cache/CacheMgr;->b:Lcn/kuwo/base/cache/CacheMgrImpl;

    invoke-virtual {v0, p1, p2}, Lcn/kuwo/base/cache/CacheMgrImpl;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/base/cache/CacheMgr;->b:Lcn/kuwo/base/cache/CacheMgrImpl;

    invoke-virtual {v0, p1}, Lcn/kuwo/base/cache/CacheMgrImpl;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/base/cache/CacheMgr;->b:Lcn/kuwo/base/cache/CacheMgrImpl;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/kuwo/base/cache/CacheMgrImpl;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;IILjava/lang/String;[B)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/base/cache/CacheMgr;->b:Lcn/kuwo/base/cache/CacheMgrImpl;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/kuwo/base/cache/CacheMgrImpl;->a(Ljava/lang/String;IILjava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/base/cache/CacheMgr;->b:Lcn/kuwo/base/cache/CacheMgrImpl;

    invoke-virtual {v0, p1, p2}, Lcn/kuwo/base/cache/CacheMgrImpl;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/base/cache/CacheMgr;->b:Lcn/kuwo/base/cache/CacheMgrImpl;

    invoke-virtual {v0, p1, p2}, Lcn/kuwo/base/cache/CacheMgrImpl;->a(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/base/cache/CacheMgr;->b:Lcn/kuwo/base/cache/CacheMgrImpl;

    invoke-virtual {v0, p1, p2}, Lcn/kuwo/base/cache/CacheMgrImpl;->d(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/base/cache/CacheMgr;->b:Lcn/kuwo/base/cache/CacheMgrImpl;

    invoke-virtual {v0, p1, p2}, Lcn/kuwo/base/cache/CacheMgrImpl;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
