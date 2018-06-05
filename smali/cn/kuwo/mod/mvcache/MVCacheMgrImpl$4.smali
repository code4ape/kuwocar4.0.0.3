.class Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, -0x1

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->v:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4$1;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4$1;-><init>(Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4;->a:J

    iget-object v2, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/util/UrlManagerUtils;->getMVUrl(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/http/HttpSession;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->v:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4$2;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4$2;-><init>(Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    goto :goto_0

    :cond_1
    const-string v1, "\\n|\\r\\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_5

    aget-object v3, v1, v0

    const-string v4, "bitrate="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4;->c:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->m:Ljava/lang/String;

    :cond_4
    const-string v4, "url="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_2

    iget-object v5, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4;->c:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->n:Ljava/lang/String;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4;->c:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;

    iget-object v0, v0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4;->c:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;

    iget-object v0, v0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4;->c:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;

    iget-object v0, v0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->d:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4;->c:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;

    iget-object v0, v0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->d:Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4;->c:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;

    iget-object v1, v1, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/mvcache/proxy/HttpGetProxy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MVCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "4.threadRequestMVUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    sget-object v2, Lcn/kuwo/core/messagemgr/MessageID;->v:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v3, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4$3;

    invoke-direct {v3, p0, v0}, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4$3;-><init>(Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->v:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4$4;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4$4;-><init>(Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$4;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    goto/16 :goto_0
.end method
