.class public Lcn/kuwo/mod/push/PushManager;
.super Landroid/os/HandlerThread;


# static fields
.field public static b:Lcn/kuwo/mod/push/PushServiceUtils;

.field private static c:Lcn/kuwo/mod/push/PushManager;

.field private static volatile d:Ljava/lang/Object;


# instance fields
.field public a:Lcn/kuwo/mod/push/PushHandler;

.field private volatile e:Z

.field private f:Lcn/kuwo/mod/push/PushService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcn/kuwo/mod/push/PushManager;->c:Lcn/kuwo/mod/push/PushManager;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/kuwo/mod/push/PushManager;->d:Ljava/lang/Object;

    sput-object v1, Lcn/kuwo/mod/push/PushManager;->b:Lcn/kuwo/mod/push/PushServiceUtils;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/mod/push/PushManager;->e:Z

    iput-object v1, p0, Lcn/kuwo/mod/push/PushManager;->f:Lcn/kuwo/mod/push/PushService;

    iput-object v1, p0, Lcn/kuwo/mod/push/PushManager;->a:Lcn/kuwo/mod/push/PushHandler;

    return-void
.end method

.method public static a()Lcn/kuwo/mod/push/PushServiceUtils;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/push/PushManager;->b:Lcn/kuwo/mod/push/PushServiceUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/mod/push/PushServiceUtils;

    invoke-direct {v0}, Lcn/kuwo/mod/push/PushServiceUtils;-><init>()V

    sput-object v0, Lcn/kuwo/mod/push/PushManager;->b:Lcn/kuwo/mod/push/PushServiceUtils;

    :cond_0
    sget-object v0, Lcn/kuwo/mod/push/PushManager;->b:Lcn/kuwo/mod/push/PushServiceUtils;

    return-object v0
.end method

.method public static b()Lcn/kuwo/mod/push/PushManager;
    .locals 3

    sget-object v0, Lcn/kuwo/mod/push/PushManager;->c:Lcn/kuwo/mod/push/PushManager;

    if-nez v0, :cond_1

    sget-object v1, Lcn/kuwo/mod/push/PushManager;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/kuwo/mod/push/PushManager;->c:Lcn/kuwo/mod/push/PushManager;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/mod/push/PushManager;

    const-string v2, "PushManager"

    invoke-direct {v0, v2}, Lcn/kuwo/mod/push/PushManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/kuwo/mod/push/PushManager;->c:Lcn/kuwo/mod/push/PushManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcn/kuwo/mod/push/PushManager;->c:Lcn/kuwo/mod/push/PushManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lcn/kuwo/mod/push/PushService;)V
    .locals 6

    const-wide/32 v4, 0xea60

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcn/kuwo/mod/push/PushManager;->e:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcn/kuwo/mod/push/PushManager;->f:Lcn/kuwo/mod/push/PushService;

    sget-object v0, Lcn/kuwo/mod/push/PushManager;->c:Lcn/kuwo/mod/push/PushManager;

    invoke-virtual {v0}, Lcn/kuwo/mod/push/PushManager;->start()V

    sget-object v0, Lcn/kuwo/mod/push/PushManager;->c:Lcn/kuwo/mod/push/PushManager;

    new-instance v1, Lcn/kuwo/mod/push/PushHandler;

    sget-object v2, Lcn/kuwo/mod/push/PushManager;->c:Lcn/kuwo/mod/push/PushManager;

    invoke-virtual {v2}, Lcn/kuwo/mod/push/PushManager;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/kuwo/mod/push/PushHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcn/kuwo/mod/push/PushManager;->a:Lcn/kuwo/mod/push/PushHandler;

    const-wide/32 v0, 0xea60

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcn/kuwo/mod/push/PushManager;->a:Lcn/kuwo/mod/push/PushHandler;

    invoke-virtual {v3, v2, v0, v1}, Lcn/kuwo/mod/push/PushHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcn/kuwo/mod/push/PushManager;->a:Lcn/kuwo/mod/push/PushHandler;

    const-wide/16 v2, 0x7530

    add-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lcn/kuwo/mod/push/PushHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcn/kuwo/mod/push/PushManager;->a:Lcn/kuwo/mod/push/PushHandler;

    add-long v2, v4, v4

    invoke-virtual {v1, v0, v2, v3}, Lcn/kuwo/mod/push/PushHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v0, "PushManager"

    const-string v1, "\u63a8\u9001\u5f00\u59cb"

    invoke-static {v0, v1}, Lcn/kuwo/mod/push/PushLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/push/PushManager;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcn/kuwo/mod/push/PushManager;->c:Lcn/kuwo/mod/push/PushManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/kuwo/mod/push/PushManager;->a:Lcn/kuwo/mod/push/PushHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/push/PushManager;->a:Lcn/kuwo/mod/push/PushHandler;

    invoke-virtual {v0}, Lcn/kuwo/mod/push/PushHandler;->a()V

    :cond_1
    sget-object v0, Lcn/kuwo/mod/push/PushManager;->c:Lcn/kuwo/mod/push/PushManager;

    invoke-virtual {v0}, Lcn/kuwo/mod/push/PushManager;->quit()Z

    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/mod/push/PushManager;->c:Lcn/kuwo/mod/push/PushManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/mod/push/PushManager;->e:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/push/PushManager;->f:Lcn/kuwo/mod/push/PushService;

    return-object v0
.end method
