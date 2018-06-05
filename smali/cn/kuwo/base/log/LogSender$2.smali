.class Lcn/kuwo/base/log/LogSender$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/base/log/LogSender$2;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/kuwo/base/log/LogSender$2;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogSender;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    sget-object v2, Lcn/kuwo/core/messagemgr/MessageID;->i:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v3, Lcn/kuwo/base/log/LogSender$2$1;

    invoke-direct {v3, p0, v0}, Lcn/kuwo/base/log/LogSender$2$1;-><init>(Lcn/kuwo/base/log/LogSender$2;Z)V

    invoke-virtual {v1, v2, v3}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method
