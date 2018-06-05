.class Lcn/kuwo/mod/playcontrol/PlayControlImpl$8;
.super Lcn/kuwo/core/observers/ext/AppObserver;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/playcontrol/PlayControlImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/playcontrol/PlayControlImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$8;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl;

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/AppObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public IAppObserver_InitFinished()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$8;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->a(Lcn/kuwo/mod/playcontrol/PlayControlImpl;Z)Z

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$8;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl;

    invoke-virtual {v0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->w()V

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$8;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl;

    invoke-static {v0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->c(Lcn/kuwo/mod/playcontrol/PlayControlImpl;)V

    invoke-static {}, Lcn/kuwo/service/MainService;->d()Lcn/kuwo/service/PlayProxy;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$8;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl;

    invoke-virtual {v0, v1}, Lcn/kuwo/service/PlayProxy;->a(Lcn/kuwo/service/PlayDelegate;)V

    invoke-static {}, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->a()Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$8;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl;

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->a(Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor$OnShakeListener;)V

    const-string v0, ""

    const-string v1, "manual_sensor_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->a()Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->b()V

    :cond_0
    return-void
.end method

.method public IAppObserver_OnBackground()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$8;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->b(Z)V

    return-void
.end method

.method public IAppObserver_OnForground()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/PlayControlImpl$8;->a:Lcn/kuwo/mod/playcontrol/PlayControlImpl;

    invoke-virtual {v0}, Lcn/kuwo/mod/playcontrol/PlayControlImpl;->w()V

    return-void
.end method
