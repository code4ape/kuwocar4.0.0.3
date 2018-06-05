.class Lcn/kuwo/mod/skin/SkinMgr$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/skin/SkinMgr;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/skin/SkinMgr;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/skin/SkinMgr$1;->a:Lcn/kuwo/mod/skin/SkinMgr;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/skin/SkinMgr$1;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/ISkinManagerObserver;

    invoke-interface {v0}, Lcn/kuwo/core/observers/ISkinManagerObserver;->ISkinManagerOb_ChangeSkin()V

    return-void
.end method
