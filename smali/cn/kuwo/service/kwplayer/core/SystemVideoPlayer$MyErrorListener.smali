.class Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyErrorListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;


# direct methods
.method constructor <init>(Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyErrorListener;->this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v4, -0x1

    const-string v1, "SystemVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v0, :cond_0

    const/16 v1, -0x3ec

    if-eq p3, v1, :cond_1

    const/high16 v1, -0x80000000

    if-eq p3, v1, :cond_1

    :cond_0
    if-ne p2, v4, :cond_2

    if-nez p3, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyErrorListener;->this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;

    invoke-static {v1, v4}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->access$102(Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;I)I

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyErrorListener;->this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;

    iget-object v2, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyErrorListener;->this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;

    invoke-static {v2}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->access$100(Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->setPlayState(I)V

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyErrorListener;->this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;

    invoke-static {v1, v4}, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->access$202(Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;I)I

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyErrorListener;->this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;

    iget-object v1, v1, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mOnErrorListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnErrorListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyErrorListener;->this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;

    iget-object v1, v1, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;->mOnErrorListener:Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnErrorListener;

    iget-object v2, p0, Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer$MyErrorListener;->this$0:Lcn/kuwo/service/kwplayer/core/SystemVideoPlayer;

    invoke-interface {v1, v2, p2, p3}, Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer$OnErrorListener;->onError(Lcn/kuwo/service/kwplayer/core/BaseVideoPlayer;II)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
