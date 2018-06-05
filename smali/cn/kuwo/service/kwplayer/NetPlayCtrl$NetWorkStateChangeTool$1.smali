.class Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic this$1:Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;


# direct methods
.method constructor <init>(Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool$1;->this$1:Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool$1;->this$1:Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method
