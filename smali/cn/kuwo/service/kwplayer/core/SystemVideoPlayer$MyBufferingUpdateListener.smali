.class Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyBufferingUpdateListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;


# direct methods
.method constructor <init>(Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyBufferingUpdateListener;->this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyBufferingUpdateListener;->this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;

    invoke-static {v0, p2}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->access$002(Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;I)I

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyBufferingUpdateListener;->this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;

    iget-object v0, v0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mOnBufferingUpdateListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnBufferingUpdateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyBufferingUpdateListener;->this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;

    iget-object v0, v0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mOnBufferingUpdateListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnBufferingUpdateListener;

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyBufferingUpdateListener;->this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;

    invoke-interface {v0, v1, p2}, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;I)V

    :cond_0
    return-void
.end method
