.class Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyCompletionListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;


# direct methods
.method constructor <init>(Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyCompletionListener;->this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    const/4 v2, 0x5

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyCompletionListener;->this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;

    invoke-static {v0, v2}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->access$102(Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;I)I

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyCompletionListener;->this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyCompletionListener;->this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;

    invoke-static {v1}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->access$100(Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->setPlayState(I)V

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyCompletionListener;->this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;

    invoke-static {v0, v2}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->access$202(Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;I)I

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyCompletionListener;->this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;

    iget-object v0, v0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mOnCompletionListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyCompletionListener;->this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;

    iget-object v0, v0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mOnCompletionListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnCompletionListener;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyCompletionListener;->this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;

    invoke-interface {v0, v1}, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnCompletionListener;->onCompletion(Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;)V

    :cond_0
    return-void
.end method
