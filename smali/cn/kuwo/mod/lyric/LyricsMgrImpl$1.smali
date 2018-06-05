.class Lcn/kuwo/mod/lyric/LyricsMgrImpl$1;
.super Lcn/kuwo/core/observers/ext/PlayControlObserver;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/lyric/LyricsMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/lyric/LyricsMgrImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$1;->a:Lcn/kuwo/mod/lyric/LyricsMgrImpl;

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/PlayControlObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public IPlayControlObserver_ChangeCurList()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$1;->a:Lcn/kuwo/mod/lyric/LyricsMgrImpl;

    invoke-virtual {v0}, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->g()V

    invoke-super {p0}, Lcn/kuwo/core/observers/ext/PlayControlObserver;->IPlayControlObserver_ChangeCurList()V

    return-void
.end method

.method public IPlayControlObserver_Play(Lcn/kuwo/base/bean/Music;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$1;->a:Lcn/kuwo/mod/lyric/LyricsMgrImpl;

    invoke-virtual {v0, p1, v1, v2}, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->a(Lcn/kuwo/base/bean/Music;ZLcn/kuwo/base/bean/Music;)V

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$1;->a:Lcn/kuwo/mod/lyric/LyricsMgrImpl;

    invoke-virtual {v0, p1}, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->b(Lcn/kuwo/base/bean/Music;)V

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$1;->a:Lcn/kuwo/mod/lyric/LyricsMgrImpl;

    invoke-virtual {v0, p1, v1, v2}, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->b(Lcn/kuwo/base/bean/Music;ZLcn/kuwo/base/bean/Music;)V

    return-void
.end method

.method public IPlayControlObserver_ReadyPlay(Lcn/kuwo/base/bean/Music;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$1;->a:Lcn/kuwo/mod/lyric/LyricsMgrImpl;

    invoke-virtual {v0, p1, v1, v2}, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->a(Lcn/kuwo/base/bean/Music;ZLcn/kuwo/base/bean/Music;)V

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$1;->a:Lcn/kuwo/mod/lyric/LyricsMgrImpl;

    invoke-virtual {v0, p1}, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->b(Lcn/kuwo/base/bean/Music;)V

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$1;->a:Lcn/kuwo/mod/lyric/LyricsMgrImpl;

    invoke-virtual {v0, p1, v1, v2}, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->b(Lcn/kuwo/base/bean/Music;ZLcn/kuwo/base/bean/Music;)V

    return-void
.end method
