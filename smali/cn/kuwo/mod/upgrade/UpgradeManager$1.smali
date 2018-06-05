.class final Lcn/kuwo/mod/upgrade/UpgradeManager$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    invoke-static {}, Lcn/kuwo/mod/upgrade/UpgradeManager;->c()Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->a()V

    return-void
.end method
