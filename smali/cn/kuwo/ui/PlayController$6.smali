.class Lcn/kuwo/ui/PlayController$6;
.super Lcn/kuwo/core/observers/ext/PlayControlObserver;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/PlayController;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/PlayController;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/PlayController$6;->this$0:Lcn/kuwo/ui/PlayController;

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/PlayControlObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public IPlayControlObserver_ReadyPlay(Lcn/kuwo/base/bean/Music;)V
    .locals 0

    invoke-super {p0, p1}, Lcn/kuwo/core/observers/ext/PlayControlObserver;->IPlayControlObserver_ReadyPlay(Lcn/kuwo/base/bean/Music;)V

    return-void
.end method
