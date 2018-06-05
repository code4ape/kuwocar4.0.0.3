.class Lcn/kuwo/mod/list/ListMgrImpl$19;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lcn/kuwo/mod/list/ListMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/list/ListMgrImpl;IZ)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/list/ListMgrImpl$19;->c:Lcn/kuwo/mod/list/ListMgrImpl;

    iput p2, p0, Lcn/kuwo/mod/list/ListMgrImpl$19;->a:I

    iput-boolean p3, p0, Lcn/kuwo/mod/list/ListMgrImpl$19;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "ListMgrImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ListSet.loadMv(start):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/kuwo/mod/list/ListMgrImpl$19;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcn/kuwo/mod/list/ListMgrImpl$19;->b:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/kuwo/mod/list/ListSet;

    invoke-direct {v3}, Lcn/kuwo/mod/list/ListSet;-><init>()V

    iget v0, p0, Lcn/kuwo/mod/list/ListMgrImpl$19;->a:I

    int-to-long v4, v0

    iget-boolean v0, p0, Lcn/kuwo/mod/list/ListMgrImpl$19;->b:Z

    invoke-virtual {v3, v4, v5, v0}, Lcn/kuwo/mod/list/ListSet;->a(JZ)Z

    const-string v0, "ListMgrImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ListSet.loadMv(ok): list num "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcn/kuwo/mod/list/ListSet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcn/kuwo/mod/list/ListMgrImpl$19;->a:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcn/kuwo/mod/list/ListSet;->a(Z)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v4, Lcn/kuwo/mod/list/ListMgrImpl$19$1;

    invoke-direct {v4, p0, v3}, Lcn/kuwo/mod/list/ListMgrImpl$19$1;-><init>(Lcn/kuwo/mod/list/ListMgrImpl$19;Lcn/kuwo/mod/list/ListSet;)V

    invoke-virtual {v0, v4}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl$19;->c:Lcn/kuwo/mod/list/ListMgrImpl;

    invoke-static {v0, v1}, Lcn/kuwo/mod/list/ListMgrImpl;->c(Lcn/kuwo/mod/list/ListMgrImpl;Z)Z

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl$19;->c:Lcn/kuwo/mod/list/ListMgrImpl;

    invoke-static {v0, v2}, Lcn/kuwo/mod/list/ListMgrImpl;->b(Lcn/kuwo/mod/list/ListMgrImpl;Z)Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method
