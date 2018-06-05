.class Lcn/kuwo/mod/vip/VipMgrImpl$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/vip/VipMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/vip/VipMgrImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/vip/VipMgrImpl$1;->a:Lcn/kuwo/mod/vip/VipMgrImpl;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/vip/VipMgrImpl$1;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IVipMgrObserver;

    invoke-interface {v0}, Lcn/kuwo/core/observers/IVipMgrObserver;->a()V

    return-void
.end method
