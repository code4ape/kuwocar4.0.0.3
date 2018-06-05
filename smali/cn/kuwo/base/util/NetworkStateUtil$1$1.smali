.class Lcn/kuwo/base/util/NetworkStateUtil$1$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic this$1:Lcn/kuwo/base/util/NetworkStateUtil$1;


# direct methods
.method constructor <init>(Lcn/kuwo/base/util/NetworkStateUtil$1;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/util/NetworkStateUtil$1$1;->this$1:Lcn/kuwo/base/util/NetworkStateUtil$1;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/base/util/NetworkStateUtil$1$1;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IAppObserver;

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->access$000()Z

    move-result v1

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->access$100()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcn/kuwo/core/observers/IAppObserver;->IAppObserver_NetworkStateChanged(ZZ)V

    return-void
.end method
