.class Lcn/kuwo/base/util/SDCardUtils$1$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic this$0:Lcn/kuwo/base/util/SDCardUtils$1;


# direct methods
.method constructor <init>(Lcn/kuwo/base/util/SDCardUtils$1;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/util/SDCardUtils$1$1;->this$0:Lcn/kuwo/base/util/SDCardUtils$1;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/base/util/SDCardUtils$1$1;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IAppObserver;

    invoke-static {}, Lcn/kuwo/base/util/SDCardUtils;->access$000()Z

    move-result v1

    invoke-interface {v0, v1}, Lcn/kuwo/core/observers/IAppObserver;->IAppObserver_SDCardStateChanged(Z)V

    return-void
.end method
