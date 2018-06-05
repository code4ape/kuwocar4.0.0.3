.class Lcn/kuwo/service/kwplayer/PlayManager$5;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic this$0:Lcn/kuwo/service/kwplayer/PlayManager;

.field final synthetic val$error:Lcn/kuwo/service/PlayDelegate$ErrorCode;


# direct methods
.method constructor <init>(Lcn/kuwo/service/kwplayer/PlayManager;Lcn/kuwo/service/PlayDelegate$ErrorCode;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/PlayManager$5;->this$0:Lcn/kuwo/service/kwplayer/PlayManager;

    iput-object p2, p0, Lcn/kuwo/service/kwplayer/PlayManager$5;->val$error:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager$5;->this$0:Lcn/kuwo/service/kwplayer/PlayManager;

    invoke-static {v0}, Lcn/kuwo/service/kwplayer/PlayManager;->access$100(Lcn/kuwo/service/kwplayer/PlayManager;)Lcn/kuwo/service/PlayDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager$5;->this$0:Lcn/kuwo/service/kwplayer/PlayManager;

    invoke-static {v0}, Lcn/kuwo/service/kwplayer/PlayManager;->access$100(Lcn/kuwo/service/kwplayer/PlayManager;)Lcn/kuwo/service/PlayDelegate;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/PlayManager$5;->val$error:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    invoke-interface {v0, v1}, Lcn/kuwo/service/PlayDelegate;->a(Lcn/kuwo/service/PlayDelegate$ErrorCode;)V

    :cond_0
    return-void
.end method
