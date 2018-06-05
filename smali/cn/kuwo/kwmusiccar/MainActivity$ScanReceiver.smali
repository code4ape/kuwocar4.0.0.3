.class Lcn/kuwo/kwmusiccar/MainActivity$ScanReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic this$0:Lcn/kuwo/kwmusiccar/MainActivity;


# direct methods
.method private constructor <init>(Lcn/kuwo/kwmusiccar/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/kwmusiccar/MainActivity$ScanReceiver;->this$0:Lcn/kuwo/kwmusiccar/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/kuwo/kwmusiccar/MainActivity;Lcn/kuwo/kwmusiccar/MainActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/kwmusiccar/MainActivity$ScanReceiver;-><init>(Lcn/kuwo/kwmusiccar/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcn/kuwo/kwmusiccar/MainActivity$ScanReceiver;->this$0:Lcn/kuwo/kwmusiccar/MainActivity;

    invoke-static {v2}, Lcn/kuwo/kwmusiccar/MainActivity;->access$200(Lcn/kuwo/kwmusiccar/MainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "\u6b63\u5728\u626b\u63cf\u65b0\u8bbe\u5907\uff0c\u8bf7\u7a0d\u7b49..."

    invoke-static {v1}, Lcn/kuwo/base/util/ToastUtil;->show(Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    const/16 v2, 0x3e8

    new-instance v3, Lcn/kuwo/kwmusiccar/MainActivity$ScanReceiver$1;

    invoke-direct {v3, p0, v0}, Lcn/kuwo/kwmusiccar/MainActivity$ScanReceiver$1;-><init>(Lcn/kuwo/kwmusiccar/MainActivity$ScanReceiver;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcn/kuwo/core/messagemgr/MessageManager;->a(ILcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity$ScanReceiver;->this$0:Lcn/kuwo/kwmusiccar/MainActivity;

    invoke-static {v0}, Lcn/kuwo/kwmusiccar/MainActivity;->access$300(Lcn/kuwo/kwmusiccar/MainActivity;)V

    goto :goto_0
.end method
