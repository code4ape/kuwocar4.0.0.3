.class public final Lcn/kuwo/mod/lyric/LyricsSendNotice;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .locals 8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {}, Lcn/kuwo/base/log/ServiceLevelToLog;->a()Lcn/kuwo/base/log/ServiceLevelToLog;

    move-result-object v1

    sget-object v0, Lcn/kuwo/base/log/LogDef$LogType;->C:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v0}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    sget-wide v4, Lcn/kuwo/base/log/ServiceLevelToLog;->f:J

    invoke-virtual/range {v1 .. v7}, Lcn/kuwo/base/log/ServiceLevelToLog;->a(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-wide v6
.end method

.method public static a(Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;)J
    .locals 8

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-virtual {p0, v0}, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/kuwo/base/log/ServiceLevelToLog;->a()Lcn/kuwo/base/log/ServiceLevelToLog;

    move-result-object v1

    sget-object v0, Lcn/kuwo/base/log/LogDef$LogType;->A:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v0}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v2

    sget-wide v4, Lcn/kuwo/base/log/ServiceLevelToLog;->h:J

    invoke-virtual/range {v1 .. v7}, Lcn/kuwo/base/log/ServiceLevelToLog;->a(Ljava/lang/String;Ljava/lang/String;JJ)V

    :cond_0
    :goto_0
    return-wide v6

    :cond_1
    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-virtual {p0, v0}, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/base/log/ServiceLevelToLog;->a()Lcn/kuwo/base/log/ServiceLevelToLog;

    move-result-object v1

    sget-object v0, Lcn/kuwo/base/log/LogDef$LogType;->y:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v0}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v2

    sget-wide v4, Lcn/kuwo/base/log/ServiceLevelToLog;->g:J

    invoke-virtual/range {v1 .. v7}, Lcn/kuwo/base/log/ServiceLevelToLog;->a(Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_0
.end method

.method public static a(J)V
    .locals 2

    invoke-static {}, Lcn/kuwo/base/log/ServiceLevelToLog;->a()Lcn/kuwo/base/log/ServiceLevelToLog;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/log/LogDef$LogType;->C:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v1}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lcn/kuwo/base/log/ServiceLevelToLog;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public static a(JLcn/kuwo/base/http/HttpResult;Lcn/kuwo/base/bean/Music;)V
    .locals 4

    if-nez p2, :cond_0

    sget-object v0, Lcn/kuwo/base/log/LogDef$LogType;->C:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v0}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/log/ServiceLevelLogger;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_0
    invoke-static {}, Lcn/kuwo/base/log/ServiceLevelToLog;->a()Lcn/kuwo/base/log/ServiceLevelToLog;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/log/LogDef$LogType;->C:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v1}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lcn/kuwo/base/log/ServiceLevelToLog;->b(Ljava/lang/String;J)V

    return-void

    :cond_0
    sget-object v0, Lcn/kuwo/base/log/LogDef$LogType;->C:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v0}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcn/kuwo/base/log/ServiceLevelLogger;->a(Ljava/lang/String;Lcn/kuwo/base/http/HttpResult;Lcn/kuwo/base/bean/Music;)Z

    goto :goto_0
.end method

.method public static a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/mod/lyric/LyricsSendNotice$3;

    invoke-direct {v1, p1, p2}, Lcn/kuwo/mod/lyric/LyricsSendNotice$3;-><init>(Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method

.method public static a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Landroid/graphics/Bitmap;Z)V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/mod/lyric/LyricsSendNotice$4;

    invoke-direct {v1, p1, p2, p3}, Lcn/kuwo/mod/lyric/LyricsSendNotice$4;-><init>(Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method

.method public static a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Lcn/kuwo/mod/lyric/ILyrics;Lcn/kuwo/mod/lyric/ILyrics;Z)V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/mod/lyric/LyricsSendNotice$1;

    invoke-direct {v1, p1, p2, p3, p4}, Lcn/kuwo/mod/lyric/LyricsSendNotice$1;-><init>(Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Lcn/kuwo/mod/lyric/ILyrics;Lcn/kuwo/mod/lyric/ILyrics;Z)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->c:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/lyric/LyricsSendNotice$2;

    invoke-direct {v2, p1, p2, p3, p4}, Lcn/kuwo/mod/lyric/LyricsSendNotice$2;-><init>(Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Lcn/kuwo/mod/lyric/ILyrics;Lcn/kuwo/mod/lyric/ILyrics;Z)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method

.method public static a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Ljava/util/List;)V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/mod/lyric/LyricsSendNotice$5;

    invoke-direct {v1}, Lcn/kuwo/mod/lyric/LyricsSendNotice$5;-><init>()V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->c:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/mod/lyric/LyricsSendNotice$6;

    invoke-direct {v2, p1, p2}, Lcn/kuwo/mod/lyric/LyricsSendNotice$6;-><init>(Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    return-void
.end method

.method public static a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, p2}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Lcn/kuwo/mod/lyric/ILyrics;Lcn/kuwo/mod/lyric/ILyrics;Z)V

    return-void
.end method

.method public static a(Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;J)V
    .locals 3

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-virtual {p0, v0}, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/kuwo/base/log/ServiceLevelToLog;->a()Lcn/kuwo/base/log/ServiceLevelToLog;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/log/LogDef$LogType;->A:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v1}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcn/kuwo/base/log/ServiceLevelToLog;->a(Ljava/lang/String;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-virtual {p0, v0}, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/base/log/ServiceLevelToLog;->a()Lcn/kuwo/base/log/ServiceLevelToLog;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/log/LogDef$LogType;->y:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v1}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcn/kuwo/base/log/ServiceLevelToLog;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public static a(Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;JLcn/kuwo/base/http/HttpResult;Lcn/kuwo/base/bean/Music;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x6

    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-virtual {p0, v0}, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p3, :cond_1

    sget-object v0, Lcn/kuwo/base/log/LogDef$LogType;->A:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v0}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v1}, Lcn/kuwo/base/log/ServiceLevelLogger;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_0
    invoke-static {}, Lcn/kuwo/base/log/ServiceLevelToLog;->a()Lcn/kuwo/base/log/ServiceLevelToLog;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/log/LogDef$LogType;->A:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v1}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcn/kuwo/base/log/ServiceLevelToLog;->b(Ljava/lang/String;J)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v0, Lcn/kuwo/base/log/LogDef$LogType;->A:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v0}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3, p4}, Lcn/kuwo/base/log/ServiceLevelLogger;->a(Ljava/lang/String;Lcn/kuwo/base/http/HttpResult;Lcn/kuwo/base/bean/Music;)Z

    goto :goto_0

    :cond_2
    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;

    invoke-virtual {p0, v0}, Lcn/kuwo/mod/lyric/LyricsDefine$ImageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_3

    sget-object v0, Lcn/kuwo/base/log/LogDef$LogType;->y:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v0}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v1}, Lcn/kuwo/base/log/ServiceLevelLogger;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_2
    invoke-static {}, Lcn/kuwo/base/log/ServiceLevelToLog;->a()Lcn/kuwo/base/log/ServiceLevelToLog;

    move-result-object v0

    sget-object v1, Lcn/kuwo/base/log/LogDef$LogType;->y:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v1}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcn/kuwo/base/log/ServiceLevelToLog;->b(Ljava/lang/String;J)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcn/kuwo/base/log/LogDef$LogType;->y:Lcn/kuwo/base/log/LogDef$LogType;

    invoke-virtual {v0}, Lcn/kuwo/base/log/LogDef$LogType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3, p4}, Lcn/kuwo/base/log/ServiceLevelLogger;->a(Ljava/lang/String;Lcn/kuwo/base/http/HttpResult;Lcn/kuwo/base/bean/Music;)Z

    goto :goto_2
.end method

.method public static b(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Ljava/util/List;)V

    return-void
.end method

.method public static b(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Landroid/graphics/Bitmap;Z)V

    return-void
.end method
