.class Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/core/observers/IListObserver;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl$2;->a:Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .locals 0

    return-void
.end method

.method public IListObserver_startLoad()V
    .locals 0

    return-void
.end method

.method public IListObserver_updateMusic(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "AudioAdMgrImpl"

    const-string v1, "InsertMusic()"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl$2;->a:Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->a(Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl$2;->a:Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;

    invoke-static {v0, v2}, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->a(Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;I)I

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl$2;->a:Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;

    invoke-static {v0, v2}, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->a(Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;Z)V

    :cond_0
    return-void
.end method
