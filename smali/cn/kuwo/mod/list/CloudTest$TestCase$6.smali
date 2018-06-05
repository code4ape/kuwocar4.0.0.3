.class final enum Lcn/kuwo/mod/list/CloudTest$TestCase$6;
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
    .locals 3

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v1, Lcn/kuwo/mod/list/CloudTest;->a:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;I)Z

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v1, Lcn/kuwo/mod/list/CloudTest;->a:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;I)Z

    return-void
.end method

.method public b()V
    .locals 7

    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v3, Lcn/kuwo/mod/list/CloudTest;->a:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v3, Lcn/kuwo/mod/list/CloudTest;->a:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    const-wide/16 v4, 0x3

    invoke-virtual {v0, v4, v5}, Lcn/kuwo/mod/list/MusicListInner;->a(J)I

    move-result v3

    if-ne v3, v6, :cond_1

    move v3, v1

    :goto_1
    invoke-static {v3}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    const-wide/16 v4, 0x5

    invoke-virtual {v0, v4, v5}, Lcn/kuwo/mod/list/MusicListInner;->a(J)I

    move-result v3

    if-ne v3, v6, :cond_2

    move v3, v1

    :goto_2
    invoke-static {v3}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Lcn/kuwo/mod/list/MusicListInner;->a(J)I

    move-result v3

    if-eq v3, v6, :cond_3

    move v3, v1

    :goto_3
    invoke-static {v3}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    const-wide/16 v4, 0x2

    invoke-virtual {v0, v4, v5}, Lcn/kuwo/mod/list/MusicListInner;->a(J)I

    move-result v3

    if-eq v3, v6, :cond_4

    move v3, v1

    :goto_4
    invoke-static {v3}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    const-wide/16 v4, 0x8

    invoke-virtual {v0, v4, v5}, Lcn/kuwo/mod/list/MusicListInner;->a(J)I

    move-result v0

    if-eq v0, v6, :cond_5

    :goto_5
    invoke-static {v1}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_3

    :cond_4
    move v3, v2

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5
.end method

.method public c()V
    .locals 0

    return-void
.end method
