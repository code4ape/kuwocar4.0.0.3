.class Lcn/kuwo/service/kwplayer/BasePlayCtrl$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic this$0:Lcn/kuwo/service/kwplayer/BasePlayCtrl;

.field final synthetic val$realTime:J


# direct methods
.method constructor <init>(Lcn/kuwo/service/kwplayer/BasePlayCtrl;IJ)V
    .locals 1

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$1;->this$0:Lcn/kuwo/service/kwplayer/BasePlayCtrl;

    iput-wide p3, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$1;->val$realTime:J

    invoke-direct {p0, p2}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>(I)V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->isExiting()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$1;->this$0:Lcn/kuwo/service/kwplayer/BasePlayCtrl;

    iget-object v0, v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->delegate:Lcn/kuwo/service/PlayDelegate;

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$1;->callVersion:I

    sget v1, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->currentNotifyVersion:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$1;->this$0:Lcn/kuwo/service/kwplayer/BasePlayCtrl;

    invoke-static {v0}, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->access$000(Lcn/kuwo/service/kwplayer/BasePlayCtrl;)Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v1, Lcn/kuwo/service/PlayProxy$Status;->e:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$1;->this$0:Lcn/kuwo/service/kwplayer/BasePlayCtrl;

    iget-object v0, v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->delegate:Lcn/kuwo/service/PlayDelegate;

    iget-wide v2, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$1;->val$realTime:J

    invoke-interface {v0, v2, v3}, Lcn/kuwo/service/PlayDelegate;->a(J)V

    goto :goto_0
.end method
