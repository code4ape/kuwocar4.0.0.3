.class Lcn/kuwo/ui/fragment/SearchFragment$6;
.super Lcn/kuwo/core/observers/ext/AppObserver;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/SearchFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/SearchFragment$6;->this$0:Lcn/kuwo/ui/fragment/SearchFragment;

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/AppObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public IAppObserver_NetworkStateChanged(ZZ)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcn/kuwo/core/observers/ext/AppObserver;->IAppObserver_NetworkStateChanged(ZZ)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment$6;->this$0:Lcn/kuwo/ui/fragment/SearchFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/SearchFragment;->access$500(Lcn/kuwo/ui/fragment/SearchFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment$6;->this$0:Lcn/kuwo/ui/fragment/SearchFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/SearchFragment;->access$500(Lcn/kuwo/ui/fragment/SearchFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/SearchFragment$6;->this$0:Lcn/kuwo/ui/fragment/SearchFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/SearchFragment;->access$300(Lcn/kuwo/ui/fragment/SearchFragment;)V

    :cond_1
    return-void
.end method
