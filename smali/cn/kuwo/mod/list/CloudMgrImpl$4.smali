.class Lcn/kuwo/mod/list/CloudMgrImpl$4;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Ljava/util/Collection;

.field final synthetic b:Lcn/kuwo/mod/list/CloudMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/list/CloudMgrImpl;Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/list/CloudMgrImpl$4;->b:Lcn/kuwo/mod/list/CloudMgrImpl;

    iput-object p2, p0, Lcn/kuwo/mod/list/CloudMgrImpl$4;->a:Ljava/util/Collection;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 7

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl$4;->b:Lcn/kuwo/mod/list/CloudMgrImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/kuwo/mod/list/CloudMgrImpl;->a(Lcn/kuwo/mod/list/CloudMgrImpl;Z)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl$4;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/CloudListData;

    iget-object v2, v0, Lcn/kuwo/mod/list/CloudListData;->f:Ljava/lang/String;

    const-string v3, "DEL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcn/kuwo/mod/list/CloudListData;->e:Ljava/lang/String;

    const-string v3, "DEL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    iget-object v2, p0, Lcn/kuwo/mod/list/CloudMgrImpl$4;->b:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-virtual {v2, v0}, Lcn/kuwo/mod/list/CloudMgrImpl;->h(Lcn/kuwo/mod/list/CloudListData;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl$4;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/CloudListData;

    iget-object v2, v0, Lcn/kuwo/mod/list/CloudListData;->f:Ljava/lang/String;

    const-string v3, "DEL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcn/kuwo/mod/list/CloudListData;->e:Ljava/lang/String;

    const-string v3, "DEL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcn/kuwo/mod/list/CloudListData;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcn/kuwo/mod/list/CloudMgrImpl$4;->b:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-virtual {v2, v0}, Lcn/kuwo/mod/list/CloudMgrImpl;->h(Lcn/kuwo/mod/list/CloudListData;)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl$4;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/list/CloudListData;

    iget-object v2, v0, Lcn/kuwo/mod/list/CloudListData;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcn/kuwo/mod/list/CloudMgrImpl$4;->b:Lcn/kuwo/mod/list/CloudMgrImpl;

    invoke-virtual {v2, v0}, Lcn/kuwo/mod/list/CloudMgrImpl;->h(Lcn/kuwo/mod/list/CloudListData;)Z

    goto :goto_2

    :cond_6
    const-string v0, "CloudMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processResponse time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/bean/ListType;->p:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/ListMgrImpl;->c(Lcn/kuwo/base/bean/ListType;)Z

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/bean/ListType;->q:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/list/ListMgrImpl;->d(Lcn/kuwo/base/bean/ListType;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v1

    sget-object v2, Lcn/kuwo/base/bean/ListType;->q:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v1, v2}, Lcn/kuwo/mod/list/ListMgrImpl;->c(Lcn/kuwo/base/bean/ListType;)Z

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/MusicList;

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v1

    sget-object v2, Lcn/kuwo/base/bean/ListType;->p:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lcn/kuwo/mod/list/ListMgrImpl;->a(Lcn/kuwo/base/bean/ListType;Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    invoke-static {}, Lcn/kuwo/mod/list/ListMgrImpl;->f()Lcn/kuwo/mod/list/ListMgrImpl;

    move-result-object v1

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicList;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/kuwo/mod/list/ListMgrImpl;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v1

    check-cast v1, Lcn/kuwo/mod/list/MusicListInner;

    if-eqz v1, :cond_7

    move-object v2, v0

    check-cast v2, Lcn/kuwo/mod/list/MusicListInner;

    invoke-virtual {v2}, Lcn/kuwo/mod/list/MusicListInner;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/kuwo/mod/list/MusicListInner;->b(I)V

    check-cast v0, Lcn/kuwo/mod/list/MusicListInner;

    invoke-virtual {v0}, Lcn/kuwo/mod/list/MusicListInner;->k()I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/list/MusicListInner;->setVersion(I)V

    goto :goto_3

    :cond_8
    const-string v0, "CloudMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processResponse all time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/list/CloudMgrImpl$4;->b:Lcn/kuwo/mod/list/CloudMgrImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/kuwo/mod/list/CloudMgrImpl;->a(Lcn/kuwo/mod/list/CloudMgrImpl;Z)Z

    return-void
.end method
