.class Lcn/kuwo/ui/fragment/OnlineMusicFragment$5;
.super Lcn/kuwo/core/observers/ext/PlayControlObserver;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/OnlineMusicFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/OnlineMusicFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment$5;->this$0:Lcn/kuwo/ui/fragment/OnlineMusicFragment;

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/PlayControlObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public IPlayControlObserver_ChangeCurList()V
    .locals 1

    invoke-super {p0}, Lcn/kuwo/core/observers/ext/PlayControlObserver;->IPlayControlObserver_ChangeCurList()V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment$5;->this$0:Lcn/kuwo/ui/fragment/OnlineMusicFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->access$000(Lcn/kuwo/ui/fragment/OnlineMusicFragment;)V

    return-void
.end method

.method public IPlayControlObserver_Continue()V
    .locals 1

    invoke-super {p0}, Lcn/kuwo/core/observers/ext/PlayControlObserver;->IPlayControlObserver_Continue()V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment$5;->this$0:Lcn/kuwo/ui/fragment/OnlineMusicFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->access$000(Lcn/kuwo/ui/fragment/OnlineMusicFragment;)V

    return-void
.end method

.method public IPlayControlObserver_Pause()V
    .locals 1

    invoke-super {p0}, Lcn/kuwo/core/observers/ext/PlayControlObserver;->IPlayControlObserver_Pause()V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment$5;->this$0:Lcn/kuwo/ui/fragment/OnlineMusicFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->access$000(Lcn/kuwo/ui/fragment/OnlineMusicFragment;)V

    return-void
.end method

.method public IPlayControlObserver_Play(Lcn/kuwo/base/bean/Music;)V
    .locals 1

    invoke-super {p0, p1}, Lcn/kuwo/core/observers/ext/PlayControlObserver;->IPlayControlObserver_Play(Lcn/kuwo/base/bean/Music;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment$5;->this$0:Lcn/kuwo/ui/fragment/OnlineMusicFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->access$000(Lcn/kuwo/ui/fragment/OnlineMusicFragment;)V

    return-void
.end method

.method public IPlayControlObserver_PlayFailed(Lcn/kuwo/service/PlayDelegate$ErrorCode;)V
    .locals 1

    invoke-super {p0, p1}, Lcn/kuwo/core/observers/ext/PlayControlObserver;->IPlayControlObserver_PlayFailed(Lcn/kuwo/service/PlayDelegate$ErrorCode;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment$5;->this$0:Lcn/kuwo/ui/fragment/OnlineMusicFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->access$000(Lcn/kuwo/ui/fragment/OnlineMusicFragment;)V

    return-void
.end method

.method public IPlayControlObserver_PlayStop(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcn/kuwo/core/observers/ext/PlayControlObserver;->IPlayControlObserver_PlayStop(Z)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment$5;->this$0:Lcn/kuwo/ui/fragment/OnlineMusicFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->access$000(Lcn/kuwo/ui/fragment/OnlineMusicFragment;)V

    return-void
.end method

.method public IPlayControlObserver_PreSart(Lcn/kuwo/base/bean/Music;Z)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcn/kuwo/core/observers/ext/PlayControlObserver;->IPlayControlObserver_PreSart(Lcn/kuwo/base/bean/Music;Z)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment$5;->this$0:Lcn/kuwo/ui/fragment/OnlineMusicFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->access$000(Lcn/kuwo/ui/fragment/OnlineMusicFragment;)V

    return-void
.end method

.method public IPlayControlObserver_ReadyPlay(Lcn/kuwo/base/bean/Music;)V
    .locals 1

    invoke-super {p0, p1}, Lcn/kuwo/core/observers/ext/PlayControlObserver;->IPlayControlObserver_ReadyPlay(Lcn/kuwo/base/bean/Music;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment$5;->this$0:Lcn/kuwo/ui/fragment/OnlineMusicFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->access$000(Lcn/kuwo/ui/fragment/OnlineMusicFragment;)V

    return-void
.end method

.method public IPlayControlObserver_RealPlay(Lcn/kuwo/base/bean/Music;)V
    .locals 1

    invoke-super {p0, p1}, Lcn/kuwo/core/observers/ext/PlayControlObserver;->IPlayControlObserver_RealPlay(Lcn/kuwo/base/bean/Music;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment$5;->this$0:Lcn/kuwo/ui/fragment/OnlineMusicFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->access$000(Lcn/kuwo/ui/fragment/OnlineMusicFragment;)V

    return-void
.end method

.method public IPlayControlObserver_WaitForBuffering()V
    .locals 1

    invoke-super {p0}, Lcn/kuwo/core/observers/ext/PlayControlObserver;->IPlayControlObserver_WaitForBuffering()V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment$5;->this$0:Lcn/kuwo/ui/fragment/OnlineMusicFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->access$000(Lcn/kuwo/ui/fragment/OnlineMusicFragment;)V

    return-void
.end method

.method public IPlayControlObserver_WaitForBufferingFinish()V
    .locals 1

    invoke-super {p0}, Lcn/kuwo/core/observers/ext/PlayControlObserver;->IPlayControlObserver_WaitForBufferingFinish()V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/OnlineMusicFragment$5;->this$0:Lcn/kuwo/ui/fragment/OnlineMusicFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/OnlineMusicFragment;->access$000(Lcn/kuwo/ui/fragment/OnlineMusicFragment;)V

    return-void
.end method
