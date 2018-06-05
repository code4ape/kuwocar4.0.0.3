.class Lcn/kuwo/service/KwIjkPlayer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ijkplayer/IMediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field final synthetic a:Lcn/kuwo/service/KwIjkPlayer;


# direct methods
.method constructor <init>(Lcn/kuwo/service/KwIjkPlayer;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/KwIjkPlayer$1;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Lorg/ijkplayer/IMediaPlayer;IIII)V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$1;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0}, Lcn/kuwo/service/KwIjkPlayer;->a(Lcn/kuwo/service/KwIjkPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSizeChanged: (%d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x%d)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$1;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-interface {p1}, Lorg/ijkplayer/IMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcn/kuwo/service/KwIjkPlayer;->a(Lcn/kuwo/service/KwIjkPlayer;I)I

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$1;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-interface {p1}, Lorg/ijkplayer/IMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcn/kuwo/service/KwIjkPlayer;->b(Lcn/kuwo/service/KwIjkPlayer;I)I

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$1;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0, p4}, Lcn/kuwo/service/KwIjkPlayer;->c(Lcn/kuwo/service/KwIjkPlayer;I)I

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$1;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0, p5}, Lcn/kuwo/service/KwIjkPlayer;->d(Lcn/kuwo/service/KwIjkPlayer;I)I

    return-void
.end method
