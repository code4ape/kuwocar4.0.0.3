.class Lcn/kuwo/base/util/NetworkStateUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcn/kuwo/base/util/NetworkStateUtil;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/kuwo/base/util/NetworkStateUtil;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/util/NetworkStateUtil$1;->this$0:Lcn/kuwo/base/util/NetworkStateUtil;

    iput-object p2, p0, Lcn/kuwo/base/util/NetworkStateUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->access$000()Z

    move-result v0

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->access$100()Z

    move-result v1

    iget-object v2, p0, Lcn/kuwo/base/util/NetworkStateUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcn/kuwo/base/util/NetworkStateUtil;->getNetworkInfo(Landroid/content/Context;)V

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->access$000()Z

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->access$100()Z

    move-result v0

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/base/util/NetworkStateUtil$1$1;

    invoke-direct {v2, p0}, Lcn/kuwo/base/util/NetworkStateUtil$1$1;-><init>(Lcn/kuwo/base/util/NetworkStateUtil$1;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    :cond_1
    return-void
.end method
