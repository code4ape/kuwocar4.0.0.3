.class final Lcn/kuwo/mod/playcontrol/WoHttpService$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    sget-object v0, Lcn/kuwo/mod/playcontrol/WoHttpService;->f:Lcn/kuwo/mod/playcontrol/WoHttpService$OnSetProxyListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/mod/playcontrol/WoHttpService;->f:Lcn/kuwo/mod/playcontrol/WoHttpService$OnSetProxyListener;

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/WoHttpService$OnSetProxyListener;->onSetProxy()V

    :cond_0
    return-void
.end method
