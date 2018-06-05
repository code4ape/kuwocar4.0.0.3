.class Lcn/kuwo/base/util/KwLocationClient$1$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic this$1:Lcn/kuwo/base/util/KwLocationClient$1;

.field final synthetic val$currentLocation:Lcn/kuwo/base/util/KwLocationClient$KwLocation;

.field final synthetic val$lastLocation:Lcn/kuwo/base/util/KwLocationClient$KwLocation;


# direct methods
.method constructor <init>(Lcn/kuwo/base/util/KwLocationClient$1;Lcn/kuwo/base/util/KwLocationClient$KwLocation;Lcn/kuwo/base/util/KwLocationClient$KwLocation;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/util/KwLocationClient$1$1;->this$1:Lcn/kuwo/base/util/KwLocationClient$1;

    iput-object p2, p0, Lcn/kuwo/base/util/KwLocationClient$1$1;->val$currentLocation:Lcn/kuwo/base/util/KwLocationClient$KwLocation;

    iput-object p3, p0, Lcn/kuwo/base/util/KwLocationClient$1$1;->val$lastLocation:Lcn/kuwo/base/util/KwLocationClient$KwLocation;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/base/util/KwLocationClient$1$1;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/ILocationObserver;

    iget-object v1, p0, Lcn/kuwo/base/util/KwLocationClient$1$1;->val$currentLocation:Lcn/kuwo/base/util/KwLocationClient$KwLocation;

    iget-object v2, p0, Lcn/kuwo/base/util/KwLocationClient$1$1;->val$lastLocation:Lcn/kuwo/base/util/KwLocationClient$KwLocation;

    invoke-interface {v0, v1, v2}, Lcn/kuwo/core/observers/ILocationObserver;->a(Lcn/kuwo/base/util/KwLocationClient$KwLocation;Lcn/kuwo/base/util/KwLocationClient$KwLocation;)V

    return-void
.end method
