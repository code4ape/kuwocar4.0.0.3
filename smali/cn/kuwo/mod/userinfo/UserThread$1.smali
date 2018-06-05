.class Lcn/kuwo/mod/userinfo/UserThread$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/base/http/HttpResult;

.field final synthetic b:Lcn/kuwo/mod/userinfo/UserThread;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/userinfo/UserThread;Lcn/kuwo/base/http/HttpResult;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/userinfo/UserThread$1;->b:Lcn/kuwo/mod/userinfo/UserThread;

    iput-object p2, p0, Lcn/kuwo/mod/userinfo/UserThread$1;->a:Lcn/kuwo/base/http/HttpResult;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserThread$1;->b:Lcn/kuwo/mod/userinfo/UserThread;

    invoke-static {v0}, Lcn/kuwo/mod/userinfo/UserThread;->a(Lcn/kuwo/mod/userinfo/UserThread;)Lcn/kuwo/mod/userinfo/ResultHandler;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/UserThread$1;->a:Lcn/kuwo/base/http/HttpResult;

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/userinfo/ResultHandler;->a(Lcn/kuwo/base/http/HttpResult;)V

    return-void
.end method
