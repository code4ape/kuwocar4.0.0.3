.class Lcn/kuwo/service/kwplayer/PlayManager$4;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic this$0:Lcn/kuwo/service/kwplayer/PlayManager;

.field final synthetic val$isLocal:Z


# direct methods
.method constructor <init>(Lcn/kuwo/service/kwplayer/PlayManager;Z)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/PlayManager$4;->this$0:Lcn/kuwo/service/kwplayer/PlayManager;

    iput-boolean p2, p0, Lcn/kuwo/service/kwplayer/PlayManager$4;->val$isLocal:Z

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager$4;->this$0:Lcn/kuwo/service/kwplayer/PlayManager;

    invoke-static {v0}, Lcn/kuwo/service/kwplayer/PlayManager;->access$100(Lcn/kuwo/service/kwplayer/PlayManager;)Lcn/kuwo/service/PlayDelegate;

    move-result-object v1

    iget-boolean v0, p0, Lcn/kuwo/service/kwplayer/PlayManager$4;->val$isLocal:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcn/kuwo/service/PlayDelegate;->c(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
