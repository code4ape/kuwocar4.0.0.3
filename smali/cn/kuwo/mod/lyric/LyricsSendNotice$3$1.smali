.class Lcn/kuwo/mod/lyric/LyricsSendNotice$3$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/lyric/LyricsSendNotice$3;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/lyric/LyricsSendNotice$3;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$3$1;->a:Lcn/kuwo/mod/lyric/LyricsSendNotice$3;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$3$1;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/ILyricsObserver;

    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$3$1;->a:Lcn/kuwo/mod/lyric/LyricsSendNotice$3;

    iget-object v1, v1, Lcn/kuwo/mod/lyric/LyricsSendNotice$3;->a:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    iget-object v2, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$3$1;->a:Lcn/kuwo/mod/lyric/LyricsSendNotice$3;

    iget-object v2, v2, Lcn/kuwo/mod/lyric/LyricsSendNotice$3;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcn/kuwo/core/observers/ILyricsObserver;->ILyricObserver_HeadPic(Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Landroid/graphics/Bitmap;)V

    return-void
.end method
