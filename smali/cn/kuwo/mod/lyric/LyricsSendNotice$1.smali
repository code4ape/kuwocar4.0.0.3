.class final Lcn/kuwo/mod/lyric/LyricsSendNotice$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

.field final synthetic b:Lcn/kuwo/mod/lyric/ILyrics;

.field final synthetic c:Lcn/kuwo/mod/lyric/ILyrics;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Lcn/kuwo/mod/lyric/ILyrics;Lcn/kuwo/mod/lyric/ILyrics;Z)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$1;->a:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    iput-object p2, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$1;->b:Lcn/kuwo/mod/lyric/ILyrics;

    iput-object p3, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$1;->c:Lcn/kuwo/mod/lyric/ILyrics;

    iput-boolean p4, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$1;->d:Z

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 5

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->c()Lcn/kuwo/mod/lyric/ILyricsMgr;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$1;->a:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    iget-object v2, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$1;->b:Lcn/kuwo/mod/lyric/ILyrics;

    iget-object v3, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$1;->c:Lcn/kuwo/mod/lyric/ILyrics;

    iget-boolean v4, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$1;->d:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcn/kuwo/mod/lyric/ILyricsMgr;->a(Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Lcn/kuwo/mod/lyric/ILyrics;Lcn/kuwo/mod/lyric/ILyrics;Z)V

    return-void
.end method
