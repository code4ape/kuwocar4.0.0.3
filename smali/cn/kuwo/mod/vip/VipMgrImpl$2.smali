.class Lcn/kuwo/mod/vip/VipMgrImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/userinfo/IUserInfoMgr;

.field final synthetic b:Lcn/kuwo/mod/vip/VipMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/vip/VipMgrImpl;Lcn/kuwo/mod/userinfo/IUserInfoMgr;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/vip/VipMgrImpl$2;->b:Lcn/kuwo/mod/vip/VipMgrImpl;

    iput-object p2, p0, Lcn/kuwo/mod/vip/VipMgrImpl$2;->a:Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/vip/VipMgrImpl$2;->b:Lcn/kuwo/mod/vip/VipMgrImpl;

    iget-object v1, p0, Lcn/kuwo/mod/vip/VipMgrImpl$2;->a:Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/vip/VipMgrImpl;->a(Lcn/kuwo/mod/userinfo/IUserInfoMgr;)Z

    return-void
.end method
