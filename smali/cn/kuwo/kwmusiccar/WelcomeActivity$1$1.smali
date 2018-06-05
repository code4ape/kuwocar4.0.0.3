.class Lcn/kuwo/kwmusiccar/WelcomeActivity$1$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic this$1:Lcn/kuwo/kwmusiccar/WelcomeActivity$1;


# direct methods
.method constructor <init>(Lcn/kuwo/kwmusiccar/WelcomeActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity$1$1;->this$1:Lcn/kuwo/kwmusiccar/WelcomeActivity$1;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity$1$1;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IAppObserver;

    invoke-interface {v0}, Lcn/kuwo/core/observers/IAppObserver;->IAppObserver_WelcomePageDisappear()V

    return-void
.end method
