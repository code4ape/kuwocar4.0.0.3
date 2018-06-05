.class Lcn/kuwo/mod/list/CloudMgrImpl$3;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/list/CloudMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/list/CloudMgrImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/list/CloudMgrImpl$3;->a:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->h()V

    return-void
.end method
