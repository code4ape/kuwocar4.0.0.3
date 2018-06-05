.class Lcn/kuwo/mod/list/CloudMgrImpl$6;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/list/CloudMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/list/CloudMgrImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/list/CloudMgrImpl$6;->a:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl$6;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/ICloudObserver;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/kuwo/core/observers/ICloudObserver;->a(Z)V

    return-void
.end method
