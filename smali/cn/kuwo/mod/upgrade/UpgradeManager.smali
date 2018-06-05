.class public Lcn/kuwo/mod/upgrade/UpgradeManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;

    invoke-direct {v0}, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;-><init>()V

    sput-object v0, Lcn/kuwo/mod/upgrade/UpgradeManager;->a:Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    const/16 v1, 0x3e8

    new-instance v2, Lcn/kuwo/mod/upgrade/UpgradeManager$1;

    invoke-direct {v2}, Lcn/kuwo/mod/upgrade/UpgradeManager$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(ILcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lcn/kuwo/mod/upgrade/UpgradeManager;->a:Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;

    invoke-virtual {v0}, Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic c()Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/upgrade/UpgradeManager;->a:Lcn/kuwo/mod/upgrade/UpgradeManagerImpl;

    return-object v0
.end method
