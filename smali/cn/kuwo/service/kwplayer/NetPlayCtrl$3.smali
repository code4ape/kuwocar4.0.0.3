.class Lcn/kuwo/service/kwplayer/NetPlayCtrl$3;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic this$0:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

.field final synthetic val$savePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/kuwo/service/kwplayer/NetPlayCtrl;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$3;->this$0:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    iput-object p3, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$3;->val$savePath:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>(I)V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$3;->this$0:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    iget-object v0, v0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->delegate:Lcn/kuwo/service/PlayDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$3;->this$0:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->e:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$3;->callVersion:I

    sget v1, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentNotifyVersion:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$3;->this$0:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    iget-object v0, v0, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->delegate:Lcn/kuwo/service/PlayDelegate;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$3;->val$savePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/kuwo/service/PlayDelegate;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
