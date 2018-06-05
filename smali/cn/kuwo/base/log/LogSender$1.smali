.class Lcn/kuwo/base/log/LogSender$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcn/kuwo/base/log/LogSender;


# direct methods
.method constructor <init>(Lcn/kuwo/base/log/LogSender;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/log/LogSender$1;->b:Lcn/kuwo/base/log/LogSender;

    iput-object p2, p0, Lcn/kuwo/base/log/LogSender$1;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/base/log/LogSender$1;->a:Ljava/io/File;

    invoke-static {v0}, Lcn/kuwo/base/log/LogSender;->b(Ljava/io/File;)Z

    move-result v0

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    sget-object v2, Lcn/kuwo/core/messagemgr/MessageID;->i:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v3, Lcn/kuwo/base/log/LogSender$1$1;

    invoke-direct {v3, p0, v0}, Lcn/kuwo/base/log/LogSender$1$1;-><init>(Lcn/kuwo/base/log/LogSender$1;Z)V

    invoke-virtual {v1, v2, v3}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method
