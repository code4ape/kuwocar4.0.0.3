.class Lcn/kuwo/service/kwplayer/PlayManager$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic this$0:Lcn/kuwo/service/kwplayer/PlayManager;

.field final synthetic val$isNowMute:Z


# direct methods
.method constructor <init>(Lcn/kuwo/service/kwplayer/PlayManager;Z)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/PlayManager$2;->this$0:Lcn/kuwo/service/kwplayer/PlayManager;

    iput-boolean p2, p0, Lcn/kuwo/service/kwplayer/PlayManager$2;->val$isNowMute:Z

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager$2;->this$0:Lcn/kuwo/service/kwplayer/PlayManager;

    invoke-static {v0}, Lcn/kuwo/service/kwplayer/PlayManager;->access$100(Lcn/kuwo/service/kwplayer/PlayManager;)Lcn/kuwo/service/PlayDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager$2;->this$0:Lcn/kuwo/service/kwplayer/PlayManager;

    invoke-static {v0}, Lcn/kuwo/service/kwplayer/PlayManager;->access$100(Lcn/kuwo/service/kwplayer/PlayManager;)Lcn/kuwo/service/PlayDelegate;

    move-result-object v0

    iget-boolean v1, p0, Lcn/kuwo/service/kwplayer/PlayManager$2;->val$isNowMute:Z

    invoke-interface {v0, v1}, Lcn/kuwo/service/PlayDelegate;->d(Z)V

    :cond_0
    return-void
.end method
