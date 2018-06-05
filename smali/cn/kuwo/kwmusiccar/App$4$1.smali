.class Lcn/kuwo/kwmusiccar/App$4$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic this$1:Lcn/kuwo/kwmusiccar/App$4;

.field final synthetic val$strvalue:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/kuwo/kwmusiccar/App$4;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/kwmusiccar/App$4$1;->this$1:Lcn/kuwo/kwmusiccar/App$4;

    iput-object p2, p0, Lcn/kuwo/kwmusiccar/App$4$1;->val$strvalue:Ljava/lang/String;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/App$4$1;->val$strvalue:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "copyright"

    invoke-static {v0, v2}, Lcn/kuwo/base/util/SettingsUtils;->setBooleanSettings(Ljava/lang/String;Z)V

    invoke-static {v2}, Lcn/kuwo/kwmusiccar/App;->access$102(Z)Z

    :goto_0
    const-string v0, "last_check_vip"

    new-instance v1, Lcn/kuwo/base/util/KwDate;

    invoke-direct {v1}, Lcn/kuwo/base/util/KwDate;-><init>()V

    invoke-virtual {v1}, Lcn/kuwo/base/util/KwDate;->toDateTimeString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/util/SettingsUtils;->setStringSettings(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v2}, Lcn/kuwo/kwmusiccar/App;->access$102(Z)Z

    const-string v0, "copyright"

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->access$100()Z

    move-result v1

    invoke-static {v0, v1}, Lcn/kuwo/base/util/SettingsUtils;->setBooleanSettings(Ljava/lang/String;Z)V

    goto :goto_0
.end method
