.class public Lcn/kuwo/mod/userinfo/SignResultHandler;
.super Lcn/kuwo/mod/userinfo/ResultHandler;


# virtual methods
.method public a(Lcn/kuwo/base/http/HttpResult;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcn/kuwo/base/http/HttpResult;->a()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcn/kuwo/base/http/HttpResult;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcn/kuwo/base/http/HttpResult;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/JsonUtils;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_15

    const-string v0, "result"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "result"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    :cond_0
    iget v0, p0, Lcn/kuwo/mod/userinfo/SignResultHandler;->b:I

    if-ne v4, v0, :cond_6

    const-string v0, "result"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "result"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "succ"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "ys:handleSignResult| sign succ"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Lcn/kuwo/base/bean/UserInfo;

    invoke-direct {v2}, Lcn/kuwo/base/bean/UserInfo;-><init>()V

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/SignResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/UserInfo;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/kuwo/base/bean/UserInfo;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/SignResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/UserInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/kuwo/base/bean/UserInfo;->setNickName(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/SignResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/UserInfo;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/kuwo/base/bean/UserInfo;->c(Ljava/lang/String;)V

    sget v0, Lcn/kuwo/base/bean/UserInfo;->e:I

    invoke-virtual {v2, v0}, Lcn/kuwo/base/bean/UserInfo;->a(I)V

    const-string v0, "msg"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    sget-object v3, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v4, Lcn/kuwo/mod/userinfo/SignResultHandler$1;

    invoke-direct {v4, p0, v0}, Lcn/kuwo/mod/userinfo/SignResultHandler$1;-><init>(Lcn/kuwo/mod/userinfo/SignResultHandler;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    invoke-interface {v0, v2}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->b(Lcn/kuwo/base/bean/UserInfo;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v0, "msg"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "enum"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    if-nez v1, :cond_5

    const-string v1, ""

    :cond_5
    sget-object v2, Lcn/kuwo/base/log/LogDef$LogType;->T:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v2}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v4}, Lcn/kuwo/base/log/ServiceLevelLogger;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v2

    sget-object v3, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v4, Lcn/kuwo/mod/userinfo/SignResultHandler$2;

    invoke-direct {v4, p0, v0, v1}, Lcn/kuwo/mod/userinfo/SignResultHandler$2;-><init>(Lcn/kuwo/mod/userinfo/SignResultHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    const-string v1, "SignResultHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSignResult| sign failed msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcn/kuwo/mod/userinfo/SignResultHandler;->b:I

    if-ne v5, v0, :cond_b

    const-string v2, "SignResultHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v0, "msg"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " errType="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v0, "enum"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

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

    const-string v0, "msg"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :cond_7
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    sget-object v2, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v3, Lcn/kuwo/mod/userinfo/SignResultHandler$3;

    invoke-direct {v3, p0, v0}, Lcn/kuwo/mod/userinfo/SignResultHandler$3;-><init>(Lcn/kuwo/mod/userinfo/SignResultHandler;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    const-string v1, "SignResultHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSignResult| send sms succ msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "msg"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "enum"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, ""

    :cond_9
    if-nez v1, :cond_a

    const-string v1, ""

    :cond_a
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v2

    sget-object v3, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v4, Lcn/kuwo/mod/userinfo/SignResultHandler$4;

    invoke-direct {v4, p0, v0, v1}, Lcn/kuwo/mod/userinfo/SignResultHandler$4;-><init>(Lcn/kuwo/mod/userinfo/SignResultHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    const-string v1, "SignResultHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSignResult| send sms failed msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x2

    iget v2, p0, Lcn/kuwo/mod/userinfo/SignResultHandler;->b:I

    if-ne v0, v2, :cond_10

    const-string v0, "result"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v0, "result"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "succ"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "ys:handleSignResult| sign succ"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Lcn/kuwo/base/bean/UserInfo;

    invoke-direct {v2}, Lcn/kuwo/base/bean/UserInfo;-><init>()V

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/SignResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/UserInfo;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/kuwo/base/bean/UserInfo;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/SignResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/UserInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/kuwo/base/bean/UserInfo;->setNickName(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/SignResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/UserInfo;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/kuwo/base/bean/UserInfo;->c(Ljava/lang/String;)V

    sget v0, Lcn/kuwo/base/bean/UserInfo;->e:I

    invoke-virtual {v2, v0}, Lcn/kuwo/base/bean/UserInfo;->a(I)V

    const-string v0, "msg"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_c

    const-string v0, ""

    :cond_c
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    sget-object v3, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v4, Lcn/kuwo/mod/userinfo/SignResultHandler$5;

    invoke-direct {v4, p0, v0}, Lcn/kuwo/mod/userinfo/SignResultHandler$5;-><init>(Lcn/kuwo/mod/userinfo/SignResultHandler;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    invoke-interface {v0, v2}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->b(Lcn/kuwo/base/bean/UserInfo;)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "msg"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "enum"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v0, ""

    :cond_e
    if-nez v1, :cond_f

    const-string v1, ""

    :cond_f
    sget-object v2, Lcn/kuwo/base/log/LogDef$LogType;->T:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v2}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v4}, Lcn/kuwo/base/log/ServiceLevelLogger;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v2

    sget-object v3, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v4, Lcn/kuwo/mod/userinfo/SignResultHandler$6;

    invoke-direct {v4, p0, v0, v1}, Lcn/kuwo/mod/userinfo/SignResultHandler$6;-><init>(Lcn/kuwo/mod/userinfo/SignResultHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    const-string v1, "SignResultHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSignResult| sign failed msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const/4 v0, 0x3

    iget v2, p0, Lcn/kuwo/mod/userinfo/SignResultHandler;->b:I

    if-ne v0, v2, :cond_2

    const-string v2, "UserInfoMgrImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "result"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "   "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v0, "msg"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v0, "result"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "succ"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "ys:handleSignResult| sign succ"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Lcn/kuwo/base/bean/UserInfo;

    invoke-direct {v2}, Lcn/kuwo/base/bean/UserInfo;-><init>()V

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/SignResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/UserInfo;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/kuwo/base/bean/UserInfo;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/SignResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/UserInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/kuwo/base/bean/UserInfo;->setNickName(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/SignResultHandler;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/UserInfo;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/kuwo/base/bean/UserInfo;->c(Ljava/lang/String;)V

    sget v0, Lcn/kuwo/base/bean/UserInfo;->e:I

    invoke-virtual {v2, v0}, Lcn/kuwo/base/bean/UserInfo;->a(I)V

    const-string v0, "msg"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_11

    const-string v0, ""

    :cond_11
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    sget-object v3, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v4, Lcn/kuwo/mod/userinfo/SignResultHandler$7;

    invoke-direct {v4, p0, v0}, Lcn/kuwo/mod/userinfo/SignResultHandler$7;-><init>(Lcn/kuwo/mod/userinfo/SignResultHandler;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    invoke-interface {v0, v2}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->b(Lcn/kuwo/base/bean/UserInfo;)V

    goto/16 :goto_0

    :cond_12
    const-string v0, "msg"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "enum"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v0, :cond_13

    const-string v0, ""

    :cond_13
    if-nez v1, :cond_14

    const-string v1, ""

    :cond_14
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v2

    sget-object v3, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v4, Lcn/kuwo/mod/userinfo/SignResultHandler$8;

    invoke-direct {v4, p0, v0, v1}, Lcn/kuwo/mod/userinfo/SignResultHandler$8;-><init>(Lcn/kuwo/mod/userinfo/SignResultHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    const-string v1, "SignResultHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSignResult| sign failed msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    sget-object v0, Lcn/kuwo/base/log/LogDef$LogType;->T:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v0}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x63

    invoke-static {v0, v3, v1}, Lcn/kuwo/base/log/ServiceLevelLogger;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    iget v0, p0, Lcn/kuwo/mod/userinfo/SignResultHandler;->b:I

    if-ne v5, v0, :cond_16

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/userinfo/SignResultHandler$9;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/userinfo/SignResultHandler$9;-><init>(Lcn/kuwo/mod/userinfo/SignResultHandler;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    :goto_1
    const-string v0, "SignResultHandler"

    const-string v1, "ys:handleSignResult| system error"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/userinfo/SignResultHandler$10;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/userinfo/SignResultHandler$10;-><init>(Lcn/kuwo/mod/userinfo/SignResultHandler;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    goto :goto_1

    :cond_17
    sget-object v0, Lcn/kuwo/base/log/LogDef$LogType;->T:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v0}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v3, v1}, Lcn/kuwo/base/log/ServiceLevelLogger;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    iget v0, p0, Lcn/kuwo/mod/userinfo/SignResultHandler;->b:I

    if-ne v5, v0, :cond_18

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/userinfo/SignResultHandler$11;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/userinfo/SignResultHandler$11;-><init>(Lcn/kuwo/mod/userinfo/SignResultHandler;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    :goto_2
    const-string v0, "SignResultHandler"

    const-string v1, "ys:handleSignResult| network error "

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/userinfo/SignResultHandler$12;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/userinfo/SignResultHandler$12;-><init>(Lcn/kuwo/mod/userinfo/SignResultHandler;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    goto :goto_2
.end method
