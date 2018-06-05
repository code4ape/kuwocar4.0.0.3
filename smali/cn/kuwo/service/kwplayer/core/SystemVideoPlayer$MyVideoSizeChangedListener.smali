.class Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyVideoSizeChangedListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;


# direct methods
.method constructor <init>(Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyVideoSizeChangedListener;->this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyVideoSizeChangedListener;->this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->access$602(Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;I)I

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyVideoSizeChangedListener;->this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->access$702(Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;I)I

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyVideoSizeChangedListener;->this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;

    iget-object v0, v0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mOnVideoSizeChangedListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnVideoSizeChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyVideoSizeChangedListener;->this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;

    iget-object v0, v0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mOnVideoSizeChangedListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnVideoSizeChangedListener;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyVideoSizeChangedListener;->this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;

    invoke-interface {v0, v1, p2, p3}, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;II)V

    :cond_0
    return-void
.end method
