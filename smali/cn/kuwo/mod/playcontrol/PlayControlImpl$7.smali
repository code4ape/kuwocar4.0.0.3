.class Lcn/kuwo/mod/playcontrol/PlayControlImpl$7;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/playcontrol/PlayControlImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/playcontrol/PlayControlImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$7;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$7;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IPlayControlObserver;

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$7;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl;

    invoke-static {v1}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->b(Lcn/kuwo/mod/playcontrol/PlayControlImpl;)Lcn/kuwo/base/bean/Music;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/kuwo/core/observers/IPlayControlObserver;->IPlayControlObserver_ReadyPlay(Lcn/kuwo/base/bean/Music;)V

    return-void
.end method
