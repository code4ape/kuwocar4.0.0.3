.class Lcn/kuwo/mod/list/CloudMgrImpl$ListenUserObserver;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/core/observers/IUserInfoMgrObserver;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/list/CloudMgrImpl;


# direct methods
.method public constructor <init>(Lcn/kuwo/mod/list/CloudMgrImpl;)V
    .locals 2

    iput-object p1, p0, Lcn/kuwo/mod/list/CloudMgrImpl$ListenUserObserver;->a:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method


# virtual methods
.method public IUserInfoMgrObserver_OnLogin(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public IUserInfoMgrObserver_OnLogout(ZLjava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl$ListenUserObserver;->a:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/list/CloudMgrImpl;->a(Lcn/kuwo/mod/list/CloudMgrImpl;)Lcn/kuwo/base/util/KwTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl$ListenUserObserver;->a:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/list/CloudMgrImpl;->a(Lcn/kuwo/mod/list/CloudMgrImpl;)Lcn/kuwo/base/util/KwTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/util/KwTimer;->stop()V

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl$ListenUserObserver;->a:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-static {v0, v1}, Lcn/kuwo/mod/list/CloudMgrImpl;->a(Lcn/kuwo/mod/list/CloudMgrImpl;Lcn/kuwo/base/util/KwTimer;)Lcn/kuwo/base/util/KwTimer;

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl$ListenUserObserver;->a:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/list/CloudMgrImpl;->b(Lcn/kuwo/mod/list/CloudMgrImpl;)Lcn/kuwo/base/http/HttpSession;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl$ListenUserObserver;->a:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/list/CloudMgrImpl;->b(Lcn/kuwo/mod/list/CloudMgrImpl;)Lcn/kuwo/base/http/HttpSession;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/http/HttpSession;->a()Z

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl$ListenUserObserver;->a:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-static {v0, v1}, Lcn/kuwo/mod/list/CloudMgrImpl;->a(Lcn/kuwo/mod/list/CloudMgrImpl;Lcn/kuwo/base/http/HttpSession;)Lcn/kuwo/base/http/HttpSession;

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl$ListenUserObserver;->a:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/list/CloudMgrImpl;->c(Lcn/kuwo/mod/list/CloudMgrImpl;)Lcn/kuwo/base/http/HttpSession;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl$ListenUserObserver;->a:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/list/CloudMgrImpl;->c(Lcn/kuwo/mod/list/CloudMgrImpl;)Lcn/kuwo/base/http/HttpSession;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/http/HttpSession;->a()Z

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl$ListenUserObserver;->a:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-static {v0, v1}, Lcn/kuwo/mod/list/CloudMgrImpl;->b(Lcn/kuwo/mod/list/CloudMgrImpl;Lcn/kuwo/base/http/HttpSession;)Lcn/kuwo/base/http/HttpSession;

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl$ListenUserObserver;->a:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/list/CloudMgrImpl;->d(Lcn/kuwo/mod/list/CloudMgrImpl;)Lcn/kuwo/base/http/HttpSession;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl$ListenUserObserver;->a:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/list/CloudMgrImpl;->d(Lcn/kuwo/mod/list/CloudMgrImpl;)Lcn/kuwo/base/http/HttpSession;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/http/HttpSession;->a()Z

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl$ListenUserObserver;->a:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-static {v0, v1}, Lcn/kuwo/mod/list/CloudMgrImpl;->c(Lcn/kuwo/mod/list/CloudMgrImpl;Lcn/kuwo/base/http/HttpSession;)Lcn/kuwo/base/http/HttpSession;

    :cond_3
    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl$ListenUserObserver;->a:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-static {v0, v2}, Lcn/kuwo/mod/list/CloudMgrImpl;->a(Lcn/kuwo/mod/list/CloudMgrImpl;Z)Z

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl$ListenUserObserver;->a:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-static {v0, v2}, Lcn/kuwo/mod/list/CloudMgrImpl;->a(Lcn/kuwo/mod/list/CloudMgrImpl;I)I

    :cond_4
    return-void
.end method

.method public IUserInfoMgrObserver_OnReg(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public IUserInfoMgrObserver_OnSendRegSms(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public IUserInfoMgrObserver_OnUserStatusChange(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a()V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->m:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method
