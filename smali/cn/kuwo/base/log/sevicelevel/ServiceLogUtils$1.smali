.class final Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;


# direct methods
.method constructor <init>(Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils$1;->a:Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils$1;->a:Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v2

    invoke-interface {v2}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/log/sevicelevel/bean/OnlineLog;->r(Ljava/lang/String;)V

    return-void
.end method
