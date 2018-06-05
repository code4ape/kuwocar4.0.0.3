.class Lcn/kuwo/kwmusiccar/WelcomeActivity$InitRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/kuwo/kwmusiccar/WelcomeActivity$1;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/kwmusiccar/WelcomeActivity$InitRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/db/DataBaseManager;->a(Landroid/content/Context;)V

    invoke-static {}, Lcn/kuwo/mod/skin/SkinMgr;->b()Lcn/kuwo/mod/skin/SkinMgr;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v1

    invoke-virtual {v1}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/skin/SkinMgr;->a(Landroid/content/Context;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/kwmusiccar/WelcomeActivity$InitRunnable$1;

    invoke-direct {v1, p0}, Lcn/kuwo/kwmusiccar/WelcomeActivity$InitRunnable$1;-><init>(Lcn/kuwo/kwmusiccar/WelcomeActivity$InitRunnable;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method
