.class Lcn/kuwo/mod/localmgr/LocalMgrImpl$3;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcn/kuwo/mod/localmgr/LocalMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/localmgr/LocalMgrImpl;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$3;->b:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    iput-object p2, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$3;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$3;->b:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->a(Lcn/kuwo/mod/localmgr/LocalMgrImpl;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "local.all"

    iget-object v1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$3;->b:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    invoke-static {v1}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->a(Lcn/kuwo/mod/localmgr/LocalMgrImpl;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$3;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$3;->b:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    invoke-static {v1}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->a(Lcn/kuwo/mod/localmgr/LocalMgrImpl;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$3;->a:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Ljava/util/List;)I

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$3;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v1, "local.all"

    iget-object v2, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$3;->a:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Ljava/util/List;)I

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v1, "local.all"

    iget-object v2, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$3;->b:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    invoke-static {v2}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->b(Lcn/kuwo/mod/localmgr/LocalMgrImpl;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Ljava/util/Comparator;)Z

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$3;->b:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v1

    sget-object v2, Lcn/kuwo/base/bean/ListType;->b:Lcn/kuwo/base/bean/ListType;

    invoke-interface {v1, v2}, Lcn/kuwo/mod/list/IListMgr;->a(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->a(Lcn/kuwo/mod/localmgr/LocalMgrImpl;Lcn/kuwo/base/bean/MusicList;)Lcn/kuwo/base/bean/MusicList;

    const-string v0, "local_section"

    const-string v1, "local_has_scaned"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v4}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$3;->b:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    iget-object v1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$3;->b:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    iget-object v2, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$3;->b:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    iget-object v3, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$3;->b:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    invoke-static {v3, v4}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->d(Lcn/kuwo/mod/localmgr/LocalMgrImpl;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->c(Lcn/kuwo/mod/localmgr/LocalMgrImpl;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->b(Lcn/kuwo/mod/localmgr/LocalMgrImpl;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->a(Lcn/kuwo/mod/localmgr/LocalMgrImpl;Z)Z

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$3;->b:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->c(Lcn/kuwo/mod/localmgr/LocalMgrImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$3;->b:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    iget-object v1, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$3;->b:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    iget-object v2, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$3;->b:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    iget-object v3, p0, Lcn/kuwo/mod/localmgr/LocalMgrImpl$3;->b:Lcn/kuwo/mod/localmgr/LocalMgrImpl;

    invoke-static {v3, v4}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->d(Lcn/kuwo/mod/localmgr/LocalMgrImpl;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->c(Lcn/kuwo/mod/localmgr/LocalMgrImpl;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->b(Lcn/kuwo/mod/localmgr/LocalMgrImpl;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcn/kuwo/mod/localmgr/LocalMgrImpl;->a(Lcn/kuwo/mod/localmgr/LocalMgrImpl;Z)Z

    :cond_2
    return-void
.end method
