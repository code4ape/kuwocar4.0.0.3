.class Lcn/kuwo/service/kwplayer/BasePlayCtrl$4;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic this$0:Lcn/kuwo/service/kwplayer/BasePlayCtrl;

.field final synthetic val$end:Z

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/kuwo/service/kwplayer/BasePlayCtrl;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$4;->this$0:Lcn/kuwo/service/kwplayer/BasePlayCtrl;

    iput-boolean p2, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$4;->val$end:Z

    iput-object p3, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$4;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->isExiting()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$4;->this$0:Lcn/kuwo/service/kwplayer/BasePlayCtrl;

    iget-object v0, v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->delegate:Lcn/kuwo/service/PlayDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$4;->this$0:Lcn/kuwo/service/kwplayer/BasePlayCtrl;

    iget-object v0, v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl;->delegate:Lcn/kuwo/service/PlayDelegate;

    iget-boolean v1, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$4;->val$end:Z

    iget-object v2, p0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$4;->val$path:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcn/kuwo/service/PlayDelegate;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method
