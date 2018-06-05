.class public Lcn/kuwo/mod/userinfo/LogoutResultHandler;
.super Lcn/kuwo/mod/userinfo/ResultHandler;


# direct methods
.method public constructor <init>(Lcn/kuwo/base/bean/UserInfo;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/kuwo/mod/userinfo/ResultHandler;-><init>(Lcn/kuwo/base/bean/UserInfo;I)V

    return-void
.end method


# virtual methods
.method public a(Lcn/kuwo/base/http/HttpResult;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/base/http/HttpResult;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/base/http/HttpResult;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/base/http/HttpResult;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "result=ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    :cond_0
    return-void
.end method
