.class Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;
.super Lcn/kuwo/core/observers/ext/AppObserver;


# instance fields
.field private attached:Z

.field final synthetic this$0:Lcn/kuwo/service/kwplayer/NetPlayCtrl;


# direct methods
.method private constructor <init>(Lcn/kuwo/service/kwplayer/NetPlayCtrl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;->this$0:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/AppObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/kuwo/service/kwplayer/NetPlayCtrl;Lcn/kuwo/service/kwplayer/NetPlayCtrl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;-><init>(Lcn/kuwo/service/kwplayer/NetPlayCtrl;)V

    return-void
.end method


# virtual methods
.method public IAppObserver_NetworkStateChanged(ZZ)V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;->this$0:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    invoke-static {v0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->access$100(Lcn/kuwo/service/kwplayer/NetPlayCtrl;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;->detach()V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;->this$0:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    iget-object v1, v1, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->msgHandler:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v1}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool$3;

    invoke-direct {v2, p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool$3;-><init>(Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Landroid/os/Handler;Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    :cond_0
    return-void
.end method

.method public attach()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;->attached:Z

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool$1;

    invoke-direct {v1, p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool$1;-><init>(Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method

.method public detach()V
    .locals 2

    iget-boolean v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;->attached:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool$2;

    invoke-direct {v1, p0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool$2;-><init>(Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;->attached:Z

    :cond_0
    return-void
.end method
