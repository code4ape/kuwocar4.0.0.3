.class Lcn/kuwo/service/kwplayer/NetPlayCtrl$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic this$0:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

.field final synthetic val$err:Lcn/kuwo/service/PlayDelegate$ErrorCode;


# direct methods
.method constructor <init>(Lcn/kuwo/service/kwplayer/NetPlayCtrl;Lcn/kuwo/service/PlayDelegate$ErrorCode;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$1;->this$0:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    iput-object p2, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$1;->val$err:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$1;->this$0:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$1;->this$0:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->c:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$1;->this$0:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$1;->val$err:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    invoke-virtual {v0, v1}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->goError(Lcn/kuwo/service/PlayDelegate$ErrorCode;)V

    goto :goto_0
.end method
