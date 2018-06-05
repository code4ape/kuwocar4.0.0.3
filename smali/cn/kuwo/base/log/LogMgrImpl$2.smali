.class Lcn/kuwo/base/log/LogMgrImpl$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/base/log/LogMgrImpl$UserIdPack;

.field final synthetic b:Lcn/kuwo/base/log/LogMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/base/log/LogMgrImpl;Lcn/kuwo/base/log/LogMgrImpl$UserIdPack;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/log/LogMgrImpl$2;->b:Lcn/kuwo/base/log/LogMgrImpl;

    iput-object p2, p0, Lcn/kuwo/base/log/LogMgrImpl$2;->a:Lcn/kuwo/base/log/LogMgrImpl$UserIdPack;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/base/log/LogMgrImpl$2;->a:Lcn/kuwo/base/log/LogMgrImpl$UserIdPack;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->d()I

    move-result v1

    iput v1, v0, Lcn/kuwo/base/log/LogMgrImpl$UserIdPack;->a:I

    return-void
.end method
