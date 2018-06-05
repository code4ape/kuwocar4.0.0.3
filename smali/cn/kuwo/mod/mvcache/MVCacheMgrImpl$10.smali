.class Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$10;->b:Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;

    iget-object v1, p0, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl$10;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/mvcache/MVCacheMgrImpl;->a(Ljava/lang/String;)V

    return-void
.end method
