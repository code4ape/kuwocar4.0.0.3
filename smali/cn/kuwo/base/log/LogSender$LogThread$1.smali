.class Lcn/kuwo/base/log/LogSender$LogThread$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/kuwo/base/log/LogSender$LogThread;


# direct methods
.method constructor <init>(Lcn/kuwo/base/log/LogSender$LogThread;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/log/LogSender$LogThread$1;->a:Lcn/kuwo/base/log/LogSender$LogThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v1, :cond_0

    :goto_1
    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogSender;->b(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/log/LogDef;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v2

    sget-object v3, Lcn/kuwo/core/messagemgr/MessageID;->i:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v4, Lcn/kuwo/base/log/LogSender$LogThread$1$1;

    invoke-direct {v4, p0, v1, v0}, Lcn/kuwo/base/log/LogSender$LogThread$1$1;-><init>(Lcn/kuwo/base/log/LogSender$LogThread$1;ZLjava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
