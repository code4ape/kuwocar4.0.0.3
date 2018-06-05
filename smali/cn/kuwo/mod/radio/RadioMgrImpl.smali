.class public Lcn/kuwo/mod/radio/RadioMgrImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/mod/radio/IRadioMgr;


# instance fields
.field private a:Ljava/util/HashMap;

.field private b:Lcn/kuwo/core/observers/ext/PlayControlObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/radio/RadioMgrImpl;->a:Ljava/util/HashMap;

    new-instance v0, Lcn/kuwo/mod/radio/RadioMgrImpl$2;

    invoke-direct {v0, p0}, Lcn/kuwo/mod/radio/RadioMgrImpl$2;-><init>(Lcn/kuwo/mod/radio/RadioMgrImpl;)V

    iput-object v0, p0, Lcn/kuwo/mod/radio/RadioMgrImpl;->b:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    return-void
.end method

.method static synthetic a(Lcn/kuwo/mod/radio/RadioMgrImpl;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/radio/RadioMgrImpl;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b(Lcn/kuwo/mod/radio/RadioMgrImpl;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/mod/radio/RadioMgrImpl;->d()V

    return-void
.end method

.method private c()V
    .locals 6

    const/4 v1, 0x1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->d()Lcn/kuwo/base/bean/MusicList;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "RadioMgrImpl"

    const-string v1, "[checkNowPlayingRadioMusics] nowPlayingList is null"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v0

    sget-object v3, Lcn/kuwo/base/bean/ListType;->n:Lcn/kuwo/base/bean/ListType;

    if-eq v0, v3, :cond_1

    const-string v0, "RadioMgrImpl"

    const-string v1, "[checkNowPlayingRadioMusics] is not playing radio"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->e()I

    move-result v3

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v2

    const/4 v5, 0x3

    if-ge v2, v5, :cond_2

    move v0, v1

    :cond_2
    if-nez v0, :cond_3

    const-string v1, "RadioMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkNowPlayingRadioMusics] fid = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bNeedRequestMore = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/kuwo/mod/radio/RadioMgrImpl;->a:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "RadioMgrImpl"

    const-string v1, "[checkNowPlayingRadioMusics] already has thread requesting musics for the radio"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcn/kuwo/mod/radio/RadioMgrImpl;->a:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/kuwo/mod/radio/RadioMgrImpl$RqstMoreMusicsThread;

    invoke-direct {v0, p0}, Lcn/kuwo/mod/radio/RadioMgrImpl$RqstMoreMusicsThread;-><init>(Lcn/kuwo/mod/radio/RadioMgrImpl;)V

    iput v3, v0, Lcn/kuwo/mod/radio/RadioMgrImpl$RqstMoreMusicsThread;->a:I

    iput-object v4, v0, Lcn/kuwo/mod/radio/RadioMgrImpl$RqstMoreMusicsThread;->b:Ljava/lang/String;

    sget-object v1, Lcn/kuwo/base/util/KwThreadPool$JobType;->NET:Lcn/kuwo/base/util/KwThreadPool$JobType;

    invoke-static {v1, v0}, Lcn/kuwo/base/util/KwThreadPool;->runThread(Lcn/kuwo/base/util/KwThreadPool$JobType;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private d()V
    .locals 4

    invoke-direct {p0}, Lcn/kuwo/mod/radio/RadioMgrImpl;->c()V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->d()Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/bean/ListType;->n:Lcn/kuwo/base/bean/ListType;

    if-eq v0, v1, :cond_2

    :cond_0
    const-string v0, "RadioMgrImpl"

    const-string v1, "[removePlayedRadios] is not playing radio"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->c()I

    move-result v0

    const-string v1, "RadioMgrImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[removePlayedRadios] should delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " radios"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v1

    sget-object v2, Lcn/kuwo/base/bean/ListType;->n:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;II)Z

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/radio/RadioMgrImpl;->b:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method protected a(ILjava/util/Collection;)V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/mod/radio/RadioMgrImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lcn/kuwo/mod/radio/RadioMgrImpl$1;-><init>(Lcn/kuwo/mod/radio/RadioMgrImpl;ILjava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "RadioMgrImpl"

    const-string v2, "[playRadio] showName is empty"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const-string v2, "RadioMgrImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[playRadio] id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v2

    invoke-interface {v2}, Lcn/kuwo/mod/playcontrol/IPlayControl;->d()Lcn/kuwo/base/bean/MusicList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v3

    sget-object v4, Lcn/kuwo/base/bean/ListType;->n:Lcn/kuwo/base/bean/ListType;

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicList;->e()I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v2

    invoke-interface {v2}, Lcn/kuwo/mod/playcontrol/IPlayControl;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v2

    sget-object v3, Lcn/kuwo/service/PlayProxy$Status;->b:Lcn/kuwo/service/PlayProxy$Status;

    if-ne v2, v3, :cond_1

    const-string v0, "RadioMgrImpl"

    const-string v2, "[playRadio] requested radio is playing already"

    invoke-static {v0, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/kuwo/mod/radio/RadioMgrImpl;->c()V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v2

    sget-object v3, Lcn/kuwo/base/bean/ListType;->n:Lcn/kuwo/base/bean/ListType;

    invoke-interface {v2, v3}, Lcn/kuwo/mod/list/IListMgr;->a(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v1, "RadioMgrImpl"

    const-string v2, "[playRadio] get radio list failed"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v4, "RadioMgrImpl"

    const-string v5, "[playRadio] reset radio list"

    invoke-static {v4, v5}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v4

    if-lez v4, :cond_3

    sget-object v4, Lcn/kuwo/base/bean/ListType;->n:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v4}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v5

    invoke-interface {v2, v4, v0, v5}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "RadioMgrImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[playRadio] remove songs failed, size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3, p1}, Lcn/kuwo/base/bean/MusicList;->a(I)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v2

    invoke-virtual {v3}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, p2}, Lcn/kuwo/mod/list/IListMgr;->b(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v2

    invoke-interface {v2, v3}, Lcn/kuwo/mod/playcontrol/IPlayControl;->a(Lcn/kuwo/base/bean/MusicList;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v1, "RadioMgrImpl"

    const-string v2, "[playRadio] call playControl.playRadio failed"

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0}, Lcn/kuwo/mod/radio/RadioMgrImpl;->c()V

    move v0, v1

    goto/16 :goto_0
.end method

.method public b()V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/radio/RadioMgrImpl;->b:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method
