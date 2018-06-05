.class public Lcn/kuwo/service/MainService;
.super Landroid/app/Service;


# static fields
.field private static a:Lcn/kuwo/service/MainService$KwServiceConnection;

.field private static b:Lcn/kuwo/service/MainService$ConnectStatus;

.field private static c:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

.field private static d:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

.field private static e:Lcn/kuwo/service/PlayProxy;

.field private static f:Lcn/kuwo/service/DownloadProxy;


# instance fields
.field private g:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/kuwo/service/MainService$KwServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/kuwo/service/MainService$KwServiceConnection;-><init>(Lcn/kuwo/service/MainService$1;)V

    sput-object v0, Lcn/kuwo/service/MainService;->a:Lcn/kuwo/service/MainService$KwServiceConnection;

    sget-object v0, Lcn/kuwo/service/MainService$ConnectStatus;->a:Lcn/kuwo/service/MainService$ConnectStatus;

    sput-object v0, Lcn/kuwo/service/MainService;->b:Lcn/kuwo/service/MainService$ConnectStatus;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/kuwo/service/MainService$ConnectStatus;)Lcn/kuwo/service/MainService$ConnectStatus;
    .locals 0

    sput-object p0, Lcn/kuwo/service/MainService;->b:Lcn/kuwo/service/MainService$ConnectStatus;

    return-object p0
.end method

.method public static a()V
    .locals 4

    const-string v0, "\u670d\u52a1"

    const-string v1, "MainService init"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/kuwo/service/MainService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object v2, Lcn/kuwo/service/MainService;->a:Lcn/kuwo/service/MainService$KwServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/service/MainService;->b:Lcn/kuwo/service/MainService$ConnectStatus;

    sget-object v1, Lcn/kuwo/service/MainService$ConnectStatus;->a:Lcn/kuwo/service/MainService$ConnectStatus;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcn/kuwo/service/MainService$ConnectStatus;->b:Lcn/kuwo/service/MainService$ConnectStatus;

    sput-object v0, Lcn/kuwo/service/MainService;->b:Lcn/kuwo/service/MainService$ConnectStatus;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcn/kuwo/service/MainService$ConnectStatus;->e:Lcn/kuwo/service/MainService$ConnectStatus;

    sput-object v0, Lcn/kuwo/service/MainService;->b:Lcn/kuwo/service/MainService$ConnectStatus;

    goto :goto_0
.end method

.method public static b()V
    .locals 3

    invoke-static {}, Lcn/kuwo/service/MainService;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/service/MainService$ConnectStatus;->d:Lcn/kuwo/service/MainService$ConnectStatus;

    sput-object v0, Lcn/kuwo/service/MainService;->b:Lcn/kuwo/service/MainService$ConnectStatus;

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcn/kuwo/service/MainService;->a:Lcn/kuwo/service/MainService$KwServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/kuwo/service/MainService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public static c()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcn/kuwo/service/MainService;->b:Lcn/kuwo/service/MainService$ConnectStatus;

    sget-object v2, Lcn/kuwo/service/MainService$ConnectStatus;->c:Lcn/kuwo/service/MainService$ConnectStatus;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcn/kuwo/service/MainService;->b:Lcn/kuwo/service/MainService$ConnectStatus;

    sget-object v2, Lcn/kuwo/service/MainService$ConnectStatus;->e:Lcn/kuwo/service/MainService$ConnectStatus;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static d()Lcn/kuwo/service/PlayProxy;
    .locals 1

    sget-object v0, Lcn/kuwo/service/MainService;->e:Lcn/kuwo/service/PlayProxy;

    return-object v0
.end method

.method public static e()Lcn/kuwo/service/DownloadProxy;
    .locals 1

    sget-object v0, Lcn/kuwo/service/MainService;->f:Lcn/kuwo/service/DownloadProxy;

    return-object v0
.end method

.method public static f()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcn/kuwo/service/MainService;->c:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/service/MainService;->c:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v0}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->b()V

    sput-object v1, Lcn/kuwo/service/MainService;->c:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    :cond_0
    sget-object v0, Lcn/kuwo/service/MainService;->d:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    if-eqz v0, :cond_1

    sget-object v0, Lcn/kuwo/service/MainService;->d:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v0}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->b()V

    sput-object v1, Lcn/kuwo/service/MainService;->d:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    :cond_1
    return-void
.end method

.method static synthetic g()Lcn/kuwo/service/MainService$ConnectStatus;
    .locals 1

    sget-object v0, Lcn/kuwo/service/MainService;->b:Lcn/kuwo/service/MainService$ConnectStatus;

    return-object v0
.end method

.method static synthetic h()V
    .locals 0

    invoke-static {}, Lcn/kuwo/service/MainService;->k()V

    return-void
.end method

.method static synthetic i()Lcn/kuwo/core/messagemgr/ThreadMessageHandler;
    .locals 1

    sget-object v0, Lcn/kuwo/service/MainService;->c:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    return-object v0
.end method

.method static synthetic j()Lcn/kuwo/core/messagemgr/ThreadMessageHandler;
    .locals 1

    sget-object v0, Lcn/kuwo/service/MainService;->d:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    return-object v0
.end method

.method private static k()V
    .locals 3

    sget-object v0, Lcn/kuwo/service/MainService;->c:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-direct {v0}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;-><init>()V

    sput-object v0, Lcn/kuwo/service/MainService;->c:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/MainService;->c:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v1}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/kuwo/service/MainService$1;

    invoke-direct {v2}, Lcn/kuwo/service/MainService$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    :cond_0
    sget-object v0, Lcn/kuwo/service/MainService;->e:Lcn/kuwo/service/PlayProxy;

    if-nez v0, :cond_1

    new-instance v0, Lcn/kuwo/service/PlayProxy;

    sget-object v1, Lcn/kuwo/service/MainService;->c:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-direct {v0, v1}, Lcn/kuwo/service/PlayProxy;-><init>(Lcn/kuwo/core/messagemgr/ThreadMessageHandler;)V

    sput-object v0, Lcn/kuwo/service/MainService;->e:Lcn/kuwo/service/PlayProxy;

    :cond_1
    sget-object v0, Lcn/kuwo/service/MainService;->d:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    if-nez v0, :cond_2

    new-instance v0, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-direct {v0}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;-><init>()V

    sput-object v0, Lcn/kuwo/service/MainService;->d:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/MainService;->d:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v1}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/kuwo/service/MainService$2;

    invoke-direct {v2}, Lcn/kuwo/service/MainService$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    :cond_2
    sget-object v0, Lcn/kuwo/service/MainService;->f:Lcn/kuwo/service/DownloadProxy;

    if-nez v0, :cond_3

    new-instance v0, Lcn/kuwo/service/DownloadProxy;

    sget-object v1, Lcn/kuwo/service/MainService;->d:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-direct {v0, v1}, Lcn/kuwo/service/DownloadProxy;-><init>(Lcn/kuwo/core/messagemgr/ThreadMessageHandler;)V

    sput-object v0, Lcn/kuwo/service/MainService;->f:Lcn/kuwo/service/DownloadProxy;

    :cond_3
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "\u670d\u52a1"

    const-string v1, "onBind--"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    return-object v0
.end method

.method public final onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "\u670d\u52a1"

    const-string v1, "onCreate--"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->h()Lcn/kuwo/mod/notification/INotificationMgr;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/kuwo/mod/notification/INotificationMgr;->a(Landroid/app/Service;)V

    :try_start_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcn/kuwo/service/MainService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/service/MainService;->g:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcn/kuwo/service/MainService;->g:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcn/kuwo/service/MainService;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0}, Lcn/kuwo/kwmusiccar/KwCarPlay;->init(Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/service/MainService;->g:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/kuwo/service/MainService;->stopForeground(Z)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->h()Lcn/kuwo/mod/notification/INotificationMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/notification/INotificationMgr;->c()V

    iget-object v0, p0, Lcn/kuwo/service/MainService;->g:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/MainService;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/MainService;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->isExiting()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/kuwo/service/MainService$ConnectStatus;->a:Lcn/kuwo/service/MainService$ConnectStatus;

    sput-object v0, Lcn/kuwo/service/MainService;->b:Lcn/kuwo/service/MainService$ConnectStatus;

    const/16 v0, 0xe

    invoke-static {v0}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->deleteFile(Ljava/lang/String;)Z

    :goto_0
    invoke-static {p0}, Lcn/kuwo/kwmusiccar/KwCarPlay;->release(Landroid/content/Context;)V

    return-void

    :cond_1
    sget-object v0, Lcn/kuwo/service/MainService$ConnectStatus;->d:Lcn/kuwo/service/MainService$ConnectStatus;

    sput-object v0, Lcn/kuwo/service/MainService;->b:Lcn/kuwo/service/MainService$ConnectStatus;

    invoke-static {}, Lcn/kuwo/service/MainService;->a()V

    goto :goto_0
.end method

.method public final onLowMemory()V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcn/kuwo/base/util/KwExceptionHandler;->lowMemory:Z

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/service/MainService$3;

    invoke-direct {v2, p0}, Lcn/kuwo/service/MainService$3;-><init>(Lcn/kuwo/service/MainService;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const/4 v0, 0x1

    const-string v1, "\u670d\u52a1"

    const-string v2, "onStartCommand"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, v0, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
