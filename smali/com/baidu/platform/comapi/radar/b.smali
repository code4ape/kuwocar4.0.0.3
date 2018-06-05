.class Lcom/baidu/platform/comapi/radar/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/baidu/platform/comapi/radar/a;


# direct methods
.method constructor <init>(Lcom/baidu/platform/comapi/radar/a;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/platform/comapi/radar/b;->a:Lcom/baidu/platform/comapi/radar/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Lcom/baidu/platform/comapi/radar/a;->e()Lcom/baidu/platform/comapi/radar/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/platform/comapi/radar/a;->e()Lcom/baidu/platform/comapi/radar/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/radar/d;->a(Landroid/os/Message;)V

    :cond_0
    return-void
.end method
