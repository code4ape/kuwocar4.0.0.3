.class Lcn/kuwo/mod/playcontrol/PlayControlImpl$20;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:[D

.field final synthetic b:[D

.field final synthetic c:Lcn/kuwo/mod/playcontrol/PlayControlImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/playcontrol/PlayControlImpl;[D[D)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$20;->c:Lcn/kuwo/mod/playcontrol/PlayControlImpl;

    iput-object p2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$20;->a:[D

    iput-object p3, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$20;->b:[D

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$20;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IPlayControlObserver;

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$20;->a:[D

    iget-object v2, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$20;->b:[D

    invoke-interface {v0, v1, v2}, Lcn/kuwo/core/observers/IPlayControlObserver;->IPlayControlObserver_FFTDataReceive([D[D)V

    return-void
.end method
