.class public Lcn/kuwo/mod/userinfo/UserInfoHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v0, ""

    const-string v1, "login_username"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const-string v2, "login_password"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, "login_uid"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v2

    const-string v3, ""

    const-string v4, "login_nickname"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, "login_headpic"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, "login_sid"

    const-string v7, ""

    invoke-static {v5, v6, v7}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, "login_level"

    invoke-static {v6, v7, v9}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v7

    invoke-interface {v7}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->c()Lcn/kuwo/base/bean/UserInfo;

    move-result-object v7

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v8

    invoke-interface {v8, v10}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->a(I)V

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7, v2}, Lcn/kuwo/base/bean/UserInfo;->setUid(I)V

    const-string v5, ""

    invoke-virtual {v7, v5}, Lcn/kuwo/base/bean/UserInfo;->setSessionId(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lcn/kuwo/base/bean/UserInfo;->setNickName(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lcn/kuwo/base/bean/UserInfo;->d(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lcn/kuwo/base/bean/UserInfo;->setLevel(I)V

    invoke-virtual {v7, v0}, Lcn/kuwo/base/bean/UserInfo;->b(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lcn/kuwo/base/bean/UserInfo;->c(Ljava/lang/String;)V

    sget v1, Lcn/kuwo/base/bean/UserInfo;->g:I

    invoke-virtual {v7, v1}, Lcn/kuwo/base/bean/UserInfo;->a(I)V

    sget v1, Lcn/kuwo/base/bean/UserInfo;->n:I

    invoke-virtual {v7, v1}, Lcn/kuwo/base/bean/UserInfo;->b(I)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v1

    invoke-interface {v1, v7}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->a(Lcn/kuwo/base/bean/UserInfo;)V

    new-instance v1, Lcn/kuwo/base/bean/UserInfo;

    invoke-direct {v1}, Lcn/kuwo/base/bean/UserInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcn/kuwo/base/bean/UserInfo;->setNickName(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcn/kuwo/base/bean/UserInfo;->d(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcn/kuwo/base/bean/UserInfo;->setUid(I)V

    const-string v0, ""

    const-string v1, "login_auto_login"

    invoke-static {v0, v1, v10, v9}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/userinfo/UserInfoHelper$1;

    invoke-direct {v2}, Lcn/kuwo/mod/userinfo/UserInfoHelper$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    invoke-virtual {v7, v2}, Lcn/kuwo/base/bean/UserInfo;->setUid(I)V

    invoke-virtual {v7, v5}, Lcn/kuwo/base/bean/UserInfo;->setSessionId(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lcn/kuwo/base/bean/UserInfo;->setNickName(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcn/kuwo/base/bean/UserInfo;->b(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lcn/kuwo/base/bean/UserInfo;->c(Ljava/lang/String;)V

    sget v0, Lcn/kuwo/base/bean/UserInfo;->e:I

    invoke-virtual {v7, v0}, Lcn/kuwo/base/bean/UserInfo;->a(I)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    invoke-interface {v0, v7}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->a(Lcn/kuwo/base/bean/UserInfo;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->f()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, ""

    const-string v1, "login_auto_login"

    invoke-static {v0, v1, v2, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    new-instance v1, Lcn/kuwo/base/bean/UserInfo;

    invoke-direct {v1, p0, p1}, Lcn/kuwo/base/bean/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->b(Lcn/kuwo/base/bean/UserInfo;)V

    return-void
.end method

.method public static b()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->e()I

    move-result v0

    sget v1, Lcn/kuwo/base/bean/UserInfo;->e:I

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->c()Lcn/kuwo/base/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/kuwo/base/bean/UserInfo;->setUid(I)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/UserInfo;->b(Ljava/lang/String;)V

    sget v1, Lcn/kuwo/base/bean/UserInfo;->e:I

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/UserInfo;->a(I)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->a(Lcn/kuwo/base/bean/UserInfo;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/userinfo/UserInfoHelper$2;

    invoke-direct {v2}, Lcn/kuwo/mod/userinfo/UserInfoHelper$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    :goto_0
    const-string v0, ""

    const-string v1, "login_sid"

    const-string v2, ""

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, ""

    const-string v1, "login_headpic"

    const-string v2, ""

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, ""

    const-string v1, "login_nickname"

    const-string v2, ""

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, ""

    const-string v1, "login_password"

    const-string v2, ""

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, ""

    const-string v1, "login_uid"

    const-string v2, "0"

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, ""

    const-string v1, "login_level"

    invoke-static {v0, v1, v3, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;IZ)Z

    return-void

    :cond_1
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->g()V

    goto :goto_0
.end method

.method public static c()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v2

    invoke-interface {v2}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->e()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
