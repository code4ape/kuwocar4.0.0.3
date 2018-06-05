.class Lcn/kuwo/mod/lyric/LyricsMgrImpl$2;
.super Lcn/kuwo/core/observers/ext/AppObserver;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/lyric/LyricsMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/lyric/LyricsMgrImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$2;->a:Lcn/kuwo/mod/lyric/LyricsMgrImpl;

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/AppObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public IAppObserver_PrepareExitApp()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$2;->a:Lcn/kuwo/mod/lyric/LyricsMgrImpl;

    invoke-virtual {v0}, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->g()V

    invoke-super {p0}, Lcn/kuwo/core/observers/ext/AppObserver;->IAppObserver_PrepareExitApp()V

    return-void
.end method
