.class Lcn/kuwo/mod/push/PushServiceUtils$1;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/push/PushServiceUtils;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/push/PushServiceUtils;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/push/PushServiceUtils$1;->a:Lcn/kuwo/mod/push/PushServiceUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/push/PushServiceUtils$1;->a:Lcn/kuwo/mod/push/PushServiceUtils;

    invoke-virtual {v0}, Lcn/kuwo/mod/push/PushServiceUtils;->a()V

    return-void
.end method
