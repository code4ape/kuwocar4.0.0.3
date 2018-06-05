.class final Lcn/kuwo/base/util/KwThreadPool$KwThread;
.super Ljava/lang/Thread;


# instance fields
.field private volatile priority:I

.field private volatile r:Ljava/lang/Runnable;

.field private volatile running:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/kuwo/base/util/KwThreadPool$1;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/base/util/KwThreadPool$KwThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x5

    :goto_0
    iget v0, p0, Lcn/kuwo/base/util/KwThreadPool$KwThread;->priority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcn/kuwo/base/util/KwThreadPool$KwThread;->r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-static {}, Lcn/kuwo/base/util/KwThreadPool;->access$100()I

    move-result v0

    if-lt v0, v3, :cond_0

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/base/util/KwThreadPool$KwThread;->running:Z

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcn/kuwo/base/util/KwThreadPool;->access$200()[Lcn/kuwo/base/util/KwThreadPool$KwThread;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcn/kuwo/base/util/KwThreadPool;->access$100()I

    move-result v0

    if-lt v0, v3, :cond_1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    invoke-static {}, Lcn/kuwo/base/util/KwThreadPool;->access$200()[Lcn/kuwo/base/util/KwThreadPool$KwThread;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/base/util/KwThreadPool;->access$100()I

    move-result v2

    aput-object p0, v0, v2

    invoke-static {}, Lcn/kuwo/base/util/KwThreadPool;->access$104()I

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    :catch_0
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method public runThread(Ljava/lang/Runnable;I)V
    .locals 1

    iput-object p1, p0, Lcn/kuwo/base/util/KwThreadPool$KwThread;->r:Ljava/lang/Runnable;

    iput p2, p0, Lcn/kuwo/base/util/KwThreadPool$KwThread;->priority:I

    iget-boolean v0, p0, Lcn/kuwo/base/util/KwThreadPool$KwThread;->running:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/base/util/KwThreadPool$KwThread;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/base/util/KwThreadPool$KwThread;->running:Z

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
