.class Lcn/kuwo/mod/lyric/LyricsMgrImpl$3;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/base/bean/Music;

.field final synthetic b:Lcn/kuwo/mod/lyric/LyricsMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/lyric/LyricsMgrImpl;Lcn/kuwo/base/bean/Music;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$3;->b:Lcn/kuwo/mod/lyric/LyricsMgrImpl;

    iput-object p2, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$3;->a:Lcn/kuwo/base/bean/Music;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->isExiting()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$3;->b:Lcn/kuwo/mod/lyric/LyricsMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->a(Lcn/kuwo/mod/lyric/LyricsMgrImpl;)Landroid/graphics/Bitmap;

    new-instance v0, Lcn/kuwo/mod/lyric/KwImage;

    invoke-direct {v0}, Lcn/kuwo/mod/lyric/KwImage;-><init>()V

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/lyric/KwImage;->a(Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;)V

    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$3;->a:Lcn/kuwo/base/bean/Music;

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/lyric/KwImage;->c(Lcn/kuwo/base/bean/Music;)Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$3;->b:Lcn/kuwo/mod/lyric/LyricsMgrImpl;

    iget-object v3, v1, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;->a:[B

    invoke-virtual {v0, v3}, Lcn/kuwo/mod/lyric/KwImage;->a([B)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->a(Lcn/kuwo/mod/lyric/LyricsMgrImpl;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, v1, Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;->a:[B

    :cond_2
    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$3;->b:Lcn/kuwo/mod/lyric/LyricsMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/lyric/LyricsMgrImpl;->a(Lcn/kuwo/mod/lyric/LyricsMgrImpl;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->c:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/lyric/LyricsMgrImpl$3$1;

    invoke-direct {v2, p0}, Lcn/kuwo/mod/lyric/LyricsMgrImpl$3$1;-><init>(Lcn/kuwo/mod/lyric/LyricsMgrImpl$3;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    goto :goto_0
.end method
