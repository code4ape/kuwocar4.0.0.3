.class public Lcn/kuwo/mod/mvcache/db/MVCacheDownloadMgrImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/mod/mvcache/db/IMVCacheDownloadMgr;


# instance fields
.field a:Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;

.field b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(J)Lcn/kuwo/base/bean/Music;
    .locals 5

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/db/MVCacheDownloadMgrImpl;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/db/MVCacheDownloadMgrImpl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/Music;

    iget-wide v2, v0, Lcn/kuwo/base/bean/Music;->a:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/db/MVCacheDownloadMgrImpl;->a:Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/db/MVCacheDownloadMgrImpl;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->a()Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/mvcache/db/MVCacheDownloadMgrImpl;->a:Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/mvcache/db/MVCacheDownloadMgrImpl;->b:Ljava/util/List;

    invoke-direct {p0}, Lcn/kuwo/mod/mvcache/db/MVCacheDownloadMgrImpl;->c()V

    const-string v0, "MVCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadDownedMvList -------count:-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/db/MVCacheDownloadMgrImpl;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "----------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-wide v0, p1, Lcn/kuwo/base/bean/Music;->a:J

    invoke-direct {p0, v0, v1}, Lcn/kuwo/mod/mvcache/db/MVCacheDownloadMgrImpl;->a(J)Lcn/kuwo/base/bean/Music;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v1}, Lcn/kuwo/base/util/KwFileUtils;->deleteFile(Ljava/lang/String;)Z

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/db/MVCacheDownloadMgrImpl;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/mvcache/db/MVCacheDownloadMgrImpl;->a:Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;

    iget-wide v2, p1, Lcn/kuwo/base/bean/Music;->a:J

    invoke-virtual {v0, v2, v3, p2}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->a(JLjava/lang/String;)I

    :cond_1
    return-void
.end method

.method public a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcn/kuwo/base/bean/Music;->f()Lcn/kuwo/base/bean/Music;

    move-result-object v1

    iput-object p3, v1, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    iput-object p2, v1, Lcn/kuwo/base/bean/Music;->i:Ljava/lang/String;

    new-instance v2, Lcn/kuwo/base/util/KwDate;

    invoke-direct {v2}, Lcn/kuwo/base/util/KwDate;-><init>()V

    iput-object v2, v1, Lcn/kuwo/base/bean/Music;->p:Lcn/kuwo/base/util/KwDate;

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/db/MVCacheDownloadMgrImpl;->a:Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;

    invoke-virtual {v2, v1}, Lcn/kuwo/mod/mvcache/db/MVCacheDBHelper;->a(Lcn/kuwo/base/bean/Music;)J

    move-result-wide v2

    cmp-long v4, v2, v6

    if-lez v4, :cond_2

    iget-object v4, p0, Lcn/kuwo/mod/mvcache/db/MVCacheDownloadMgrImpl;->b:Ljava/util/List;

    invoke-interface {v4, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    const-string v1, "MVCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addDownloadMVFile -------ret:-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "----------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 0

    return-void
.end method
