.class public final Lcn/kuwo/mod/lyric/LyricsRunner;
.super Lcn/kuwo/mod/lyric/LyricsBaseRunner;


# direct methods
.method public constructor <init>(Lcn/kuwo/base/bean/Music;ZLcn/kuwo/base/bean/Music;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/mod/lyric/LyricsBaseRunner;-><init>()V

    iput-object p1, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->b:Lcn/kuwo/base/bean/Music;

    iput-boolean p2, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->d:Z

    iput-object p3, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->c:Lcn/kuwo/base/bean/Music;

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->d:Z

    if-nez v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->b:Lcn/kuwo/base/bean/Music;

    invoke-static {v0}, Lcn/kuwo/mod/lyric/LyricsStream;->b(Lcn/kuwo/base/bean/Music;)Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;

    move-result-object v0

    :cond_0
    iget-boolean v1, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->a:Z

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;->c:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcn/kuwo/mod/lyric/LyricsRunner;->a(Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcn/kuwo/mod/lyric/LyricsRunner;->b(Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;)V

    goto :goto_0
.end method

.method private a(Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;)V
    .locals 11

    if-eqz p1, :cond_4

    iget-object v0, p1, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;->b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    invoke-virtual {v0}, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;

    invoke-direct {v0}, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;-><init>()V

    :goto_0
    iget-object v1, p1, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/kuwo/mod/lyric/ILyricsParser;->a(Ljava/lang/String;)Lcn/kuwo/mod/lyric/ILyrics;

    move-result-object v0

    iget-boolean v1, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->a:Z

    if-eqz v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v0, Lcn/kuwo/mod/lyric/LyricsParserImpl;

    invoke-direct {v0}, Lcn/kuwo/mod/lyric/LyricsParserImpl;-><init>()V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/kuwo/mod/lyric/LyricsRunner;->b(Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcn/kuwo/mod/lyric/LyricsRunner;->b()I

    move-result v1

    invoke-interface {v0, v1}, Lcn/kuwo/mod/lyric/ILyrics;->a(I)Lcn/kuwo/mod/lyric/ILyrics;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->b:Lcn/kuwo/base/bean/Music;

    sget-object v3, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->b:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    iget-boolean v4, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->d:Z

    invoke-static {v2, v3, v0, v1, v4}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Lcn/kuwo/mod/lyric/ILyrics;Lcn/kuwo/mod/lyric/ILyrics;Z)V

    :cond_4
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v0, 0x2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v3, v6

    move v10, v0

    move v0, v1

    move v1, v10

    :goto_2
    if-nez v2, :cond_0

    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->b:Lcn/kuwo/base/bean/Music;

    iget-boolean v6, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->d:Z

    iget-object v7, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->c:Lcn/kuwo/base/bean/Music;

    invoke-static {v1, v6, v7, v3}, Lcn/kuwo/mod/lyric/LyricsStream;->a(Lcn/kuwo/base/bean/Music;ZLcn/kuwo/base/bean/Music;[I)Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x3a98

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    const/4 v0, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    aput v7, v3, v6

    :cond_5
    iget-boolean v6, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->a:Z

    if-nez v6, :cond_0

    move v10, v2

    move-object v2, v1

    move v1, v10

    goto :goto_2
.end method

.method private b()I
    .locals 1

    sget v0, Lcn/kuwo/base/util/DeviceUtils;->WIDTH:I

    if-nez v0, :cond_0

    const/16 v0, 0x3e8

    :goto_0
    return v0

    :cond_0
    sget v0, Lcn/kuwo/base/util/DeviceUtils;->WIDTH:I

    goto :goto_0
.end method

.method private b(Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;)V
    .locals 14

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-array v7, v1, [I

    aput v6, v7, v6

    move v3, v4

    move v0, v6

    move-object v2, p1

    :goto_0
    if-nez v2, :cond_2

    add-int/lit8 v5, v3, -0x1

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    iget-object v2, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->b:Lcn/kuwo/base/bean/Music;

    iget-boolean v3, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->d:Z

    iget-object v10, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->c:Lcn/kuwo/base/bean/Music;

    invoke-static {v2, v3, v10, v7}, Lcn/kuwo/mod/lyric/LyricsStream;->a(Lcn/kuwo/base/bean/Music;ZLcn/kuwo/base/bean/Music;[I)Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    const-wide/16 v12, 0x3a98

    cmp-long v3, v10, v12

    if-lez v3, :cond_0

    aput v4, v7, v6

    move v0, v1

    :cond_0
    iget-boolean v3, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->a:Z

    if-eqz v3, :cond_9

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->d:Z

    if-nez v0, :cond_8

    if-nez v2, :cond_8

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->b:Lcn/kuwo/base/bean/Music;

    invoke-static {v0}, Lcn/kuwo/mod/lyric/LyricsStream;->d(Lcn/kuwo/base/bean/Music;)Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;

    move-result-object v0

    :goto_2
    iget-boolean v2, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->a:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_4

    iget-object v2, v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;->b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    invoke-virtual {v2}, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;

    invoke-direct {v2}, Lcn/kuwo/mod/lyric/VerbatimLyricsParserImpl;-><init>()V

    :goto_3
    iget-object v0, v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;->a:Ljava/lang/String;

    invoke-interface {v2, v0}, Lcn/kuwo/mod/lyric/ILyricsParser;->a(Ljava/lang/String;)Lcn/kuwo/mod/lyric/ILyrics;

    move-result-object v0

    iget-boolean v2, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->a:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcn/kuwo/mod/lyric/LyricsRunner;->b()I

    move-result v1

    invoke-interface {v0, v1}, Lcn/kuwo/mod/lyric/ILyrics;->a(I)Lcn/kuwo/mod/lyric/ILyrics;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->b:Lcn/kuwo/base/bean/Music;

    sget-object v3, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->b:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    iget-boolean v4, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->d:Z

    invoke-static {v2, v3, v0, v1, v4}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Lcn/kuwo/mod/lyric/ILyrics;Lcn/kuwo/mod/lyric/ILyrics;Z)V

    goto :goto_1

    :cond_3
    new-instance v2, Lcn/kuwo/mod/lyric/LyricsParserImpl;

    invoke-direct {v2}, Lcn/kuwo/mod/lyric/LyricsParserImpl;-><init>()V

    goto :goto_3

    :cond_4
    aget v0, v7, v6

    if-nez v0, :cond_5

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->b:Lcn/kuwo/base/bean/Music;

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->c:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    iget-boolean v2, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->d:Z

    invoke-static {v0, v1, v2}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Z)V

    goto :goto_1

    :cond_5
    aget v0, v7, v6

    if-eq v0, v1, :cond_6

    aget v0, v7, v6

    if-ne v0, v4, :cond_7

    :cond_6
    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->b:Lcn/kuwo/base/bean/Music;

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->c:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    iget-boolean v2, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->d:Z

    invoke-static {v0, v1, v2}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Z)V

    goto :goto_1

    :cond_7
    aget v0, v7, v6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->b:Lcn/kuwo/base/bean/Music;

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->d:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    iget-boolean v2, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->d:Z

    invoke-static {v0, v1, v2}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Z)V

    goto :goto_1

    :cond_8
    move-object v0, v2

    goto :goto_2

    :cond_9
    move v3, v5

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v0, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->b:Lcn/kuwo/base/bean/Music;

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->a:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    iget-boolean v2, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->d:Z

    invoke-static {v0, v1, v2}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Z)V

    :cond_0
    iget-boolean v0, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->b:Lcn/kuwo/base/bean/Music;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->b:Lcn/kuwo/base/bean/Music;

    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;->c:Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;

    iget-boolean v2, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->d:Z

    invoke-static {v0, v1, v2}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcn/kuwo/mod/lyric/LyricsRunner;->a:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/kuwo/mod/lyric/LyricsRunner;->a()V

    goto :goto_0
.end method
