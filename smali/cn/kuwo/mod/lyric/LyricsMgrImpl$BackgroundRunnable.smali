.class Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lcn/kuwo/mod/lyric/KwImage;

.field final synthetic b:Lcn/kuwo/mod/lyric/LyricsMgrImpl;

.field private c:Lcn/kuwo/base/bean/Music;

.field private d:I

.field private e:Z


# direct methods
.method constructor <init>(Lcn/kuwo/mod/lyric/LyricsMgrImpl;)V
    .locals 1

    iput-object p1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;->b:Lcn/kuwo/mod/lyric/LyricsMgrImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/kuwo/mod/lyric/KwImage;

    invoke-direct {v0}, Lcn/kuwo/mod/lyric/KwImage;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;->a:Lcn/kuwo/mod/lyric/KwImage;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;->e:Z

    return-void
.end method


# virtual methods
.method public a()Lcn/kuwo/base/bean/Music;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;->c:Lcn/kuwo/base/bean/Music;

    return-object v0
.end method

.method public a(Lcn/kuwo/base/bean/Music;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;->c:Lcn/kuwo/base/bean/Music;

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;->e:Z

    return v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;->a:Lcn/kuwo/mod/lyric/KwImage;

    invoke-virtual {v0}, Lcn/kuwo/mod/lyric/KwImage;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;->e:Z

    return-void
.end method

.method public run()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "ajh.lrc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8fd8\u5dee"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5f20\u5927\u56fe"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;->e:Z

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;->a:Lcn/kuwo/mod/lyric/KwImage;

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-virtual {v0, v1}, Lcn/kuwo/mod/lyric/KwImage;->a(Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;)V

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;->a:Lcn/kuwo/mod/lyric/KwImage;

    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;->c:Lcn/kuwo/base/bean/Music;

    const/4 v2, 0x0

    iget v3, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;->d:I

    invoke-virtual {v0, v1, v4, v2, v3}, Lcn/kuwo/mod/lyric/KwImage;->a(Lcn/kuwo/base/bean/Music;ZLcn/kuwo/base/bean/Music;I)Lcn/kuwo/mod/lyric/LyricsDefine$BitmapInfo;

    iput-boolean v4, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;->e:Z

    return-void
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/mod/lyric/LyricsMgrImpl$BackgroundRunnable;->d:I

    return-void
.end method
