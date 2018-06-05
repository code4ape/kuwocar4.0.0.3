.class Lcn/kuwo/mod/playcontrol/PlayControlImpl$13;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Lcn/kuwo/service/PlayDelegate$ErrorCode;

.field final synthetic b:Lcn/kuwo/mod/playcontrol/PlayControlImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/playcontrol/PlayControlImpl;Lcn/kuwo/service/PlayDelegate$ErrorCode;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$13;->b:Lcn/kuwo/mod/playcontrol/PlayControlImpl;

    iput-object p2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$13;->a:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$13;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IPlayControlObserver;

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$13;->a:Lcn/kuwo/service/PlayDelegate$ErrorCode;

    invoke-interface {v0, v1}, Lcn/kuwo/core/observers/IPlayControlObserver;->IPlayControlObserver_PlayFailed(Lcn/kuwo/service/PlayDelegate$ErrorCode;)V

    return-void
.end method
