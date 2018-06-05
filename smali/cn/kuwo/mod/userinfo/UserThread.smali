.class public Lcn/kuwo/mod/userinfo/UserThread;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcn/kuwo/base/http/HttpSession;

.field private c:Lcn/kuwo/mod/userinfo/ResultHandler;


# direct methods
.method public constructor <init>(Lcn/kuwo/base/http/HttpSession;Ljava/lang/String;Lcn/kuwo/mod/userinfo/ResultHandler;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    iput-object p2, p0, Lcn/kuwo/mod/userinfo/UserThread;->a:Ljava/lang/String;

    iput-object p1, p0, Lcn/kuwo/mod/userinfo/UserThread;->b:Lcn/kuwo/base/http/HttpSession;

    iput-object p3, p0, Lcn/kuwo/mod/userinfo/UserThread;->c:Lcn/kuwo/mod/userinfo/ResultHandler;

    return-void
.end method

.method static synthetic a(Lcn/kuwo/mod/userinfo/UserThread;)Lcn/kuwo/mod/userinfo/ResultHandler;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserThread;->c:Lcn/kuwo/mod/userinfo/ResultHandler;

    return-object v0
.end method


# virtual methods
.method public call()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserThread;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserThread;->b:Lcn/kuwo/base/http/HttpSession;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/base/http/HttpSession;

    invoke-direct {v0}, Lcn/kuwo/base/http/HttpSession;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/userinfo/UserThread;->b:Lcn/kuwo/base/http/HttpSession;

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserThread;->b:Lcn/kuwo/base/http/HttpSession;

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/UserThread;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/http/HttpSession;->get(Ljava/lang/String;)Lcn/kuwo/base/http/HttpResult;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    new-instance v2, Lcn/kuwo/mod/userinfo/UserThread$1;

    invoke-direct {v2, p0, v0}, Lcn/kuwo/mod/userinfo/UserThread$1;-><init>(Lcn/kuwo/mod/userinfo/UserThread;Lcn/kuwo/base/http/HttpResult;)V

    invoke-virtual {v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/mod/userinfo/UserThread;->b:Lcn/kuwo/base/http/HttpSession;

    goto :goto_0
.end method
