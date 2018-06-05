.class Lcn/kuwo/mod/playcontrol/PlayControlImpl$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/playcontrol/PlayControlImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/playcontrol/PlayControlImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$1;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$1;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IPlayControlObserver;

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$1;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl;

    invoke-static {v1}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a(Lcn/kuwo/mod/playcontrol/PlayControlImpl;)I

    move-result v1

    invoke-interface {v0, v1}, Lcn/kuwo/core/observers/IPlayControlObserver;->IPlayControlObserver_ChangePlayMode(I)V

    return-void
.end method
