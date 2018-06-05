.class Lcn/kuwo/mod/playcontrol/PlayControlImpl$14;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcn/kuwo/mod/playcontrol/PlayControlImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/playcontrol/PlayControlImpl;Z)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$14;->b:Lcn/kuwo/mod/playcontrol/PlayControlImpl;

    iput-boolean p2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$14;->a:Z

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$14;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IPlayControlObserver;

    iget-boolean v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$14;->a:Z

    invoke-interface {v0, v1}, Lcn/kuwo/core/observers/IPlayControlObserver;->IPlayControlObserver_PlayStop(Z)V

    return-void
.end method
