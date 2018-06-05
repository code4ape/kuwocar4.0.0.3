.class public Lcn/kuwo/mod/lyric/LyricsBaseRunner;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public volatile a:Z

.field protected b:Lcn/kuwo/base/bean/Music;

.field protected c:Lcn/kuwo/base/bean/Music;

.field protected d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcn/kuwo/mod/lyric/LyricsBaseRunner;->a:Z

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsBaseRunner;->b:Lcn/kuwo/base/bean/Music;

    iput-object v1, p0, Lcn/kuwo/mod/lyric/LyricsBaseRunner;->c:Lcn/kuwo/base/bean/Music;

    iput-boolean v0, p0, Lcn/kuwo/mod/lyric/LyricsBaseRunner;->d:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method
