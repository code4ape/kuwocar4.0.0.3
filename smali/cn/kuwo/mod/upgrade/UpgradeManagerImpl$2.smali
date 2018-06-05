.class Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2;->c:Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;

    iput-object p2, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2;->b:Z

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 6

    invoke-static {}, Lcn/kuwo/kwmusiccar/MainActivity;->getInstance()Lcn/kuwo/kwmusiccar/MainActivity;

    move-result-object v0

    const-string v1, "\u53d1\u73b0\u65b0\u7248\u672c"

    iget-object v2, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2;->c:Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;

    invoke-static {v2}, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->b(Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;)Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    move-result-object v2

    iget-object v2, v2, Lcn/kuwo/mod/upgrade/AppUpgradeInfo;->c:Ljava/lang/String;

    const-string v3, "\u66f4\u65b0"

    const-string v4, "\u53d6\u6d88"

    new-instance v5, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2$1;

    invoke-direct {v5, p0}, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2$1;-><init>(Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2;)V

    invoke-static/range {v0 .. v5}, Lcn/kuwo/ui/dialog/DialogUtils;->showSimpleDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method
