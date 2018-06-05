.class Lcn/kuwo/base/log/LogSender$2$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcn/kuwo/base/log/LogSender$2;


# direct methods
.method constructor <init>(Lcn/kuwo/base/log/LogSender$2;Z)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/log/LogSender$2$1;->b:Lcn/kuwo/base/log/LogSender$2;

    iput-boolean p2, p0, Lcn/kuwo/base/log/LogSender$2$1;->a:Z

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/base/log/LogSender$2$1;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/ILogSenderObserver;

    iget-boolean v1, p0, Lcn/kuwo/base/log/LogSender$2$1;->a:Z

    invoke-interface {v0, v1}, Lcn/kuwo/core/observers/ILogSenderObserver;->b(Z)V

    return-void
.end method
