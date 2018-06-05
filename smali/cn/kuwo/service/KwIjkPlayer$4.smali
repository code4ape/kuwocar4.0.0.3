.class Lcn/kuwo/service/KwIjkPlayer$4;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ijkplayer/IMediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcn/kuwo/service/KwIjkPlayer;


# direct methods
.method constructor <init>(Lcn/kuwo/service/KwIjkPlayer;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/KwIjkPlayer$4;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lorg/ijkplayer/IMediaPlayer;II)Z
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$4;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0}, Lcn/kuwo/service/KwIjkPlayer;->a(Lcn/kuwo/service/KwIjkPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: %d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", %d!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$4;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0, v3}, Lcn/kuwo/service/KwIjkPlayer;->e(Lcn/kuwo/service/KwIjkPlayer;I)I

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$4;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0, v3}, Lcn/kuwo/service/KwIjkPlayer;->f(Lcn/kuwo/service/KwIjkPlayer;I)I

    iget-object v0, p0, Lcn/kuwo/service/KwIjkPlayer$4;->a:Lcn/kuwo/service/KwIjkPlayer;

    invoke-static {v0}, Lcn/kuwo/service/KwIjkPlayer;->c(Lcn/kuwo/service/KwIjkPlayer;)Lcn/kuwo/service/IjkPlayerCallback;

    move-result-object v0

    invoke-interface {v0, p3}, Lcn/kuwo/service/IjkPlayerCallback;->onEncounteredError(I)V

    const/4 v0, 0x1

    return v0
.end method
