.class Lcn/kuwo/mod/list/RecentPlayListMgr$1;
.super Lcn/kuwo/core/observers/ext/PlayControlObserver;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/list/RecentPlayListMgr;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/list/RecentPlayListMgr;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/list/RecentPlayListMgr$1;->a:Lcn/kuwo/mod/list/RecentPlayListMgr;

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/PlayControlObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public IPlayControlObserver_Play(Lcn/kuwo/base/bean/Music;)V
    .locals 5

    iget-object v0, p0, Lcn/kuwo/mod/list/RecentPlayListMgr$1;->a:Lcn/kuwo/mod/list/RecentPlayListMgr;

    invoke-static {v0}, Lcn/kuwo/mod/list/RecentPlayListMgr;->a(Lcn/kuwo/mod/list/RecentPlayListMgr;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/list/IListMgr;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/list/RecentPlayListMgr$1;->a:Lcn/kuwo/mod/list/RecentPlayListMgr;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/kuwo/mod/list/RecentPlayListMgr;->a(Lcn/kuwo/mod/list/RecentPlayListMgr;Z)Z

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/list/RecentPlayListMgr$1;->a:Lcn/kuwo/mod/list/RecentPlayListMgr;

    invoke-static {v0}, Lcn/kuwo/mod/list/RecentPlayListMgr;->a(Lcn/kuwo/mod/list/RecentPlayListMgr;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "RecentPlayListMgr"

    const-string v1, "[IPlayControlObserver_Play] mIsPlLoadComplete = false"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p1, :cond_3

    const-string v0, "RecentPlayListMgr"

    const-string v1, "[IPlayControlObserver_Play] music = null"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->d()Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v1

    sget-object v2, Lcn/kuwo/base/bean/ListType;->n:Lcn/kuwo/base/bean/ListType;

    if-ne v1, v2, :cond_4

    const-string v0, "RecentPlayListMgr"

    const-string v1, "[IPlayControlObserver_Play] now playing list is radio"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/bean/ListType;->k:Lcn/kuwo/base/bean/ListType;

    if-ne v0, v1, :cond_5

    const-string v0, "RecentPlayListMgr"

    const-string v1, "[IPlayControlObserver_Play] now playing list is recent"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/bean/ListType;->k:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v1}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, -0x1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v2

    sget-object v3, Lcn/kuwo/base/bean/ListType;->k:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Ljava/util/List;I)I

    move-result v0

    if-ne v1, v0, :cond_6

    const-string v0, "RecentPlayListMgr"

    const-string v1, "[IPlayControlObserver_Play] insert music failed"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/bean/ListType;->k:Lcn/kuwo/base/bean/ListType;

    invoke-interface {v0, v1}, Lcn/kuwo/mod/list/IListMgr;->a(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, "RecentPlayListMgr"

    const-string v1, "[IPlayControlObserver_Play] list is null"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v1

    invoke-static {}, Lcn/kuwo/mod/list/RecentPlayListMgr;->b()I

    move-result v2

    sub-int/2addr v1, v2

    const-string v2, "RecentPlayListMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IPlayControlObserver_Play] need erase num = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v1, :cond_1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v2

    sget-object v3, Lcn/kuwo/base/bean/ListType;->k:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v2, v3, v0, v1}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "RecentPlayListMgr"

    const-string v1, "[IPlayControlObserver_Play] delete failed"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
