.class Lcn/kuwo/base/log/LogMgrImpl$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/base/log/LogMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/base/log/LogMgrImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/log/LogMgrImpl$1;->a:Lcn/kuwo/base/log/LogMgrImpl;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->i:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/base/log/LogMgrImpl$1;->a:Lcn/kuwo/base/log/LogMgrImpl;

    invoke-static {v2}, Lcn/kuwo/base/log/LogMgrImpl;->a(Lcn/kuwo/base/log/LogMgrImpl;)Lcn/kuwo/base/log/LogSenderObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method
