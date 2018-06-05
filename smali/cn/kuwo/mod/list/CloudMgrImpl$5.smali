.class Lcn/kuwo/mod/list/CloudMgrImpl$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcn/kuwo/mod/list/CloudMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/list/CloudMgrImpl;[B)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/list/CloudMgrImpl$5;->b:Lcn/kuwo/mod/list/CloudMgrImpl;

    iput-object p2, p0, Lcn/kuwo/mod/list/CloudMgrImpl$5;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuwo/mod/list/CloudMgrImpl$5;->a:[B

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl$5;->b:Lcn/kuwo/mod/list/CloudMgrImpl;

    iget-object v1, p0, Lcn/kuwo/mod/list/CloudMgrImpl$5;->a:[B

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/CloudMgrImpl;->a([B)Z

    move-result v0

    :cond_0
    iget-object v1, p0, Lcn/kuwo/mod/list/CloudMgrImpl$5;->b:Lcn/kuwo/mod/list/CloudMgrImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/kuwo/mod/list/CloudMgrImpl;->a(Lcn/kuwo/mod/list/CloudMgrImpl;Lcn/kuwo/base/http/HttpSession;)Lcn/kuwo/base/http/HttpSession;

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    sget-object v2, Lcn/kuwo/core/messagemgr/MessageID;->p:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v3, Lcn/kuwo/mod/list/CloudMgrImpl$5$1;

    invoke-direct {v3, p0, v0}, Lcn/kuwo/mod/list/CloudMgrImpl$5$1;-><init>(Lcn/kuwo/mod/list/CloudMgrImpl$5;Z)V

    invoke-virtual {v1, v2, v3}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method
