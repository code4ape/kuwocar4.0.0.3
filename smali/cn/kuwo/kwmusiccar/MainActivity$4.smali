.class Lcn/kuwo/kwmusiccar/MainActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/core/observers/IConfigMgrObserver;


# instance fields
.field final synthetic this$0:Lcn/kuwo/kwmusiccar/MainActivity;


# direct methods
.method constructor <init>(Lcn/kuwo/kwmusiccar/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/kwmusiccar/MainActivity$4;->this$0:Lcn/kuwo/kwmusiccar/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IConfigMgrObserver_ItemChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "key_set_full_screen"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    const-string v1, "key_set_full_screen"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcn/kuwo/kwmusiccar/MainActivity$4;->this$0:Lcn/kuwo/kwmusiccar/MainActivity;

    invoke-static {v1, v0}, Lcn/kuwo/kwmusiccar/MainActivity;->access$100(Lcn/kuwo/kwmusiccar/MainActivity;Z)V

    :cond_0
    return-void
.end method

.method public IConfigMgrObserver_RealTimeSave()V
    .locals 0

    return-void
.end method

.method public IConfigMgrObserver_UpdateFinish(Z)V
    .locals 0

    return-void
.end method
