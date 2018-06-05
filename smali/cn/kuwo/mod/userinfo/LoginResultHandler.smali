.class public Lcn/kuwo/mod/userinfo/LoginResultHandler;
.super Lcn/kuwo/mod/userinfo/ResultHandler;


# direct methods
.method public constructor <init>(Lcn/kuwo/base/bean/UserInfo;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/kuwo/mod/userinfo/ResultHandler;-><init>(Lcn/kuwo/base/bean/UserInfo;I)V

    return-void
.end method


# virtual methods
.method public a(Lcn/kuwo/base/http/HttpResult;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcn/kuwo/base/http/HttpResult;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcn/kuwo/base/http/HttpResult;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ys:handleLoginResult| netret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/kuwo/base/http/HttpResult;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/kuwo/base/http/HttpResult;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\r\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/kuwo/base/http/HttpResult;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/JsonUtils;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_d

    const-string v0, "ret"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "result"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    :cond_0
    const-string v0, "ret"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "ret"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "succ"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "result"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "result"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "succ"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_2
    sget v0, Lcn/kuwo/base/bean/UserInfo;->a:I

    iget v2, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->b:I

    if-ne v0, v2, :cond_4

    invoke-virtual {p0, v1, v5}, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a(Ljava/util/Map;Z)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget v0, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->b:I

    if-nez v0, :cond_5

    invoke-virtual {p0, v1, v5}, Lcn/kuwo/mod/userinfo/LoginResultHandler;->b(Ljava/util/Map;Z)V

    goto :goto_0

    :cond_5
    sget v0, Lcn/kuwo/base/bean/UserInfo;->b:I

    iget v2, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->b:I

    if-ne v0, v2, :cond_6

    invoke-virtual {p0, v1, v5}, Lcn/kuwo/mod/userinfo/LoginResultHandler;->c(Ljava/util/Map;Z)V

    goto :goto_0

    :cond_6
    sget v0, Lcn/kuwo/base/bean/UserInfo;->c:I

    iget v2, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->b:I

    if-ne v0, v2, :cond_7

    invoke-virtual {p0, v1, v5}, Lcn/kuwo/mod/userinfo/LoginResultHandler;->d(Ljava/util/Map;Z)V

    goto :goto_0

    :cond_7
    sget v0, Lcn/kuwo/base/bean/UserInfo;->d:I

    iget v2, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->b:I

    if-ne v0, v2, :cond_3

    invoke-virtual {p0, v1, v5}, Lcn/kuwo/mod/userinfo/LoginResultHandler;->e(Ljava/util/Map;Z)V

    goto :goto_0

    :cond_8
    const-string v0, "msg"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "enum"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v0, "\u767b\u5f55\u5931\u8d25"

    :cond_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget v1, Lcn/kuwo/base/bean/UserInfo;->c:I

    iget v2, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->b:I

    if-eq v1, v2, :cond_a

    sget v1, Lcn/kuwo/base/bean/UserInfo;->d:I

    iget v2, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->b:I

    if-ne v1, v2, :cond_c

    :cond_a
    const-string v1, "3RD"

    :cond_b
    :goto_1
    sget-object v2, Lcn/kuwo/base/log/sevicelevel/bean/LoginLog$LogType;->c:Lcn/kuwo/base/log/sevicelevel/bean/LoginLog$LogType;

    invoke-static {v2, v0}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/LoginLog$LogType;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v2

    sget-object v3, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v4, Lcn/kuwo/mod/userinfo/LoginResultHandler$6;

    invoke-direct {v4, p0, v0, v1}, Lcn/kuwo/mod/userinfo/LoginResultHandler$6;-><init>(Lcn/kuwo/mod/userinfo/LoginResultHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    goto :goto_0

    :cond_c
    const-string v1, ""

    goto :goto_1

    :cond_d
    sget-object v0, Lcn/kuwo/base/log/LogDef$LogType;->U:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v0}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x384

    invoke-static {v0, v6, v1}, Lcn/kuwo/base/log/ServiceLevelLogger;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    sget-object v0, Lcn/kuwo/base/log/sevicelevel/bean/LoginLog$LogType;->c:Lcn/kuwo/base/log/sevicelevel/bean/LoginLog$LogType;

    const-string v1, "\u670d\u52a1\u5668\u8fd4\u56de\u9519\u8bef"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/LoginLog$LogType;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/userinfo/LoginResultHandler$7;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/userinfo/LoginResultHandler$7;-><init>(Lcn/kuwo/mod/userinfo/LoginResultHandler;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    const-string v0, "LoginResultHandler"

    const-string v1, "autologin| system error"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    sget-object v0, Lcn/kuwo/base/log/LogDef$LogType;->U:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v0}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v6, v1}, Lcn/kuwo/base/log/ServiceLevelLogger;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    sget-object v0, Lcn/kuwo/base/log/sevicelevel/bean/LoginLog$LogType;->c:Lcn/kuwo/base/log/sevicelevel/bean/LoginLog$LogType;

    const-string v1, "\u7f51\u7edc\u9519\u8bef"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/LoginLog$LogType;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/userinfo/LoginResultHandler$8;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/userinfo/LoginResultHandler$8;-><init>(Lcn/kuwo/mod/userinfo/LoginResultHandler;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    const-string v0, "LoginResultHandler"

    const-string v1, "autologin| network error "

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/util/Map;Z)V
    .locals 8

    const/4 v7, 0x0

    const-string v0, "uid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "uid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->setUid(I)V

    :cond_0
    const-string v0, "uname"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "uname"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->b(Ljava/lang/String;)V

    :cond_1
    const-string v0, "sid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "sid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->setSessionId(Ljava/lang/String;)V

    :cond_2
    const-string v0, "lev"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "lev"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->setLevel(I)V

    :cond_3
    const-string v0, "head"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "head"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->d(Ljava/lang/String;)V

    :cond_4
    const-string v0, "nick"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "nick"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->setNickName(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    sget v1, Lcn/kuwo/base/bean/UserInfo;->f:I

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/UserInfo;->a(I)V

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    sget v1, Lcn/kuwo/base/bean/UserInfo;->m:I

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/UserInfo;->b(I)V

    new-instance v1, Lcn/kuwo/base/bean/VipInfo;

    invoke-direct {v1}, Lcn/kuwo/base/bean/VipInfo;-><init>()V

    const-string v0, "vip_lev"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "vip_lev"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->setVipLevel(I)V

    :cond_6
    const-string v0, "vip_type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "vip_type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->a(I)V

    :cond_7
    const-string v0, "vip_expire"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "vip_expire"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->b(I)V

    :cond_8
    const-string v0, "next_avail_date"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "next_avail_date"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->a(Ljava/lang/String;)V

    :cond_9
    const-string v0, "dcmp3"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "dcmp3"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->c(I)V

    :cond_a
    const-string v0, "dcmkv"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "dcmkv"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->e(I)V

    :cond_b
    const-string v0, "dcape"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "dcape"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->d(I)V

    :cond_c
    iget-object v0, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/UserInfo;->a(Lcn/kuwo/base/bean/VipInfo;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    const-string v1, ""

    const-string v2, "login_type"

    const-string v3, "kong"

    invoke-static {v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->a(Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-interface {v0, v1}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->a(Lcn/kuwo/base/bean/UserInfo;)V

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/UserInfo;->c()I

    move-result v0

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/UserInfo;->getNickName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/UserInfo;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, "login_uid"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0, v7}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, ""

    const-string v4, "login_sid"

    invoke-static {v0, v4, v1, v7}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, ""

    const-string v1, "login_nickname"

    invoke-static {v0, v1, v2, v7}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, ""

    const-string v1, "login_headpic"

    invoke-static {v0, v1, v3, v7}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, ""

    const-string v1, "login_auto_login"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v7}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/userinfo/LoginResultHandler$1;

    invoke-direct {v2, p0, p1}, Lcn/kuwo/mod/userinfo/LoginResultHandler$1;-><init>(Lcn/kuwo/mod/userinfo/LoginResultHandler;Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    const-string v0, "LoginResultHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autologin succ ,and sid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/util/Map;Z)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "uid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "uid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->setUid(I)V

    :cond_0
    const-string v0, "uname"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "uname"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->b(Ljava/lang/String;)V

    :cond_1
    const-string v0, "sid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "sid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->setSessionId(Ljava/lang/String;)V

    :cond_2
    const-string v0, "lev"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "lev"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->setLevel(I)V

    :cond_3
    const-string v0, "head"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "head"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->d(Ljava/lang/String;)V

    :cond_4
    const-string v0, "nick"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "nick"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->setNickName(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    sget v1, Lcn/kuwo/base/bean/UserInfo;->f:I

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/UserInfo;->a(I)V

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    sget v1, Lcn/kuwo/base/bean/UserInfo;->m:I

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/UserInfo;->b(I)V

    new-instance v1, Lcn/kuwo/base/bean/VipInfo;

    invoke-direct {v1}, Lcn/kuwo/base/bean/VipInfo;-><init>()V

    const-string v0, "vip_lev"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "vip_lev"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->setVipLevel(I)V

    :cond_6
    const-string v0, "vip_type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "vip_type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->a(I)V

    :cond_7
    const-string v0, "vip_expire"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "vip_expire"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->b(I)V

    :cond_8
    const-string v0, "next_avail_date"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "next_avail_date"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->a(Ljava/lang/String;)V

    :cond_9
    const-string v0, "dcmp3"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "dcmp3"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->c(I)V

    :cond_a
    const-string v0, "dcmkv"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "dcmkv"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->e(I)V

    :cond_b
    const-string v0, "dcape"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "dcape"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->d(I)V

    :cond_c
    iget-object v0, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/UserInfo;->a(Lcn/kuwo/base/bean/VipInfo;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    const-string v1, ""

    const-string v2, "login_type"

    const-string v3, "kong"

    invoke-static {v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->a(Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-interface {v0, v1}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->a(Lcn/kuwo/base/bean/UserInfo;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/userinfo/LoginResultHandler$2;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/userinfo/LoginResultHandler$2;-><init>(Lcn/kuwo/mod/userinfo/LoginResultHandler;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    const-string v0, "LoginResultHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autologin_no_login_notify succ ,and sid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/util/Map;Z)V
    .locals 10

    const/4 v9, 0x0

    const-string v0, "uid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "uid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v9}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->setUid(I)V

    :cond_0
    const-string v0, "sid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "sid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->setSessionId(Ljava/lang/String;)V

    :cond_1
    const-string v0, "lev"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "lev"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v9}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->setLevel(I)V

    :cond_2
    const-string v0, "head"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "head"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->d(Ljava/lang/String;)V

    :cond_3
    const-string v0, "nick"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "nick"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->setNickName(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    sget v1, Lcn/kuwo/base/bean/UserInfo;->f:I

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/UserInfo;->a(I)V

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    sget v1, Lcn/kuwo/base/bean/UserInfo;->m:I

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/UserInfo;->b(I)V

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    sget-object v1, Lcn/kuwo/base/bean/UserInfo;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/UserInfo;->a(Ljava/lang/String;)V

    new-instance v1, Lcn/kuwo/base/bean/VipInfo;

    invoke-direct {v1}, Lcn/kuwo/base/bean/VipInfo;-><init>()V

    const-string v0, "vip_lev"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "vip_lev"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v9}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->setVipLevel(I)V

    :cond_5
    const-string v0, "vip_type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "vip_type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->a(I)V

    :cond_6
    const-string v0, "vip_expire"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "vip_expire"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v9}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->b(I)V

    :cond_7
    const-string v0, "next_avail_date"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "next_avail_date"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->a(Ljava/lang/String;)V

    :cond_8
    const-string v0, "mp3"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "mp3"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v9}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->c(I)V

    :cond_9
    const-string v0, "mkv"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "mkv"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v9}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->e(I)V

    :cond_a
    const-string v0, "ape"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "ape"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v9}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->d(I)V

    :cond_b
    iget-object v0, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/UserInfo;->a(Lcn/kuwo/base/bean/VipInfo;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-interface {v0, v1}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->a(Lcn/kuwo/base/bean/UserInfo;)V

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/UserInfo;->c()I

    move-result v0

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/UserInfo;->getNickName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/UserInfo;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v4}, Lcn/kuwo/base/bean/UserInfo;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v5}, Lcn/kuwo/base/bean/UserInfo;->e()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, "login_uid"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7, v0, v9}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, ""

    const-string v6, "login_sid"

    invoke-static {v0, v6, v1, v9}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, ""

    const-string v1, "login_nickname"

    invoke-static {v0, v1, v2, v9}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, ""

    const-string v1, "login_headpic"

    invoke-static {v0, v1, v3, v9}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, ""

    const-string v1, "login_username"

    invoke-static {v0, v1, v4, v9}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, ""

    const-string v1, "login_password"

    invoke-static {v0, v1, v5, v9}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, ""

    const-string v1, "login_type"

    sget-object v2, Lcn/kuwo/base/bean/UserInfo;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2, v9}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/bean/UserInfo;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->a(Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/userinfo/LoginResultHandler$3;

    invoke-direct {v2, p0, p1}, Lcn/kuwo/mod/userinfo/LoginResultHandler$3;-><init>(Lcn/kuwo/mod/userinfo/LoginResultHandler;Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    const-string v0, "LoginResultHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nplogin succ ,and sid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/util/Map;Z)V
    .locals 8

    const/4 v7, 0x0

    const-string v0, "uid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "uid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->setUid(I)V

    :cond_0
    const-string v0, "sid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "sid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->setSessionId(Ljava/lang/String;)V

    :cond_1
    const-string v0, "lev"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "lev"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->setLevel(I)V

    :cond_2
    const-string v0, "head"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "head"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->d(Ljava/lang/String;)V

    :cond_3
    const-string v0, "uname"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "uname"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->b(Ljava/lang/String;)V

    :cond_4
    const-string v0, "qqname"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "qqname"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->setNickName(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    sget v1, Lcn/kuwo/base/bean/UserInfo;->f:I

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/UserInfo;->a(I)V

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    sget v1, Lcn/kuwo/base/bean/UserInfo;->m:I

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/UserInfo;->b(I)V

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    sget-object v1, Lcn/kuwo/base/bean/UserInfo;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/UserInfo;->a(Ljava/lang/String;)V

    new-instance v1, Lcn/kuwo/base/bean/VipInfo;

    invoke-direct {v1}, Lcn/kuwo/base/bean/VipInfo;-><init>()V

    const-string v0, "vip_lev"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "vip_lev"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->setVipLevel(I)V

    :cond_6
    const-string v0, "vip_type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "vip_type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->a(I)V

    :cond_7
    const-string v0, "vip_expire"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "vip_expire"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->b(I)V

    :cond_8
    const-string v0, "next_avail_date"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "next_avail_date"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->a(Ljava/lang/String;)V

    :cond_9
    const-string v0, "mp3"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "mp3"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->c(I)V

    :cond_a
    const-string v0, "mkv"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "mkv"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->e(I)V

    :cond_b
    const-string v0, "ape"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "ape"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->d(I)V

    :cond_c
    iget-object v0, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/UserInfo;->a(Lcn/kuwo/base/bean/VipInfo;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-interface {v0, v1}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->a(Lcn/kuwo/base/bean/UserInfo;)V

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/UserInfo;->c()I

    move-result v0

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/UserInfo;->getNickName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/UserInfo;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, "login_uid"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0, v7}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, ""

    const-string v4, "login_sid"

    invoke-static {v0, v4, v1, v7}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, ""

    const-string v1, "login_nickname"

    invoke-static {v0, v1, v2, v7}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, ""

    const-string v1, "login_headpic"

    invoke-static {v0, v1, v3, v7}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, ""

    const-string v1, "login_auto_login"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v7}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    const-string v0, ""

    const-string v1, "login_type"

    sget-object v2, Lcn/kuwo/base/bean/UserInfo;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2, v7}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/bean/UserInfo;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->a(Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/userinfo/LoginResultHandler$4;

    invoke-direct {v2, p0, p1}, Lcn/kuwo/mod/userinfo/LoginResultHandler$4;-><init>(Lcn/kuwo/mod/userinfo/LoginResultHandler;Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    const-string v0, "LoginResultHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qqlogin succ ,and sid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/util/Map;Z)V
    .locals 8

    const/4 v7, 0x0

    const-string v0, "uid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "uid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->setUid(I)V

    :cond_0
    const-string v0, "sid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "sid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->setSessionId(Ljava/lang/String;)V

    :cond_1
    const-string v0, "lev"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "lev"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->setLevel(I)V

    :cond_2
    const-string v0, "head"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "head"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->d(Ljava/lang/String;)V

    :cond_3
    const-string v0, "uname"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "uname"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->b(Ljava/lang/String;)V

    :cond_4
    const-string v0, "wbname"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    const-string v0, "wbname"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->setNickName(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    sget v1, Lcn/kuwo/base/bean/UserInfo;->f:I

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/UserInfo;->a(I)V

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    sget v1, Lcn/kuwo/base/bean/UserInfo;->m:I

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/UserInfo;->b(I)V

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    sget-object v1, Lcn/kuwo/base/bean/UserInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/UserInfo;->a(Ljava/lang/String;)V

    new-instance v1, Lcn/kuwo/base/bean/VipInfo;

    invoke-direct {v1}, Lcn/kuwo/base/bean/VipInfo;-><init>()V

    const-string v0, "vip_lev"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "vip_lev"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->setVipLevel(I)V

    :cond_6
    const-string v0, "vip_type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "vip_type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->a(I)V

    :cond_7
    const-string v0, "vip_expire"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "vip_expire"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->b(I)V

    :cond_8
    const-string v0, "next_avail_date"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "next_avail_date"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->a(Ljava/lang/String;)V

    :cond_9
    const-string v0, "mp3"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "mp3"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->c(I)V

    :cond_a
    const-string v0, "mkv"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "mkv"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->e(I)V

    :cond_b
    const-string v0, "ape"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "ape"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v7}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/VipInfo;->d(I)V

    :cond_c
    iget-object v0, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/UserInfo;->a(Lcn/kuwo/base/bean/VipInfo;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-interface {v0, v1}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->a(Lcn/kuwo/base/bean/UserInfo;)V

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/UserInfo;->c()I

    move-result v0

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/UserInfo;->getNickName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/UserInfo;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, "login_uid"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0, v7}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, ""

    const-string v4, "login_sid"

    invoke-static {v0, v4, v1, v7}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, ""

    const-string v1, "login_nickname"

    invoke-static {v0, v1, v2, v7}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, ""

    const-string v1, "login_headpic"

    invoke-static {v0, v1, v3, v7}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string v0, ""

    const-string v1, "login_auto_login"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v7}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    const-string v0, ""

    const-string v1, "login_type"

    sget-object v2, Lcn/kuwo/base/bean/UserInfo;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2, v7}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/bean/UserInfo;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->a(Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/userinfo/LoginResultHandler$5;

    invoke-direct {v2, p0, p1}, Lcn/kuwo/mod/userinfo/LoginResultHandler$5;-><init>(Lcn/kuwo/mod/userinfo/LoginResultHandler;Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    const-string v0, "LoginResultHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sinalogin succ ,and sid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/userinfo/LoginResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
