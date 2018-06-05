.class Lcn/kuwo/mod/lyric/LyricsSendNotice$4$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/lyric/LyricsSendNotice$4;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/lyric/LyricsSendNotice$4;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$4$1;->a:Lcn/kuwo/mod/lyric/LyricsSendNotice$4;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$4$1;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/ILyricsObserver;

    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$4$1;->a:Lcn/kuwo/mod/lyric/LyricsSendNotice$4;

    iget-object v1, v1, Lcn/kuwo/mod/lyric/LyricsSendNotice$4;->a:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    iget-object v2, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$4$1;->a:Lcn/kuwo/mod/lyric/LyricsSendNotice$4;

    iget-object v2, v2, Lcn/kuwo/mod/lyric/LyricsSendNotice$4;->b:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$4$1;->a:Lcn/kuwo/mod/lyric/LyricsSendNotice$4;

    iget-boolean v3, v3, Lcn/kuwo/mod/lyric/LyricsSendNotice$4;->c:Z

    invoke-interface {v0, v1, v2, v3}, Lcn/kuwo/core/observers/ILyricsObserver;->ILyricObserver_BackgroundPic(Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Landroid/graphics/Bitmap;Z)V

    return-void
.end method
