.class Lcn/kuwo/service/KwIjkPlayer$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ijkplayer/IMediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcn/kuwo/service/KwIjkPlayer;


# direct methods
.method constructor <init>(Lcn/kuwo/service/KwIjkPlayer;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/KwIjkPlayer$2;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lorg/ijkplayer/IMediaPlayer;)V
    .locals 3

    const/4 v2, 0x3

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$2;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0}, Lcn/kuwo/service/KwIjkPlayer;->a(Lcn/kuwo/service/KwIjkPlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$2;->a:Lcn/kuwo/service/KwIjkPlayer;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/kuwo/service/KwIjkPlayer;->e(Lcn/kuwo/service/KwIjkPlayer;I)I

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$2;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0, v2}, Lcn/kuwo/service/KwIjkPlayer;->f(Lcn/kuwo/service/KwIjkPlayer;I)I

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$2;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-interface {p1}, Lorg/ijkplayer/IMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcn/kuwo/service/KwIjkPlayer;->a(Lcn/kuwo/service/KwIjkPlayer;I)I

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$2;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-interface {p1}, Lorg/ijkplayer/IMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcn/kuwo/service/KwIjkPlayer;->b(Lcn/kuwo/service/KwIjkPlayer;I)I

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$2;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0}, Lcn/kuwo/service/KwIjkPlayer;->b(Lcn/kuwo/service/KwIjkPlayer;)I

    move-result v0

    if-ne v0, v2, :cond_0

    :cond_0
    return-void
.end method
