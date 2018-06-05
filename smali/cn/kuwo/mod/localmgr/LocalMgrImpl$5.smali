.class Lcn/kuwo/mod/localmgr/LocalMgrImpl$5;
.super Lcn/kuwo/core/observers/ext/ListObserver;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/localmgr/LocalMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/localmgr/LocalMgrImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$5;->a:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/ListObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public IListObserver_initComplete()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$5;->a:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v1

    sget-object v2, Lcn/kuwo/base/bean/ListType;->b:Lcn/kuwo/base/bean/ListType;

    invoke-interface {v1, v2}, Lcn/kuwo/mod/list/IListMgr;->a(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->a(Lcn/kuwo/mod/localmgr/LocalMgrImpl;Lcn/kuwo/base/bean/MusicList;)Lcn/kuwo/base/bean/MusicList;

    return-void
.end method

.method public IListObserver_loadComplete()V
    .locals 5

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$5;->a:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->d(Lcn/kuwo/mod/localmgr/LocalMgrImpl;)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v1, "local.all"

    iget-object v2, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$5;->a:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    invoke-static {v2}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->d(Lcn/kuwo/mod/localmgr/LocalMgrImpl;)Lcn/kuwo/base/bean/Music;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$5;->a:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    iget-object v1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$5;->a:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    iget-object v2, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$5;->a:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    iget-object v3, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$5;->a:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->d(Lcn/kuwo/mod/localmgr/LocalMgrImpl;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->c(Lcn/kuwo/mod/localmgr/LocalMgrImpl;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->b(Lcn/kuwo/mod/localmgr/LocalMgrImpl;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->a(Lcn/kuwo/mod/localmgr/LocalMgrImpl;Z)Z

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v1, "local.all"

    invoke-interface {v0, v1}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$5;->a:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    invoke-static {v1}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->d(Lcn/kuwo/mod/localmgr/LocalMgrImpl;)Lcn/kuwo/base/bean/Music;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/MusicList;->d(Lcn/kuwo/base/bean/Music;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v1, "local.all"

    invoke-interface {v0, v1}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$5;->a:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    invoke-static {v1}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->d(Lcn/kuwo/mod/localmgr/LocalMgrImpl;)Lcn/kuwo/base/bean/Music;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/MusicList;->e(Lcn/kuwo/base/bean/Music;)I

    move-result v0

    :cond_0
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$5;->a:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    invoke-static {v2}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->e(Lcn/kuwo/mod/localmgr/LocalMgrImpl;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->a(Lcn/kuwo/base/bean/MusicList;I)Z

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$5;->a:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->a(Lcn/kuwo/mod/localmgr/LocalMgrImpl;Lcn/kuwo/base/bean/Music;)Lcn/kuwo/base/bean/Music;

    :cond_1
    return-void
.end method

.method public IListObserver_updateMusic(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 5

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$5;->a:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    iget-object v1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$5;->a:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    iget-object v2, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$5;->a:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    iget-object v3, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$5;->a:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->d(Lcn/kuwo/mod/localmgr/LocalMgrImpl;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->c(Lcn/kuwo/mod/localmgr/LocalMgrImpl;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->b(Lcn/kuwo/mod/localmgr/LocalMgrImpl;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->a(Lcn/kuwo/mod/localmgr/LocalMgrImpl;Z)Z

    return-void
.end method
