.class public Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/mod/userinfo/IUserInfoMgr;


# instance fields
.field private a:Lcn/kuwo/base/bean/UserInfo;

.field private b:I

.field private c:Lcn/kuwo/base/http/HttpSession;

.field private d:Lcn/kuwo/base/http/HttpSession;

.field private e:Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;

.field private f:Lcn/kuwo/core/observers/ext/AppObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->b:I

    new-instance v0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$7;

    invoke-direct {v0, p0}, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$7;-><init>(Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;)V

    iput-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->e:Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;

    new-instance v0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$8;

    invoke-direct {v0, p0}, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$8;-><init>(Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;)V

    iput-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->f:Lcn/kuwo/core/observers/ext/AppObserver;

    new-instance v0, Lcn/kuwo/base/bean/UserInfo;

    invoke-direct {v0}, Lcn/kuwo/base/bean/UserInfo;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    return-void
.end method

.method private a(Lcn/kuwo/base/bean/UserInfo;I)V
    .locals 5

    if-nez p1, :cond_1

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$2;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$2;-><init>(Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->c:Lcn/kuwo/base/http/HttpSession;

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ys:loginCloud| session exist\uff0c cancel"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->c:Lcn/kuwo/base/http/HttpSession;

    invoke-virtual {v0}, Lcn/kuwo/base/http/HttpSession;->a()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->c:Lcn/kuwo/base/http/HttpSession;

    :cond_2
    invoke-virtual {p1}, Lcn/kuwo/base/bean/UserInfo;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcn/kuwo/base/bean/UserInfo;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :try_start_0
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcn/kuwo/base/util/StringUtils;->encodeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcn/kuwo/base/util/StringUtils;->encodeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "utf-8"

    invoke-static {v2, v0}, Lcn/kuwo/base/util/StringUtils;->encodeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Lcn/kuwo/base/util/StringUtils;->encodeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    sget v2, Lcn/kuwo/base/bean/UserInfo;->a:I

    if-ne v2, p2, :cond_5

    invoke-virtual {p1}, Lcn/kuwo/base/bean/UserInfo;->c()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcn/kuwo/base/bean/UserInfo;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcn/kuwo/base/bean/UserInfo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ys:autologin| error uid=0"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$3;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$3;-><init>(Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "UserInfoMgrImpl"

    const-string v1, "ys:loginCloud| encode error\uff0c ignore"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1"

    const-string v0, "1"

    goto :goto_1

    :cond_3
    const-string v1, "1"

    const-string v0, "1"

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://i.kuwo.cn/US/2014/api/auto_login.jsp"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/kuwo/base/bean/UserInfo;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&sid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/kuwo/base/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&username="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&password="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&urlencode=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&dev_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/util/DeviceUtils;->DEVICE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&dev_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/util/DeviceUtils;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UserInfoMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LOGIN_AUTO_URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcn/kuwo/base/util/KwThreadPool$JobType;->NET:Lcn/kuwo/base/util/KwThreadPool$JobType;

    new-instance v2, Lcn/kuwo/mod/userinfo/UserThread;

    iget-object v3, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->c:Lcn/kuwo/base/http/HttpSession;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcn/kuwo/mod/userinfo/LoginResultHandler;

    invoke-direct {v4, p1, p2}, Lcn/kuwo/mod/userinfo/LoginResultHandler;-><init>(Lcn/kuwo/base/bean/UserInfo;I)V

    invoke-direct {v2, v3, v0, v4}, Lcn/kuwo/mod/userinfo/UserThread;-><init>(Lcn/kuwo/base/http/HttpSession;Ljava/lang/String;Lcn/kuwo/mod/userinfo/ResultHandler;)V

    invoke-static {v1, v2}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_5
    if-nez p2, :cond_7

    invoke-virtual {p1}, Lcn/kuwo/base/bean/UserInfo;->c()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1}, Lcn/kuwo/base/bean/UserInfo;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcn/kuwo/base/bean/UserInfo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://i.kuwo.cn/US/2014/api/auto_login.jsp"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/kuwo/base/bean/UserInfo;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&sid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/kuwo/base/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&username="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&password="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&urlencode=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&dev_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/util/DeviceUtils;->DEVICE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&dev_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/util/DeviceUtils;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/util/KwThreadPool$JobType;->NET:Lcn/kuwo/base/util/KwThreadPool$JobType;

    new-instance v2, Lcn/kuwo/mod/userinfo/UserThread;

    iget-object v3, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->c:Lcn/kuwo/base/http/HttpSession;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcn/kuwo/mod/userinfo/LoginResultHandler;

    invoke-direct {v4, p1, p2}, Lcn/kuwo/mod/userinfo/LoginResultHandler;-><init>(Lcn/kuwo/base/bean/UserInfo;I)V

    invoke-direct {v2, v3, v0, v4}, Lcn/kuwo/mod/userinfo/UserThread;-><init>(Lcn/kuwo/base/http/HttpSession;Ljava/lang/String;Lcn/kuwo/mod/userinfo/ResultHandler;)V

    invoke-static {v1, v2}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_7
    sget v2, Lcn/kuwo/base/bean/UserInfo;->b:I

    if-ne v2, p2, :cond_9

    invoke-virtual {p1}, Lcn/kuwo/base/bean/UserInfo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcn/kuwo/base/bean/UserInfo;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_8
    iget-object v2, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {p1}, Lcn/kuwo/base/bean/UserInfo;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/kuwo/base/bean/UserInfo;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {p1}, Lcn/kuwo/base/bean/UserInfo;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/kuwo/base/bean/UserInfo;->c(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://i.kuwo.cn/US/2014/api/login_kw_2014.jsp"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&username="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&password="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&dev_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/util/DeviceUtils;->DEVICE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&dev_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/util/DeviceUtils;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&src="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/util/DeviceUtils;->INSTALL_SOURCE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&install_source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/util/DeviceUtils;->INSTALL_SOURCE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&format=json&urlencode=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UserInfoMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LOGIN_NP_URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcn/kuwo/base/util/KwThreadPool$JobType;->NET:Lcn/kuwo/base/util/KwThreadPool$JobType;

    new-instance v2, Lcn/kuwo/mod/userinfo/UserThread;

    iget-object v3, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->c:Lcn/kuwo/base/http/HttpSession;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcn/kuwo/mod/userinfo/LoginResultHandler;

    invoke-direct {v4, p1, p2}, Lcn/kuwo/mod/userinfo/LoginResultHandler;-><init>(Lcn/kuwo/base/bean/UserInfo;I)V

    invoke-direct {v2, v3, v0, v4}, Lcn/kuwo/mod/userinfo/UserThread;-><init>(Lcn/kuwo/base/http/HttpSession;Ljava/lang/String;Lcn/kuwo/mod/userinfo/ResultHandler;)V

    invoke-static {v1, v2}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_9
    sget v0, Lcn/kuwo/base/bean/UserInfo;->c:I

    if-eq v0, p2, :cond_0

    sget v0, Lcn/kuwo/base/bean/UserInfo;->d:I

    if-ne v0, p2, :cond_0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->n()V

    return-void
.end method

.method private b(I)V
    .locals 6

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/UserInfo;->c()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->d:Lcn/kuwo/base/http/HttpSession;

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ys:logoutCloud| session exist\uff0c cancel"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->d:Lcn/kuwo/base/http/HttpSession;

    invoke-virtual {v0}, Lcn/kuwo/base/http/HttpSession;->a()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->d:Lcn/kuwo/base/http/HttpSession;

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://i.kuwo.cn/US/2014/api/logout.jsp"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/UserInfo;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&dev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/util/DeviceUtils;->DEVICE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->c()Lcn/kuwo/base/bean/UserInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/kuwo/base/bean/UserInfo;->setUid(I)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcn/kuwo/base/bean/UserInfo;->b(Ljava/lang/String;)V

    sget v2, Lcn/kuwo/base/bean/UserInfo;->e:I

    invoke-virtual {v1, v2}, Lcn/kuwo/base/bean/UserInfo;->a(I)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v2

    invoke-interface {v2, v1}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->a(Lcn/kuwo/base/bean/UserInfo;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    sget-object v2, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v3, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$4;

    invoke-direct {v3, p0, p1}, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$4;-><init>(Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;I)V

    invoke-virtual {v1, v2, v3}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    sget-object v1, Lcn/kuwo/base/util/KwThreadPool$JobType;->NET:Lcn/kuwo/base/util/KwThreadPool$JobType;

    new-instance v2, Lcn/kuwo/mod/userinfo/UserThread;

    iget-object v3, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->c:Lcn/kuwo/base/http/HttpSession;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcn/kuwo/mod/userinfo/LogoutResultHandler;

    iget-object v5, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-direct {v4, v5, p1}, Lcn/kuwo/mod/userinfo/LogoutResultHandler;-><init>(Lcn/kuwo/base/bean/UserInfo;I)V

    invoke-direct {v2, v3, v0, v4}, Lcn/kuwo/mod/userinfo/UserThread;-><init>(Lcn/kuwo/base/http/HttpSession;Ljava/lang/String;Lcn/kuwo/mod/userinfo/ResultHandler;)V

    invoke-static {v1, v2}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private n()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->e:Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->f:Lcn/kuwo/core/observers/ext/AppObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->b:I

    return-void
.end method

.method public a(Lcn/kuwo/base/bean/UserInfo;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    return-void
.end method

.method public a(Lcn/kuwo/base/bean/VipInfo;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v0, p1}, Lcn/kuwo/base/bean/UserInfo;->a(Lcn/kuwo/base/bean/VipInfo;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v0, p1}, Lcn/kuwo/base/bean/UserInfo;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->e:Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->f:Lcn/kuwo/core/observers/ext/AppObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method public b(Lcn/kuwo/base/bean/UserInfo;)V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    if-eqz v0, :cond_1

    sget v0, Lcn/kuwo/base/bean/UserInfo;->e:I

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/UserInfo;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget v0, Lcn/kuwo/base/bean/UserInfo;->g:I

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/UserInfo;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ys:dologin|"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget v0, Lcn/kuwo/base/bean/UserInfo;->b:I

    invoke-direct {p0, p1, v0}, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a(Lcn/kuwo/base/bean/UserInfo;I)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$1;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$1;-><init>(Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    const-string v0, "UserInfoMgrImpl"

    const-string v1, "ys:dologin|already login, exit"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()Lcn/kuwo/base/bean/UserInfo;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    return-object v0
.end method

.method public d()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Lcn/kuwo/base/bean/UserInfo;->f:I

    iget-object v2, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/UserInfo;->a()I

    move-result v2

    if-eq v1, v2, :cond_2

    sget v1, Lcn/kuwo/base/bean/UserInfo;->g:I

    iget-object v2, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/UserInfo;->a()I

    move-result v2

    if-ne v1, v2, :cond_0

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/UserInfo;->c()I

    move-result v0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    if-nez v0, :cond_0

    sget v0, Lcn/kuwo/base/bean/UserInfo;->e:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/UserInfo;->a()I

    move-result v0

    goto :goto_0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    if-eqz v0, :cond_1

    sget v0, Lcn/kuwo/base/bean/UserInfo;->e:I

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/UserInfo;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget v0, Lcn/kuwo/base/bean/UserInfo;->g:I

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/UserInfo;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    sget v1, Lcn/kuwo/base/bean/UserInfo;->a:I

    invoke-direct {p0, v0, v1}, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a(Lcn/kuwo/base/bean/UserInfo;I)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "UserInfoMgrImpl"

    const-string v1, "ys:already login, exit"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    if-eqz v0, :cond_1

    sget v0, Lcn/kuwo/base/bean/UserInfo;->f:I

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/UserInfo;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget v0, Lcn/kuwo/base/bean/UserInfo;->g:I

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/UserInfo;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->b(I)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "UserInfoMgrImpl"

    const-string v1, "ys:dologout|not login, exit"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    if-eqz v0, :cond_1

    sget v0, Lcn/kuwo/base/bean/UserInfo;->f:I

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/UserInfo;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget v0, Lcn/kuwo/base/bean/UserInfo;->g:I

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/UserInfo;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->b(I)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "UserInfoMgrImpl"

    const-string v1, "ys:dologout|not login, exit"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public i()Lcn/kuwo/base/bean/VipInfo;
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/UserInfo;->f()Lcn/kuwo/base/bean/VipInfo;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcn/kuwo/base/bean/VipInfo;

    invoke-direct {v0}, Lcn/kuwo/base/bean/VipInfo;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/VipInfo;->a(I)V

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->a(Lcn/kuwo/base/bean/VipInfo;)V

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/UserInfo;->f()Lcn/kuwo/base/bean/VipInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    if-nez v0, :cond_0

    sget-object v0, Lcn/kuwo/base/bean/UserInfo;->h:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/UserInfo;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    if-eqz v0, :cond_1

    sget v0, Lcn/kuwo/base/bean/UserInfo;->e:I

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/UserInfo;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget v0, Lcn/kuwo/base/bean/UserInfo;->g:I

    iget-object v1, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/UserInfo;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a:Lcn/kuwo/base/bean/UserInfo;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a(Lcn/kuwo/base/bean/UserInfo;I)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "UserInfoMgrImpl"

    const-string v1, "ys:already login, exit"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public l()V
    .locals 3

    invoke-virtual {p0}, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->c()Lcn/kuwo/base/bean/UserInfo;

    move-result-object v0

    sget v1, Lcn/kuwo/base/bean/UserInfo;->n:I

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/UserInfo;->b(I)V

    invoke-virtual {p0, v0}, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a(Lcn/kuwo/base/bean/UserInfo;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$5;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$5;-><init>(Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method

.method public m()V
    .locals 5

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->e()I

    move-result v0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->c()Lcn/kuwo/base/bean/UserInfo;

    move-result-object v1

    sget v2, Lcn/kuwo/base/bean/UserInfo;->f:I

    if-ne v0, v2, :cond_1

    sget v0, Lcn/kuwo/base/bean/UserInfo;->m:I

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->b(I)V

    invoke-virtual {p0, v1}, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->a(Lcn/kuwo/base/bean/UserInfo;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$6;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl$6;-><init>(Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v2, Lcn/kuwo/base/bean/UserInfo;->g:I

    if-ne v0, v2, :cond_0

    const-string v0, ""

    const-string v2, "login_uid"

    const-string v3, "0"

    invoke-static {v0, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcn/kuwo/base/util/StringUtils;->String2Int(Ljava/lang/String;I)I

    move-result v0

    const-string v2, ""

    const-string v3, "login_sid"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->setUid(I)V

    invoke-virtual {v1, v2}, Lcn/kuwo/base/bean/UserInfo;->setSessionId(Ljava/lang/String;)V

    sget v0, Lcn/kuwo/base/bean/UserInfo;->m:I

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/UserInfo;->b(I)V

    invoke-virtual {p0}, Lcn/kuwo/mod/userinfo/UserInfoMgrImpl;->k()V

    goto :goto_0
.end method
