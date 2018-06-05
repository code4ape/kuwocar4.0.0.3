.class public Lcn/kuwo/kwmusiccar/NoSDCardActivity;
.super Landroid/app/Activity;


# instance fields
.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcn/kuwo/kwmusiccar/NoSDCardActivity$1;

    invoke-direct {v0, p0}, Lcn/kuwo/kwmusiccar/NoSDCardActivity$1;-><init>(Lcn/kuwo/kwmusiccar/NoSDCardActivity;)V

    iput-object v0, p0, Lcn/kuwo/kwmusiccar/NoSDCardActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04002a

    invoke-virtual {p0, v0}, Lcn/kuwo/kwmusiccar/NoSDCardActivity;->setContentView(I)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/NoSDCardActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/kuwo/kwmusiccar/NoSDCardActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcn/kuwo/kwmusiccar/NoSDCardActivity;->finish()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/kwmusiccar/NoSDCardActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcn/kuwo/kwmusiccar/NoSDCardActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
