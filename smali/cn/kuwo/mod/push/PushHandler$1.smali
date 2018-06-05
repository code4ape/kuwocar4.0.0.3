.class Lcn/kuwo/mod/push/PushHandler$1;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/push/PushHandler;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/push/PushHandler;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/push/PushHandler$1;->a:Lcn/kuwo/mod/push/PushHandler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/push/PushHandler$1;->a:Lcn/kuwo/mod/push/PushHandler;

    invoke-static {v0}, Lcn/kuwo/mod/push/PushHandler;->a(Lcn/kuwo/mod/push/PushHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcn/kuwo/mod/push/PushHandler$1;->a:Lcn/kuwo/mod/push/PushHandler;

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/push/PushHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
