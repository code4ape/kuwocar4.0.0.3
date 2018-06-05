.class Lcn/kuwo/kwmusiccar/App$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic this$0:Lcn/kuwo/kwmusiccar/App;


# direct methods
.method constructor <init>(Lcn/kuwo/kwmusiccar/App;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/kwmusiccar/App$2;->this$0:Lcn/kuwo/kwmusiccar/App;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcn/kuwo/kwmusiccar/App;->access$002(Z)Z

    invoke-static {}, Lcn/kuwo/service/MainService;->b()V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/kwmusiccar/App$2$1;

    invoke-direct {v1, p0}, Lcn/kuwo/kwmusiccar/App$2$1;-><init>(Lcn/kuwo/kwmusiccar/App$2;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method
