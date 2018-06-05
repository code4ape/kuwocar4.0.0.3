.class Lcom/baidu/platform/comapi/search/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/baidu/platform/comapi/search/d;


# direct methods
.method constructor <init>(Lcom/baidu/platform/comapi/search/d;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/platform/comapi/search/e;->a:Lcom/baidu/platform/comapi/search/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/platform/comapi/search/e;->a:Lcom/baidu/platform/comapi/search/d;

    invoke-static {v0}, Lcom/baidu/platform/comapi/search/d;->a(Lcom/baidu/platform/comapi/search/d;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/search/e;->a:Lcom/baidu/platform/comapi/search/d;

    invoke-static {v0}, Lcom/baidu/platform/comapi/search/d;->a(Lcom/baidu/platform/comapi/search/d;)J

    move-result-wide v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/search/e;->a:Lcom/baidu/platform/comapi/search/d;

    invoke-static {v0}, Lcom/baidu/platform/comapi/search/d;->b(Lcom/baidu/platform/comapi/search/d;)Lcom/baidu/platform/comapi/search/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/search/e;->a:Lcom/baidu/platform/comapi/search/d;

    invoke-static {v0}, Lcom/baidu/platform/comapi/search/d;->b(Lcom/baidu/platform/comapi/search/d;)Lcom/baidu/platform/comapi/search/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/search/c;->a(Landroid/os/Message;)V

    goto :goto_0
.end method
