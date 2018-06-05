.class Lcn/kuwo/mod/notification/NotificationMgrImpl$1;
.super Lcn/kuwo/core/observers/ext/PlayControlObserver;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/notification/NotificationMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/notification/NotificationMgrImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/notification/NotificationMgrImpl$1;->a:Lcn/kuwo/mod/notification/NotificationMgrImpl;

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/PlayControlObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public IPlayControlObserver_ChangeCurList()V
    .locals 0

    return-void
.end method

.method public IPlayControlObserver_Continue()V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->e()Lcn/kuwo/base/bean/Music;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/notification/NotificationMgrImpl$1;->a:Lcn/kuwo/mod/notification/NotificationMgrImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcn/kuwo/mod/notification/NotificationMgrImpl;->a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;)V

    return-void
.end method

.method public IPlayControlObserver_Pause()V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->e()Lcn/kuwo/base/bean/Music;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/notification/NotificationMgrImpl$1;->a:Lcn/kuwo/mod/notification/NotificationMgrImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcn/kuwo/mod/notification/NotificationMgrImpl;->a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;)V

    return-void
.end method

.method public IPlayControlObserver_Play(Lcn/kuwo/base/bean/Music;)V
    .locals 0

    return-void
.end method

.method public IPlayControlObserver_PreSart(Lcn/kuwo/base/bean/Music;Z)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "\u6b63\u5728\u7f13\u51b2"

    :goto_0
    iget-object v1, p0, Lcn/kuwo/mod/notification/NotificationMgrImpl$1;->a:Lcn/kuwo/mod/notification/NotificationMgrImpl;

    invoke-virtual {v1, p1, v0}, Lcn/kuwo/mod/notification/NotificationMgrImpl;->a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IPlayControlObserver_ReadyPlay(Lcn/kuwo/base/bean/Music;)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/notification/NotificationMgrImpl$1;->a:Lcn/kuwo/mod/notification/NotificationMgrImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/kuwo/mod/notification/NotificationMgrImpl;->a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;)V

    return-void
.end method

.method public IPlayControlObserver_RealPlay(Lcn/kuwo/base/bean/Music;)V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->e()Lcn/kuwo/base/bean/Music;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/notification/NotificationMgrImpl$1;->a:Lcn/kuwo/mod/notification/NotificationMgrImpl;

    invoke-virtual {v2, v0, v1}, Lcn/kuwo/mod/notification/NotificationMgrImpl;->a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
