.class public Lcom/baidu/location/g/a$a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/baidu/location/g/a;


# direct methods
.method public constructor <init>(Lcom/baidu/location/g/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/g/a$a;->a:Lcom/baidu/location/g/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    sget-boolean v0, Lcom/baidu/location/f;->isServing:Z

    if-ne v0, v2, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/baidu/location/g/a$a;->a:Lcom/baidu/location/g/a;

    invoke-static {v0}, Lcom/baidu/location/g/a;->a(Lcom/baidu/location/g/a;)V

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/g/a$a;->a:Lcom/baidu/location/g/a;

    invoke-static {v0}, Lcom/baidu/location/g/a;->b(Lcom/baidu/location/g/a;)V

    :cond_2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/baidu/location/g/a$a;->a:Lcom/baidu/location/g/a;

    invoke-static {v0, p1}, Lcom/baidu/location/g/a;->a(Lcom/baidu/location/g/a;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/baidu/location/g/a$a;->a:Lcom/baidu/location/g/a;

    invoke-static {v0, p1}, Lcom/baidu/location/g/a;->b(Lcom/baidu/location/g/a;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/baidu/location/g/a$a;->a:Lcom/baidu/location/g/a;

    invoke-static {v0, p1}, Lcom/baidu/location/g/a;->c(Lcom/baidu/location/g/a;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/baidu/location/a/i;->c()Lcom/baidu/location/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/a/i;->b(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/baidu/location/a/i;->c()Lcom/baidu/location/a/i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/location/a/i;->a(Z)V

    goto :goto_0

    :sswitch_6
    invoke-static {}, Lcom/baidu/location/a/i;->c()Lcom/baidu/location/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/i;->i()V

    goto :goto_0

    :sswitch_7
    invoke-static {}, Lcom/baidu/location/c/b;->a()Lcom/baidu/location/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/b;->c()V

    goto :goto_0

    :sswitch_8
    invoke-static {}, Lcom/baidu/location/c/b;->a()Lcom/baidu/location/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/b;->d()V

    goto :goto_0

    :sswitch_9
    invoke-static {}, Lcom/baidu/location/c/b;->a()Lcom/baidu/location/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/b;->b()V

    goto :goto_0

    :sswitch_a
    invoke-static {}, Lcom/baidu/location/c/b;->a()Lcom/baidu/location/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/b;->e()V

    goto :goto_0

    :sswitch_b
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "errorid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xf -> :sswitch_3
        0x16 -> :sswitch_4
        0x1c -> :sswitch_5
        0x29 -> :sswitch_6
        0x6e -> :sswitch_7
        0x6f -> :sswitch_8
        0x70 -> :sswitch_9
        0x12e -> :sswitch_a
        0x191 -> :sswitch_b
        0x192 -> :sswitch_0
        0x193 -> :sswitch_0
        0x195 -> :sswitch_c
    .end sparse-switch
.end method
