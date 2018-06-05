.class Lcn/kuwo/service/kwplayer/LocalPlayCtrl$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic this$0:Lcn/kuwo/service/kwplayer/LocalPlayCtrl;


# direct methods
.method constructor <init>(Lcn/kuwo/service/kwplayer/LocalPlayCtrl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl$2;->this$0:Lcn/kuwo/service/kwplayer/LocalPlayCtrl;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl$2;->this$0:Lcn/kuwo/service/kwplayer/LocalPlayCtrl;

    sget-object v1, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->COMPLETE:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    iput-object v1, v0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->currentStep:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/LocalPlayCtrl$2;->this$0:Lcn/kuwo/service/kwplayer/LocalPlayCtrl;

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/LocalPlayCtrl;->process()V

    return-void
.end method
