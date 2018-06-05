.class final Lcn/kuwo/mod/lyric/LyricsSendNotice$3;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

.field final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$3;->a:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    iput-object p2, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$3;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->c()Lcn/kuwo/mod/lyric/ILyricsMgr;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$3;->a:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    iget-object v2, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$3;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcn/kuwo/mod/lyric/ILyricsMgr;->a(Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v1

    sget-object v2, Lcn/kuwo/core/messagemgr/MessageID;->c:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v3, Lcn/kuwo/mod/lyric/LyricsSendNotice$3$1;

    invoke-direct {v3, p0}, Lcn/kuwo/mod/lyric/LyricsSendNotice$3$1;-><init>(Lcn/kuwo/mod/lyric/LyricsSendNotice$3;)V

    invoke-virtual {v1, v2, v3}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$3;->a:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    sget-object v2, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->a:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$3;->a:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    sget-object v2, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->d:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    if-ne v1, v2, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsSendNotice$3;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method
