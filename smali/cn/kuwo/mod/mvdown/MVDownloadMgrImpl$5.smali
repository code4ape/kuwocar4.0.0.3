.class Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$5;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;


# virtual methods
.method public call()V
    .locals 6

    const-string v0, "MVDownloadMgrImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$5;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",Action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$5;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",callbackAction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$5;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$5;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$5;->d:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/bean/Music;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/Music;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v0, v2, Lcn/kuwo/base/bean/Music;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$5;->e:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$5;->c:Ljava/lang/String;

    iget-wide v2, v2, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->f()I

    move-result v4

    const-string v5, "\u753b\u8d28\u4e0d\u652f\u6301"

    invoke-static/range {v0 .. v5}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;Ljava/lang/String;JILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$5;->e:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    const/16 v3, 0x64

    iget-object v4, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$5;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$5;->e:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$5;->c:Ljava/lang/String;

    iget-wide v2, v2, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->g()I

    move-result v4

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;Ljava/lang/String;JILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$5;->e:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$5;->c:Ljava/lang/String;

    iget-wide v2, v2, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->h()I

    move-result v4

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;Ljava/lang/String;JILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$5;->e:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$5;->c:Ljava/lang/String;

    iget-wide v2, v2, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->g()I

    move-result v4

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;Ljava/lang/String;JILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$5;->e:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$5;->c:Ljava/lang/String;

    iget-wide v2, v2, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->i()I

    move-result v4

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;Ljava/lang/String;JILjava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$5;->e:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$5;->c:Ljava/lang/String;

    iget-wide v2, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$5;->a:J

    invoke-static {}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->i()I

    move-result v4

    const-string v5, "MV\u4e0b\u8f7d\u4fe1\u606f\u4e22\u5931"

    invoke-static/range {v0 .. v5}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;Ljava/lang/String;JILjava/lang/String;)V

    goto :goto_0
.end method
