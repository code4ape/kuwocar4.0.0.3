.class final Lcn/kuwo/mod/mvcache/proxy/Utils$3;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/proxy/Utils$3;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/mod/mvcache/proxy/Utils;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcn/kuwo/mod/mvcache/proxy/Utils$3;->b:I

    if-le v0, v2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
