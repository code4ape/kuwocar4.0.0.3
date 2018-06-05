.class final Lcn/kuwo/mod/lyric/LyricsSendNotice$6;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$6;->a:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    iput-object p2, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$6;->b:Ljava/util/List;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$6;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/ILyricsObserver;

    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$6;->a:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    iget-object v2, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$6;->b:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcn/kuwo/core/observers/ILyricsObserver;->ILyricObserver_SearchList(Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Ljava/util/List;)V

    return-void
.end method
