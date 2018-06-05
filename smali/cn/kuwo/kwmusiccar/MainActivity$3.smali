.class Lcn/kuwo/kwmusiccar/MainActivity$3;
.super Lcn/kuwo/core/observers/ext/AppObserver;


# instance fields
.field final synthetic this$0:Lcn/kuwo/kwmusiccar/MainActivity;


# direct methods
.method constructor <init>(Lcn/kuwo/kwmusiccar/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/kwmusiccar/MainActivity$3;->this$0:Lcn/kuwo/kwmusiccar/MainActivity;

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/AppObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public IAppObserver_PrepareExitApp()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity$3;->this$0:Lcn/kuwo/kwmusiccar/MainActivity;

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/MainActivity;->finish()V

    return-void
.end method
