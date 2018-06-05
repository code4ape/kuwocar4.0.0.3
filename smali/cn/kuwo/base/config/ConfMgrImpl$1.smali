.class Lcn/kuwo/base/config/ConfMgrImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/kuwo/base/http/HttpResult;

.field final synthetic b:Lcn/kuwo/base/config/ConfMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/base/config/ConfMgrImpl;Lcn/kuwo/base/http/HttpResult;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/config/ConfMgrImpl$1;->b:Lcn/kuwo/base/config/ConfMgrImpl;

    iput-object p2, p0, Lcn/kuwo/base/config/ConfMgrImpl$1;->a:Lcn/kuwo/base/http/HttpResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuwo/base/config/ConfMgrImpl$1;->a:Lcn/kuwo/base/http/HttpResult;

    invoke-virtual {v1}, Lcn/kuwo/base/http/HttpResult;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/config/ConfMgrImpl$1;->b:Lcn/kuwo/base/config/ConfMgrImpl;

    iget-object v1, p0, Lcn/kuwo/base/config/ConfMgrImpl$1;->a:Lcn/kuwo/base/http/HttpResult;

    invoke-virtual {v1}, Lcn/kuwo/base/http/HttpResult;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/config/ConfMgrImpl;->a(Lcn/kuwo/base/config/ConfMgrImpl;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    iget-object v1, p0, Lcn/kuwo/base/config/ConfMgrImpl$1;->b:Lcn/kuwo/base/config/ConfMgrImpl;

    invoke-static {v1, v0}, Lcn/kuwo/base/config/ConfMgrImpl;->a(Lcn/kuwo/base/config/ConfMgrImpl;Z)V

    iget-object v0, p0, Lcn/kuwo/base/config/ConfMgrImpl$1;->b:Lcn/kuwo/base/config/ConfMgrImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/kuwo/base/config/ConfMgrImpl;->a(Lcn/kuwo/base/config/ConfMgrImpl;Lcn/kuwo/base/http/HttpSession;)Lcn/kuwo/base/http/HttpSession;

    return-void

    :cond_0
    const-string v1, "ConfigMgrImpl"

    const-string v2, "[IHttpNotifyFinish] update finish but failed:  %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcn/kuwo/base/config/ConfMgrImpl$1;->a:Lcn/kuwo/base/http/HttpResult;

    iget-object v4, v4, Lcn/kuwo/base/http/HttpResult;->g:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
