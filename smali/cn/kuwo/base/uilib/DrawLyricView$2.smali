.class Lcn/kuwo/base/uilib/DrawLyricView$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic this$0:Lcn/kuwo/base/uilib/DrawLyricView;


# direct methods
.method constructor <init>(Lcn/kuwo/base/uilib/DrawLyricView;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/uilib/DrawLyricView$2;->this$0:Lcn/kuwo/base/uilib/DrawLyricView;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/base/uilib/DrawLyricView$2;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IMainLayoutObserver;

    iget-object v1, p0, Lcn/kuwo/base/uilib/DrawLyricView$2;->this$0:Lcn/kuwo/base/uilib/DrawLyricView;

    invoke-virtual {v1}, Lcn/kuwo/base/uilib/DrawLyricView;->isDragging()Z

    move-result v1

    invoke-interface {v0, v1}, Lcn/kuwo/core/observers/IMainLayoutObserver;->a(Z)V

    return-void
.end method
