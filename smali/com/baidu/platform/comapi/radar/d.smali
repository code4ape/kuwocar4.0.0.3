.class Lcom/baidu/platform/comapi/radar/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/baidu/platform/comapi/radar/c;

.field private b:Lcom/baidu/platform/comapi/radar/a;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/radar/d;->a:Lcom/baidu/platform/comapi/radar/c;

    iput-object v0, p0, Lcom/baidu/platform/comapi/radar/d;->b:Lcom/baidu/platform/comapi/radar/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comapi/radar/d;->a:Lcom/baidu/platform/comapi/radar/c;

    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7530

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/radar/d;->a:Lcom/baidu/platform/comapi/radar/c;

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/radar/d;->a:Lcom/baidu/platform/comapi/radar/c;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1}, Lcom/baidu/platform/comapi/radar/c;->onGetUploadResult(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/radar/d;->a:Lcom/baidu/platform/comapi/radar/c;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1}, Lcom/baidu/platform/comapi/radar/c;->onGetClearInfoResult(I)V

    goto :goto_0

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/platform/comapi/radar/d;->b:Lcom/baidu/platform/comapi/radar/a;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/radar/a;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/platform/comapi/radar/d;->a:Lcom/baidu/platform/comapi/radar/c;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v0, v2}, Lcom/baidu/platform/comapi/radar/c;->onGetNearByResult(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/radar/d;->a:Lcom/baidu/platform/comapi/radar/c;

    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/baidu/platform/comapi/radar/c;->onGetNearByResult(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7531
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/baidu/platform/comapi/radar/a;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/platform/comapi/radar/d;->b:Lcom/baidu/platform/comapi/radar/a;

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/radar/c;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/platform/comapi/radar/d;->a:Lcom/baidu/platform/comapi/radar/c;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comapi/radar/d;->b:Lcom/baidu/platform/comapi/radar/a;

    return-void
.end method
