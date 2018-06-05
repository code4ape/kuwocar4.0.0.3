.class Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$3;->a:Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl$3;->a:Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;

    invoke-static {v0}, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->a(Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;)V

    return-void
.end method
