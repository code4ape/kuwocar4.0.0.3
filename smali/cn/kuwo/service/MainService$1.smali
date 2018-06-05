.class final Lcn/kuwo/service/MainService$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    invoke-static {}, Lcn/kuwo/service/kwplayer/PlayManager;->getInstance()Lcn/kuwo/service/kwplayer/PlayManager;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/service/MainService;->i()Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/service/kwplayer/PlayManager;->init(Lcn/kuwo/core/messagemgr/ThreadMessageHandler;)V

    return-void
.end method
