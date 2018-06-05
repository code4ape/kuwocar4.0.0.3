.class Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2$1;->a:Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2$1;->a:Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2;

    iget-object v0, v0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2;->c:Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;

    iget-object v0, v0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->a:Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$DownloadReceiver;

    iget-object v1, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2$1;->a:Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2;

    iget-object v1, v1, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2;->c:Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;

    invoke-static {v1}, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->b(Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;)Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    move-result-object v1

    iget-object v1, v1, Lcn/kuwo/mod/upgrade/AppUpgradeInfo;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2$1;->a:Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2;

    iget-object v2, v2, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$DownloadReceiver;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2$1;->a:Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2;

    iget-boolean v0, v0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2$1;->a:Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2;

    iget-object v0, v0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2;->c:Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;

    invoke-static {v0}, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->b(Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;)Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    move-result-object v0

    iget-wide v2, v0, Lcn/kuwo/mod/upgrade/AppUpgradeInfo;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcn/kuwo/mod/upgrade/AppUpgradeInfo;->d:J

    iget-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2$1;->a:Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2;

    iget-object v0, v0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2;->c:Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;

    invoke-static {v0}, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->b(Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;)Lcn/kuwo/mod/upgrade/AppUpgradeInfo;

    move-result-object v0

    const-string v1, "NewestSoft-prompt"

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/upgrade/AppUpgradeInfo;->a(Ljava/lang/String;)Z

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2$1;->a:Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2;

    iget-object v0, v0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$2;->c:Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->a(Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0
.end method
