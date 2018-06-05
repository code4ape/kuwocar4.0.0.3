.class Lcn/kuwo/base/log/LogSender$LogThread$1$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/kuwo/base/log/LogSender$LogThread$1;


# direct methods
.method constructor <init>(Lcn/kuwo/base/log/LogSender$LogThread$1;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/log/LogSender$LogThread$1$1;->c:Lcn/kuwo/base/log/LogSender$LogThread$1;

    iput-boolean p2, p0, Lcn/kuwo/base/log/LogSender$LogThread$1$1;->a:Z

    iput-object p3, p0, Lcn/kuwo/base/log/LogSender$LogThread$1$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/base/log/LogSender$LogThread$1$1;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/ILogSenderObserver;

    iget-boolean v1, p0, Lcn/kuwo/base/log/LogSender$LogThread$1$1;->a:Z

    iget-object v2, p0, Lcn/kuwo/base/log/LogSender$LogThread$1$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcn/kuwo/core/observers/ILogSenderObserver;->a(ZLjava/lang/String;)V

    return-void
.end method
