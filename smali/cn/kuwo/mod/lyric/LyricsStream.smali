.class public final Lcn/kuwo/mod/lyric/LyricsStream;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcn/kuwo/base/bean/Music;ZLcn/kuwo/base/bean/Music;[I)Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    aput v3, p3, v3

    :cond_0
    if-nez p0, :cond_2

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    :cond_3
    if-eqz p1, :cond_5

    invoke-static {p2}, Lcn/kuwo/base/util/UrlManagerUtils;->getLyricUrl(Lcn/kuwo/base/bean/Music;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcn/kuwo/base/http/HttpSession;

    invoke-direct {v2}, Lcn/kuwo/base/http/HttpSession;-><init>()V

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v4, v5}, Lcn/kuwo/base/http/HttpSession;->a(J)V

    invoke-static {}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a()J

    move-result-wide v4

    invoke-virtual {v2, v0}, Lcn/kuwo/base/http/HttpSession;->get(Ljava/lang/String;)Lcn/kuwo/base/http/HttpResult;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcn/kuwo/base/http/HttpResult;->a()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    invoke-static {v4, v5, v0, v1}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(JLcn/kuwo/base/http/HttpResult;Lcn/kuwo/base/bean/Music;)V

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    aput v0, p3, v3

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcn/kuwo/base/util/UrlManagerUtils;->getLyricUrl(Lcn/kuwo/base/bean/Music;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-static {v4, v5}, Lcn/kuwo/mod/lyric/LyricsSendNotice;->a(J)V

    new-instance v2, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;

    invoke-direct {v2}, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;-><init>()V

    iget-object v0, v0, Lcn/kuwo/base/http/HttpResult;->c:[B

    invoke-virtual {v2, v0}, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->a([B)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v2}, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->e()Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;

    move-result-object v0

    invoke-virtual {v2}, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v2}, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->d()[B

    move-result-object v1

    sget-object v2, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    invoke-static {p0, v1, v2}, Lcn/kuwo/mod/lyric/LyricsStream;->a(Lcn/kuwo/base/bean/Music;[BLcn/kuwo/mod/lyric/LyricsDefine$LyricsType;)V

    :goto_2
    move-object v1, v0

    goto :goto_0

    :cond_7
    iget-object v1, v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;->a:Ljava/lang/String;

    sget-object v2, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    invoke-static {p0, v1, v2}, Lcn/kuwo/mod/lyric/LyricsStream;->a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;)V

    goto :goto_2

    :cond_8
    if-eqz p3, :cond_9

    const/4 v0, 0x3

    aput v0, p3, v3

    :cond_9
    move-object v0, v1

    goto :goto_2
.end method

.method public static a(Lcn/kuwo/base/bean/Music;[I)Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcn/kuwo/mod/lyric/LyricsStream;->a(Lcn/kuwo/base/bean/Music;ZLcn/kuwo/base/bean/Music;[I)Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcn/kuwo/base/bean/Music;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcn/kuwo/base/bean/Music;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->getFullFileNameByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    :cond_2
    move-object v1, v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-wide v2, p0, Lcn/kuwo/base/bean/Music;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcn/kuwo/mod/lyric/LyricsStream;->a(Lcn/kuwo/base/bean/Music;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    if-ne p1, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lrcx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lrc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;)V
    .locals 1

    sget-object v0, Lcn/kuwo/base/cache/CacheCategoryNames;->b:Lcn/kuwo/base/cache/CacheCategoryNames;

    invoke-virtual {v0}, Lcn/kuwo/base/cache/CacheCategoryNames;->b()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcn/kuwo/mod/lyric/LyricsStream;->a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;I)V

    return-void
.end method

.method public static a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;I)V
    .locals 6

    invoke-static {p0, p2}, Lcn/kuwo/mod/lyric/LyricsStream;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v0

    const-string v1, "LYRICS_CACHE"

    sget-object v2, Lcn/kuwo/base/cache/CacheCategoryNames;->b:Lcn/kuwo/base/cache/CacheCategoryNames;

    invoke-virtual {v2}, Lcn/kuwo/base/cache/CacheCategoryNames;->a()I

    move-result v2

    move v3, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcn/kuwo/base/cache/CacheMgr;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcn/kuwo/base/bean/Music;[BLcn/kuwo/mod/lyric/LyricsDefine$LyricsType;)V
    .locals 1

    sget-object v0, Lcn/kuwo/base/cache/CacheCategoryNames;->b:Lcn/kuwo/base/cache/CacheCategoryNames;

    invoke-virtual {v0}, Lcn/kuwo/base/cache/CacheCategoryNames;->b()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcn/kuwo/mod/lyric/LyricsStream;->a(Lcn/kuwo/base/bean/Music;[BLcn/kuwo/mod/lyric/LyricsDefine$LyricsType;I)V

    return-void
.end method

.method public static a(Lcn/kuwo/base/bean/Music;[BLcn/kuwo/mod/lyric/LyricsDefine$LyricsType;I)V
    .locals 6

    invoke-static {p0, p2}, Lcn/kuwo/mod/lyric/LyricsStream;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v0

    const-string v1, "LYRICS_CACHE"

    sget-object v2, Lcn/kuwo/base/cache/CacheCategoryNames;->b:Lcn/kuwo/base/cache/CacheCategoryNames;

    invoke-virtual {v2}, Lcn/kuwo/base/cache/CacheCategoryNames;->a()I

    move-result v2

    move v3, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcn/kuwo/base/cache/CacheMgr;->a(Ljava/lang/String;IILjava/lang/String;[B)V

    goto :goto_0
.end method

.method public static b(Lcn/kuwo/base/bean/Music;)Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;
    .locals 8

    const/4 v0, 0x0

    const/4 v7, 0x1

    invoke-static {p0}, Lcn/kuwo/mod/lyric/LyricsStream;->a(Lcn/kuwo/base/bean/Music;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;

    invoke-direct {v1}, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;->c:Z

    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v3

    const-string v4, "LYRICS_CACHE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".lrcx"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcn/kuwo/base/cache/CacheMgr;->c(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;

    invoke-direct {v4}, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;-><init>()V

    sget-object v5, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    invoke-virtual {v4, v3, v5}, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->a([BLcn/kuwo/mod/lyric/LyricsDefine$LyricsType;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;->a:Ljava/lang/String;

    sget-object v3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    iput-object v3, v1, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;->b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v3

    const-string v4, "LYRICS_CACHE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".lrcx"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcn/kuwo/base/cache/CacheMgr;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean v7, v1, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;->c:Z

    :cond_2
    iget-object v3, v1, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;->a:Ljava/lang/String;

    if-nez v3, :cond_3

    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v3

    const-string v4, "LYRICS_CACHE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".lrc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcn/kuwo/base/cache/CacheMgr;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;->a:Ljava/lang/String;

    sget-object v3, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    iput-object v3, v1, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;->b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    invoke-static {}, Lcn/kuwo/base/cache/CacheMgr;->a()Lcn/kuwo/base/cache/CacheMgr;

    move-result-object v3

    const-string v4, "LYRICS_CACHE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".lrc"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcn/kuwo/base/cache/CacheMgr;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v7, v1, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;->c:Z

    :cond_3
    iget-object v2, v1, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto/16 :goto_0
.end method

.method public static c(Lcn/kuwo/base/bean/Music;)Lcn/kuwo/mod/lyric/LyricsDefine$LyricsListInfo;
    .locals 6

    const/4 v1, 0x0

    new-instance v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsListInfo;

    invoke-direct {v0}, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsListInfo;-><init>()V

    iput-object v1, v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsListInfo;->a:Ljava/util/List;

    const/4 v2, 0x1

    iput v2, v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsListInfo;->b:I

    if-eqz p0, :cond_0

    iget-object v2, p0, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/kuwo/base/bean/Music;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcn/kuwo/base/util/UrlManagerUtils;->getSearchLyricUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcn/kuwo/base/http/HttpSession;

    invoke-direct {v3}, Lcn/kuwo/base/http/HttpSession;-><init>()V

    const-wide/16 v4, 0x3a98

    invoke-virtual {v3, v4, v5}, Lcn/kuwo/base/http/HttpSession;->a(J)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, v2}, Lcn/kuwo/base/http/HttpSession;->get(Ljava/lang/String;)Lcn/kuwo/base/http/HttpResult;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/kuwo/base/http/HttpResult;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;

    invoke-direct {v2}, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;-><init>()V

    iget-object v1, v1, Lcn/kuwo/base/http/HttpResult;->c:[B

    invoke-virtual {v2, v1}, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->b([B)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iput v1, v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsListInfo;->b:I

    invoke-virtual {v2}, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->f()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsListInfo;->a:Ljava/util/List;

    goto :goto_0

    :cond_3
    iget-object v1, v2, Lcn/kuwo/mod/lyric/LyricsProtocolImpl;->a:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    sget-object v2, Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;->c:Lcn/kuwo/mod/lyric/LyricsDefine$ProtocolType;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    iput v1, v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsListInfo;->b:I

    goto :goto_0
.end method

.method public static d(Lcn/kuwo/base/bean/Music;)Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;
    .locals 5

    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    sget-object v0, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    iget-object v1, p0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v1}, Lcn/kuwo/base/util/KwFileUtils;->getFileNameWithoutSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".lrc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/kuwo/base/util/KwFileUtils;->fileRead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "utf8\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    sget-object v1, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;->a:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v2, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;

    invoke-direct {v2}, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;->c:Z

    iput-object v1, v2, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;->a:Ljava/lang/String;

    iput-object v0, v2, Lcn/kuwo/mod/lyric/LyricsDefine$LyricsInfo;->b:Lcn/kuwo/mod/lyric/LyricsDefine$LyricsType;

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcn/kuwo/base/util/KwFileUtils;->getFileCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v1}, Lcn/kuwo/base/util/KwFileUtils;->fileRead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-static {v1, v0}, Lcn/kuwo/base/util/KwFileUtils;->fileRead(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v1, v2

    goto :goto_2
.end method
