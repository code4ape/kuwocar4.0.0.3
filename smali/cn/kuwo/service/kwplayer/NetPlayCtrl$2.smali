.class Lcn/kuwo/service/kwplayer/NetPlayCtrl$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic this$0:Lcn/kuwo/service/kwplayer/NetPlayCtrl;


# direct methods
.method constructor <init>(Lcn/kuwo/service/kwplayer/NetPlayCtrl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$2;->this$0:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    const-string v0, "NetPlayCtrl"

    const-string v1, "onCompletion_run"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$2;->this$0:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    sget-object v1, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->COMPLETE:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    iput-object v1, v0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->currentStep:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$2;->this$0:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->process()V

    return-void
.end method
