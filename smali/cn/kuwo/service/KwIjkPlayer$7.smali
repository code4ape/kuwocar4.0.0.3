.class Lcn/kuwo/service/KwIjkPlayer$7;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ijkplayer/IMediaPlayer$OnSeekCompleteListener;


# instance fields
.field final synthetic a:Lcn/kuwo/service/KwIjkPlayer;


# direct methods
.method constructor <init>(Lcn/kuwo/service/KwIjkPlayer;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/KwIjkPlayer$7;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Lorg/ijkplayer/IMediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$7;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0}, Lcn/kuwo/service/KwIjkPlayer;->a(Lcn/kuwo/service/KwIjkPlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSeekComplete"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$7;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0}, Lcn/kuwo/service/KwIjkPlayer;->c(Lcn/kuwo/service/KwIjkPlayer;)Lcn/kuwo/service/IjkPlayerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/service/IjkPlayerCallback;->onSeekComplete()V

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$7;->a:Lcn/kuwo/service/KwIjkPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/kuwo/service/KwIjkPlayer;->a(Lcn/kuwo/service/KwIjkPlayer;Z)Z

    return-void
.end method
