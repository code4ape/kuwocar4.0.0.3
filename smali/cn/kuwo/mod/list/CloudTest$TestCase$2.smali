.class final enum Lcn/kuwo/mod/list/CloudTest$TestCase$2;
.super Lcn/kuwo/mod/list/CloudTest$TestCase;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/kuwo/mod/list/CloudTest$TestCase;-><init>(Ljava/lang/String;ILcn/kuwo/mod/list/CloudTest$1;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v1, 0x1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v2, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/kuwo/mod/list/CloudTest;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcn/kuwo/mod/list/IListMgr;->a(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v2, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/kuwo/mod/list/CloudTest;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcn/kuwo/mod/list/IListMgr;->a(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v2, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/kuwo/mod/list/CloudTest;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcn/kuwo/mod/list/IListMgr;->a(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v2, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/kuwo/mod/list/CloudTest;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "NoSyncDelete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcn/kuwo/mod/list/IListMgr;->a(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v2, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/kuwo/mod/list/CloudTest;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SyncDelete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcn/kuwo/mod/list/IListMgr;->a(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v2, Lcn/kuwo/base/bean/ListType;->l:Lcn/kuwo/base/bean/ListType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/kuwo/mod/list/CloudTest;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SyncRename"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcn/kuwo/mod/list/IListMgr;->a(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move v0, v1

    :goto_0
    if-gt v0, v6, :cond_0

    new-instance v2, Lcn/kuwo/base/bean/Music;

    invoke-direct {v2}, Lcn/kuwo/base/bean/Music;-><init>()V

    int-to-long v4, v0

    iput-wide v4, v2, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcn/kuwo/mod/list/CloudTest;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcn/kuwo/mod/list/CloudTest;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcn/kuwo/mod/list/CloudTest;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 7

    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    move v4, v2

    :goto_0
    if-gt v4, v6, :cond_3

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcn/kuwo/mod/list/CloudTest;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->j()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v2

    :goto_1
    invoke-static {v1}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->k()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    :goto_2
    invoke-static {v1}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->size()I

    move-result v0

    if-ne v0, v6, :cond_2

    move v0, v2

    :goto_3
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_3

    :cond_3
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
