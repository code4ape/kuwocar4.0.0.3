.class Lcn/kuwo/mod/list/CloudMgrImpl$ListenListObserver;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/core/observers/IListObserver;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/list/CloudMgrImpl;


# direct methods
.method public constructor <init>(Lcn/kuwo/mod/list/CloudMgrImpl;)V
    .locals 2

    iput-object p1, p0, Lcn/kuwo/mod/list/CloudMgrImpl$ListenListObserver;->a:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/mod/list/ListMgrImpl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/kuwo/mod/list/CloudMgrImpl$ListenListObserver;->IListObserver_loadComplete()V

    :cond_0
    return-void
.end method


# virtual methods
.method public IListObserver_changeName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public IListObserver_deleteList(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public IListObserver_initComplete()V
    .locals 0

    return-void
.end method

.method public IListObserver_insertList(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public IListObserver_insertOverflow(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public IListObserver_loadComplete()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "CloudMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IListObserver_loadComplete(start):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v2

    invoke-interface {v2}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->e()I

    move-result v0

    sget v1, Lcn/kuwo/base/bean/UserInfo;->e:I

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->d()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->c()Lcn/kuwo/base/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/bean/UserInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "merger"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "list"

    invoke-static {v1, v0, v4}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "CloudMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IListObserver_loadComplete(mid):merger "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl$ListenListObserver;->a:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/list/CloudMgrImpl;->c(Lcn/kuwo/mod/list/CloudMgrImpl;)Lcn/kuwo/base/http/HttpSession;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl$ListenListObserver;->a:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/list/CloudMgrImpl;->c(Lcn/kuwo/mod/list/CloudMgrImpl;)Lcn/kuwo/base/http/HttpSession;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/http/HttpSession;->a()Z

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl$ListenListObserver;->a:Lcn/kuwo/mod/list/CloudMgrImpl;

    new-instance v1, Lcn/kuwo/base/http/HttpSession;

    invoke-direct {v1}, Lcn/kuwo/base/http/HttpSession;-><init>()V

    invoke-static {v0, v1}, Lcn/kuwo/mod/list/CloudMgrImpl;->b(Lcn/kuwo/mod/list/CloudMgrImpl;Lcn/kuwo/base/http/HttpSession;)Lcn/kuwo/base/http/HttpSession;

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl$ListenListObserver;->a:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/list/CloudMgrImpl;->c(Lcn/kuwo/mod/list/CloudMgrImpl;)Lcn/kuwo/base/http/HttpSession;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcn/kuwo/base/http/HttpSession;->a(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/kuwo/mod/list/CloudMgrImpl$ListenListObserver;->a:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-static {v1}, Lcn/kuwo/mod/list/CloudMgrImpl;->e(Lcn/kuwo/mod/list/CloudMgrImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?op=chkdev&uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&sid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v2

    invoke-interface {v2}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->c()Lcn/kuwo/base/bean/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/kuwo/base/bean/UserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&devkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/kuwo/base/util/DeviceUtils;->DEVICE_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CloudMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IListObserver_loadComplete(mid):url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/mod/list/CloudMgrImpl$ListenListObserver;->a:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-static {v1}, Lcn/kuwo/mod/list/CloudMgrImpl;->c(Lcn/kuwo/mod/list/CloudMgrImpl;)Lcn/kuwo/base/http/HttpSession;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/kuwo/mod/list/CloudMgrImpl$ListenListObserver;->a:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-virtual {v1, v0, v2}, Lcn/kuwo/base/http/HttpSession;->a(Ljava/lang/String;Lcn/kuwo/base/http/IHttpNotify;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->d()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CloudMgrImpl"

    const-string v1, "IListObserver_loadComplete(ok): \u4e0d\u9700\u8981\u5408\u5e76\uff0c\u76f4\u63a5\u540c\u6b65\u3002"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl$ListenListObserver;->a:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/CloudMgrImpl;->g()Z

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl$ListenListObserver;->a:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/list/CloudMgrImpl;->f(Lcn/kuwo/mod/list/CloudMgrImpl;)V

    goto :goto_0
.end method

.method public IListObserver_startLoad()V
    .locals 0

    return-void
.end method

.method public IListObserver_updateMusic(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public a()V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method
