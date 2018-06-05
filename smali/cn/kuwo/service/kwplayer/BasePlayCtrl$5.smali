.class Lcn/kuwo/service/kwplayer/BasePlayCtrl$5;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic this$0:Lcn/kuwo/service/kwplayer/BasePlayCtrl;

.field final synthetic val$error:Lcn/kuwo/service/PlayDelegate$ErrorCode;


# direct methods
.method constructor <init>(Lcn/kuwo/service/kwplayer/BasePlayCtrl;ILcn/kuwo/service/PlayDelegate$ErrorCode;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$5;->this$0:Lcn/kuwo/service/kwplayer/BasePlayCtrl;

    iput-object p3, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$5;->val$error:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    invoke-direct {p0, p2}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>(I)V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->isExiting()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$5;->this$0:Lcn/kuwo/service/kwplayer/BasePlayCtrl;

    iget-object v0, v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->delegate:Lcn/kuwo/service/PlayDelegate;

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$5;->callVersion:I

    sget v1, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentNotifyVersion:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$5;->this$0:Lcn/kuwo/service/kwplayer/BasePlayCtrl;

    iget-object v0, v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->delegate:Lcn/kuwo/service/PlayDelegate;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$5;->val$error:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    invoke-interface {v0, v1}, Lcn/kuwo/service/PlayDelegate;->a(Lcn/kuwo/service/PlayDelegate$ErrorCode;)V

    goto :goto_0
.end method
