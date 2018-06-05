.class public Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;

.field private static b:Lcn/kuwo/core/observers/ext/AppObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;

    invoke-direct {v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;-><init>()V

    sput-object v0, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr;->a:Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;

    new-instance v0, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$1;

    invoke-direct {v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$1;-><init>()V

    sput-object v0, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr;->b:Lcn/kuwo/core/observers/ext/AppObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 3

    sget-object v0, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr;->a:Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;

    invoke-virtual {v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;->start()V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    sget-object v2, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr;->b:Lcn/kuwo/core/observers/ext/AppObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method public static a(Lcn/kuwo/base/log/sevicelevel/bean/KwBaseLog;)Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr;->a:Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;

    invoke-static {v1}, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;->a(Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr;->a:Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;

    invoke-static {v1}, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;->a(Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->what:I

    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr;->a:Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;

    invoke-static {v2}, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;->a(Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;
    .locals 1

    sget-object v0, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr;->a:Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;

    return-object v0
.end method

.method static synthetic c()V
    .locals 0

    invoke-static {}, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr;->d()V

    return-void
.end method

.method private static d()V
    .locals 3

    invoke-static {}, Lcn/kuwo/base/log/sevicelevel/OffLineLogMgr;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr;->a:Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;

    invoke-static {v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;->a(Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/base/log/sevicelevel/OffLineLogMgr;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr;->a:Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;

    invoke-static {v1}, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;->a(Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v0, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr;->a:Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;

    invoke-static {v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;->a(Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
