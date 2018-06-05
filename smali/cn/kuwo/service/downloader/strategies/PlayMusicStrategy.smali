.class public Lcn/kuwo/service/downloader/strategies/PlayMusicStrategy;
.super Lcn/kuwo/service/downloader/strategies/MusicStrategyBase;


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/service/downloader/strategies/MusicStrategyBase;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/service/downloader/strategies/PlayMusicStrategy;->a:Z

    return-void
.end method

.method static synthetic a(Lcn/kuwo/service/downloader/strategies/PlayMusicStrategy;I)I
    .locals 0

    iput p1, p0, Lcn/kuwo/service/downloader/strategies/PlayMusicStrategy;->b:I

    return p1
.end method


# virtual methods
.method public a(Lcn/kuwo/service/downloader/FinalDownloadTask;)Z
    .locals 4

    iget-object v0, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownCacheMgr;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    iget-object v1, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/kuwo/service/downloader/DownCacheMgr;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    iget-object v0, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->n:Ljava/lang/String;

    iget-object v1, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/kuwo/service/downloader/DownCacheMgr;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcn/kuwo/service/downloader/strategies/PlayMusicStrategy;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->e:Lcn/kuwo/base/bean/Music;

    iget-object v1, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->k:Ljava/lang/String;

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    iget-object v0, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->e:Lcn/kuwo/base/bean/Music;

    iget-object v1, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->k:Ljava/lang/String;

    invoke-static {v1}, Lcn/kuwo/base/util/KwFileUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/kuwo/base/bean/Music;->s:Ljava/lang/String;

    iget-object v0, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->e:Lcn/kuwo/base/bean/Music;

    iget-object v1, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->k:Ljava/lang/String;

    invoke-static {v1}, Lcn/kuwo/base/util/KwFileUtils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcn/kuwo/base/bean/Music;->t:J

    iget v0, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->j:I

    if-lez v0, :cond_2

    iget-object v0, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->e:Lcn/kuwo/base/bean/Music;

    iget-wide v0, v0, Lcn/kuwo/base/bean/Music;->a:J

    iget v2, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->j:I

    iget-object v3, p1, Lcn/kuwo/service/downloader/FinalDownloadTask;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/service/downloader/DownCacheMgr;->a(JILjava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcn/kuwo/service/downloader/strategies/PlayMusicStrategy;->e(Lcn/kuwo/service/downloader/FinalDownloadTask;)V

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public b(Lcn/kuwo/service/downloader/FinalDownloadTask;)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Lcn/kuwo/service/downloader/strategies/MusicStrategyBase;->b(Lcn/kuwo/service/downloader/FinalDownloadTask;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcn/kuwo/service/downloader/FinalDownloadTask;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const-string v1, "download_when_play_setting_enable"

    invoke-static {}, Lcn/kuwo/mod/settings/SettingsDefualtValueUtls;->b()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/kuwo/service/downloader/strategies/PlayMusicStrategy;->a:Z

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/service/downloader/strategies/PlayMusicStrategy$1;

    invoke-direct {v1, p0, p1}, Lcn/kuwo/service/downloader/strategies/PlayMusicStrategy$1;-><init>(Lcn/kuwo/service/downloader/strategies/PlayMusicStrategy;Lcn/kuwo/service/downloader/FinalDownloadTask;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    iget v0, p0, Lcn/kuwo/service/downloader/strategies/PlayMusicStrategy;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/service/downloader/strategies/PlayMusicStrategy;->a:Z

    :cond_0
    iget-boolean v0, p0, Lcn/kuwo/service/downloader/strategies/PlayMusicStrategy;->a:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcn/kuwo/service/downloader/strategies/DownloadMusicStrategy;->d(Lcn/kuwo/service/downloader/FinalDownloadTask;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lcn/kuwo/service/downloader/strategies/MusicStrategyBase;->c(Lcn/kuwo/service/downloader/FinalDownloadTask;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
