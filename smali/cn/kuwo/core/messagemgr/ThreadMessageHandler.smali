.class public Lcn/kuwo/core/messagemgr/ThreadMessageHandler;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->b:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "core.ThreadMessageHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->b:Landroid/os/Handler;

    return-void
.end method
