.class Lcn/kuwo/kwmusiccar/NoSDCardActivity$1;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcn/kuwo/kwmusiccar/NoSDCardActivity;


# direct methods
.method constructor <init>(Lcn/kuwo/kwmusiccar/NoSDCardActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/kwmusiccar/NoSDCardActivity$1;->this$0:Lcn/kuwo/kwmusiccar/NoSDCardActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/NoSDCardActivity$1;->this$0:Lcn/kuwo/kwmusiccar/NoSDCardActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcn/kuwo/kwmusiccar/NoSDCardActivity$1;->this$0:Lcn/kuwo/kwmusiccar/NoSDCardActivity;

    const-class v3, Lcn/kuwo/kwmusiccar/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/kwmusiccar/NoSDCardActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
