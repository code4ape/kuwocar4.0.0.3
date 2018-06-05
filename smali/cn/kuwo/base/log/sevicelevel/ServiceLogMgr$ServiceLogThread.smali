.class Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;
.super Ljava/lang/Thread;


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "ServiceLogThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;->a:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread$1;

    invoke-direct {v0, p0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread$1;-><init>(Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;)V

    iput-object v0, p0, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;->a:Landroid/os/Handler;

    const-string v0, "ServiceLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] run"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcn/kuwo/base/log/sevicelevel/ServiceLogMgr$ServiceLogThread;->a:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
