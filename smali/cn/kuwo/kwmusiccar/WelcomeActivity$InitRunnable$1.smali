.class Lcn/kuwo/kwmusiccar/WelcomeActivity$InitRunnable$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic this$0:Lcn/kuwo/kwmusiccar/WelcomeActivity$InitRunnable;


# direct methods
.method constructor <init>(Lcn/kuwo/kwmusiccar/WelcomeActivity$InitRunnable;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity$InitRunnable$1;->this$0:Lcn/kuwo/kwmusiccar/WelcomeActivity$InitRunnable;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcn/kuwo/kwmusiccar/App;->initModMgr(Z)V

    invoke-static {}, Lcn/kuwo/service/MainService;->a()V

    return-void
.end method
