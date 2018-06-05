.class Lcn/kuwo/mod/lyric/LyricsMgrImpl$3$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/lyric/LyricsMgrImpl$3;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/lyric/LyricsMgrImpl$3;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$3$1;->a:Lcn/kuwo/mod/lyric/LyricsMgrImpl$3;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$3$1;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/ILyricsObserver;

    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$3$1;->a:Lcn/kuwo/mod/lyric/LyricsMgrImpl$3;

    iget-object v1, v1, Lcn/kuwo/mod/lyric/LyricsMgrImpl$3;->b:Lcn/kuwo/mod/lyric/LyricsMgrImpl;

    invoke-static {v1}, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->a(Lcn/kuwo/mod/lyric/LyricsMgrImpl;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1, v2, v2}, Lcn/kuwo/core/observers/ILyricsObserver;->ILyricObserver_BackgroundPic_Changed(Landroid/graphics/Bitmap;ZZ)V

    return-void
.end method
