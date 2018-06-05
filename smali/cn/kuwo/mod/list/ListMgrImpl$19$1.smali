.class Lcn/kuwo/mod/list/ListMgrImpl$19$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/list/ListSet;

.field final synthetic b:Lcn/kuwo/mod/list/ListMgrImpl$19;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/list/ListMgrImpl$19;Lcn/kuwo/mod/list/ListSet;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/list/ListMgrImpl$19$1;->b:Lcn/kuwo/mod/list/ListMgrImpl$19;

    iput-object p2, p0, Lcn/kuwo/mod/list/ListMgrImpl$19$1;->a:Lcn/kuwo/mod/list/ListSet;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 8

    const/4 v2, 0x0

    const-string v0, "ListMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadMv uithread(start):"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/kuwo/mod/list/ListMgrImpl$19$1;->b:Lcn/kuwo/mod/list/ListMgrImpl$19;

    iget v3, v3, Lcn/kuwo/mod/list/ListMgrImpl$19;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->c()Lcn/kuwo/base/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/bean/UserInfo;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v1

    invoke-interface {v1}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->c()Lcn/kuwo/base/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/base/bean/UserInfo;->c()I

    move-result v1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->i()Lcn/kuwo/mod/userinfo/IUserInfoMgr;

    move-result-object v3

    invoke-interface {v3}, Lcn/kuwo/mod/userinfo/IUserInfoMgr;->e()I

    move-result v3

    sget v4, Lcn/kuwo/base/bean/UserInfo;->e:I

    if-ne v3, v4, :cond_8

    const-string v0, ""

    move v1, v2

    move-object v3, v0

    :goto_0
    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl$19$1;->b:Lcn/kuwo/mod/list/ListMgrImpl$19;

    iget v0, v0, Lcn/kuwo/mod/list/ListMgrImpl$19;->a:I

    if-eq v1, v0, :cond_1

    const-string v0, "ListMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadMv uithread(return):user change"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl$19$1;->a:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/ListSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    sget-object v5, Lcn/kuwo/base/bean/ListType;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcn/kuwo/mod/list/ListMgrImpl$19$1;->b:Lcn/kuwo/mod/list/ListMgrImpl$19;

    iget-object v5, v5, Lcn/kuwo/mod/list/ListMgrImpl$19;->c:Lcn/kuwo/mod/list/ListMgrImpl;

    invoke-static {v5}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Lcn/kuwo/mod/list/ListMgrImpl;)Lcn/kuwo/mod/list/ListSet;

    move-result-object v5

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/kuwo/mod/list/ListSet;->b(Lcn/kuwo/base/bean/ListType;)Lcn/kuwo/mod/list/MusicListInner;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcn/kuwo/mod/list/ListMgrImpl$19$1;->b:Lcn/kuwo/mod/list/ListMgrImpl$19;

    iget-object v5, v5, Lcn/kuwo/mod/list/ListMgrImpl$19;->c:Lcn/kuwo/mod/list/ListMgrImpl;

    invoke-static {v5}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Lcn/kuwo/mod/list/ListMgrImpl;)Lcn/kuwo/mod/list/ListSet;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcn/kuwo/mod/list/ListSet;->add(Lcn/kuwo/mod/list/MusicListInner;)Z

    goto :goto_2

    :cond_3
    sget-object v0, Lcn/kuwo/base/bean/ListType;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/ListType;

    iget-object v5, p0, Lcn/kuwo/mod/list/ListMgrImpl$19$1;->b:Lcn/kuwo/mod/list/ListMgrImpl$19;

    iget-object v5, v5, Lcn/kuwo/mod/list/ListMgrImpl$19;->c:Lcn/kuwo/mod/list/ListMgrImpl;

    invoke-static {v5}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Lcn/kuwo/mod/list/ListMgrImpl;)Lcn/kuwo/mod/list/ListSet;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcn/kuwo/mod/list/ListSet;->a(Lcn/kuwo/base/bean/ListType;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl$19$1;->a:Lcn/kuwo/mod/list/ListSet;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/ListSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    sget-object v5, Lcn/kuwo/base/bean/ListType;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->b()Lcn/kuwo/base/bean/ListType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "ListMgrImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadMv uithread(mid):add "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcn/kuwo/mod/list/ListMgrImpl$19$1;->b:Lcn/kuwo/mod/list/ListMgrImpl$19;

    iget-object v5, v5, Lcn/kuwo/mod/list/ListMgrImpl$19;->c:Lcn/kuwo/mod/list/ListMgrImpl;

    invoke-static {v5}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Lcn/kuwo/mod/list/ListMgrImpl;)Lcn/kuwo/mod/list/ListSet;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcn/kuwo/mod/list/ListSet;->add(Lcn/kuwo/mod/list/MusicListInner;)Z

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl$19$1;->b:Lcn/kuwo/mod/list/ListMgrImpl$19;

    iget-object v0, v0, Lcn/kuwo/mod/list/ListMgrImpl$19;->c:Lcn/kuwo/mod/list/ListMgrImpl;

    invoke-static {v0, v3}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Lcn/kuwo/mod/list/ListMgrImpl;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl$19$1;->b:Lcn/kuwo/mod/list/ListMgrImpl$19;

    iget-object v0, v0, Lcn/kuwo/mod/list/ListMgrImpl$19;->c:Lcn/kuwo/mod/list/ListMgrImpl;

    int-to-long v4, v1

    invoke-static {v0, v4, v5}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Lcn/kuwo/mod/list/ListMgrImpl;J)J

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl$19$1;->b:Lcn/kuwo/mod/list/ListMgrImpl$19;

    iget-object v0, v0, Lcn/kuwo/mod/list/ListMgrImpl$19;->c:Lcn/kuwo/mod/list/ListMgrImpl;

    invoke-static {v0, v2}, Lcn/kuwo/mod/list/ListMgrImpl;->b(Lcn/kuwo/mod/list/ListMgrImpl;Z)Z

    const-string v0, "ListMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadMv(ok):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/list/ListMgrImpl$19$1;->b:Lcn/kuwo/mod/list/ListMgrImpl$19;

    iget-object v2, v2, Lcn/kuwo/mod/list/ListMgrImpl$19;->c:Lcn/kuwo/mod/list/ListMgrImpl;

    invoke-static {v2}, Lcn/kuwo/mod/list/ListMgrImpl;->b(Lcn/kuwo/mod/list/ListMgrImpl;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl$19$1;->b:Lcn/kuwo/mod/list/ListMgrImpl$19;

    iget-object v0, v0, Lcn/kuwo/mod/list/ListMgrImpl$19;->c:Lcn/kuwo/mod/list/ListMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/list/ListMgrImpl;->c(Lcn/kuwo/mod/list/ListMgrImpl;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcn/kuwo/mod/list/ListMgrImpl$19$1;->b:Lcn/kuwo/mod/list/ListMgrImpl$19;

    iget-object v0, v0, Lcn/kuwo/mod/list/ListMgrImpl$19;->c:Lcn/kuwo/mod/list/ListMgrImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/kuwo/mod/list/ListMgrImpl;->c(Lcn/kuwo/mod/list/ListMgrImpl;Z)Z

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/list/ListMgrImpl$19$1$1;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/list/ListMgrImpl$19$1$1;-><init>(Lcn/kuwo/mod/list/ListMgrImpl$19$1;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    :cond_7
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->o:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/list/ListMgrImpl$19$1$2;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/list/ListMgrImpl$19$1$2;-><init>(Lcn/kuwo/mod/list/ListMgrImpl$19$1;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    goto/16 :goto_1

    :cond_8
    move-object v3, v0

    goto/16 :goto_0
.end method
