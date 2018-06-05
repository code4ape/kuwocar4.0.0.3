.class Lcn/kuwo/base/log/LogSender$LogThread;
.super Ljava/lang/Thread;


# instance fields
.field private volatile a:Landroid/os/Handler;

.field private volatile b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/base/log/LogSender$LogThread;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/base/log/LogSender$LogThread;->b:Z

    const-string v0, "LogThread"

    invoke-virtual {p0, v0}, Lcn/kuwo/base/log/LogSender$LogThread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/log/LogSender$LogThread;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcn/kuwo/base/log/LogSender$LogThread$1;

    invoke-direct {v0, p0}, Lcn/kuwo/base/log/LogSender$LogThread$1;-><init>(Lcn/kuwo/base/log/LogSender$LogThread;)V

    iput-object v0, p0, Lcn/kuwo/base/log/LogSender$LogThread;->a:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/base/log/LogSender$LogThread;->b:Z

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    :goto_0
    iget-boolean v0, p0, Lcn/kuwo/base/log/LogSender$LogThread;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method
