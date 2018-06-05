.class Lcn/kuwo/mod/radio/RadioMgrImpl$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/Collection;

.field final synthetic c:Lcn/kuwo/mod/radio/RadioMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/radio/RadioMgrImpl;ILjava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/radio/RadioMgrImpl$1;->c:Lcn/kuwo/mod/radio/RadioMgrImpl;

    iput p2, p0, Lcn/kuwo/mod/radio/RadioMgrImpl$1;->a:I

    iput-object p3, p0, Lcn/kuwo/mod/radio/RadioMgrImpl$1;->b:Ljava/util/Collection;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcn/kuwo/mod/radio/RadioMgrImpl$1;->c:Lcn/kuwo/mod/radio/RadioMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/radio/RadioMgrImpl;->a(Lcn/kuwo/mod/radio/RadioMgrImpl;)Ljava/util/HashMap;

    move-result-object v0

    iget v3, p0, Lcn/kuwo/mod/radio/RadioMgrImpl$1;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string v0, "RadioMgrImpl"

    const-string v1, "[onRequestMusicsFinish] cannot find the task"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcn/kuwo/mod/radio/RadioMgrImpl$1;->c:Lcn/kuwo/mod/radio/RadioMgrImpl;

    invoke-static {v3}, Lcn/kuwo/mod/radio/RadioMgrImpl;->a(Lcn/kuwo/mod/radio/RadioMgrImpl;)Ljava/util/HashMap;

    move-result-object v3

    iget v4, p0, Lcn/kuwo/mod/radio/RadioMgrImpl$1;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "RadioMgrImpl"

    const-string v1, "[onRequestMusicsFinish] the task is already stopped"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/radio/RadioMgrImpl$1;->b:Ljava/util/Collection;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/kuwo/mod/radio/RadioMgrImpl$1;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ge v0, v1, :cond_4

    :cond_3
    const-string v0, "RadioMgrImpl"

    const-string v1, "[onRequestMusicsFinish] music list is empty"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "RadioMgrImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onRequestMusicsFinish] musics.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/kuwo/mod/radio/RadioMgrImpl$1;->b:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->d()Lcn/kuwo/base/bean/MusicList;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v0

    sget-object v4, Lcn/kuwo/base/bean/ListType;->n:Lcn/kuwo/base/bean/ListType;

    if-ne v0, v4, :cond_7

    invoke-virtual {v3}, Lcn/kuwo/base/bean/MusicList;->e()I

    move-result v0

    iget v4, p0, Lcn/kuwo/mod/radio/RadioMgrImpl$1;->a:I

    if-ne v0, v4, :cond_7

    invoke-virtual {v3}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    if-ge v0, v1, :cond_7

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v4, Lcn/kuwo/service/PlayProxy$Status;->e:Lcn/kuwo/service/PlayProxy$Status;

    if-eq v0, v4, :cond_5

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    sget-object v4, Lcn/kuwo/service/PlayProxy$Status;->a:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v0, v4, :cond_7

    :cond_5
    :goto_1
    iget-object v0, p0, Lcn/kuwo/mod/radio/RadioMgrImpl$1;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v5

    sget-object v6, Lcn/kuwo/base/bean/ListType;->n:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v6}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I

    goto :goto_2

    :cond_6
    const-string v0, "RadioMgrImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onRequestMusicsFinish] bNeedNotifyPlayCtrl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Lcn/kuwo/mod/playcontrol/IPlayControl;->a(Lcn/kuwo/base/bean/MusicList;I)Z

    goto/16 :goto_0

    :cond_7
    move v1, v2

    goto :goto_1
.end method
