.class final enum Lcn/kuwo/mod/list/CloudTest$TestCase$5;
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
    .locals 4

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    new-instance v1, Lcn/kuwo/base/bean/Music;

    invoke-direct {v1}, Lcn/kuwo/base/bean/Music;-><init>()V

    int-to-long v2, v0

    iput-wide v2, v1, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v2

    sget-object v3, Lcn/kuwo/mod/list/CloudTest;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    sget-object v1, Lcn/kuwo/mod/list/CloudTest;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcn/kuwo/mod/list/TestTool;->a(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 0

    return-void
.end method
