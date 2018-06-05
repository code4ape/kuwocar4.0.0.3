.class public Lcn/kuwo/mod/search/SearchParse;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcn/kuwo/mod/quku/OnlineType;)Lcn/kuwo/base/bean/online/OnlineRootInfo;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/kuwo/mod/quku/OnlineType;->g:Lcn/kuwo/mod/quku/OnlineType;

    if-ne p1, v2, :cond_2

    invoke-static {v1}, Lcn/kuwo/mod/search/SearchParse;->a(Lorg/json/JSONObject;)Lcn/kuwo/base/bean/online/OnlineRootInfo;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v2, Lcn/kuwo/mod/quku/OnlineType;->h:Lcn/kuwo/mod/quku/OnlineType;

    if-ne p1, v2, :cond_3

    invoke-static {v1}, Lcn/kuwo/mod/search/SearchParse;->c(Lorg/json/JSONObject;)Lcn/kuwo/base/bean/online/OnlineRootInfo;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v2, Lcn/kuwo/mod/quku/OnlineType;->i:Lcn/kuwo/mod/quku/OnlineType;

    if-ne p1, v2, :cond_4

    invoke-static {v1}, Lcn/kuwo/mod/search/SearchParse;->d(Lorg/json/JSONObject;)Lcn/kuwo/base/bean/online/OnlineRootInfo;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget-object v2, Lcn/kuwo/mod/quku/OnlineType;->j:Lcn/kuwo/mod/quku/OnlineType;

    if-ne p1, v2, :cond_5

    invoke-static {v1}, Lcn/kuwo/mod/search/SearchParse;->e(Lorg/json/JSONObject;)Lcn/kuwo/base/bean/online/OnlineRootInfo;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget-object v2, Lcn/kuwo/mod/quku/OnlineType;->k:Lcn/kuwo/mod/quku/OnlineType;

    if-ne p1, v2, :cond_0

    invoke-static {v1}, Lcn/kuwo/mod/search/SearchParse;->f(Lorg/json/JSONObject;)Lcn/kuwo/base/bean/online/OnlineRootInfo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;)Lcn/kuwo/base/bean/online/OnlineRootInfo;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "Hit"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcn/kuwo/base/bean/online/OnlineRootInfo;

    invoke-direct {v0}, Lcn/kuwo/base/bean/online/OnlineRootInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "musiclist"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Lcn/kuwo/base/bean/online/OnlineMusic;

    invoke-direct {v4}, Lcn/kuwo/base/bean/online/OnlineMusic;-><init>()V

    const-string v1, "music"

    invoke-virtual {v4, v1}, Lcn/kuwo/base/bean/online/OnlineMusic;->setType(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {v4, v1}, Lcn/kuwo/base/bean/online/OnlineMusic;->setCount(I)V

    invoke-virtual {v4, v2}, Lcn/kuwo/base/bean/online/OnlineMusic;->b(I)V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcn/kuwo/mod/search/SearchParse;->b(Lorg/json/JSONObject;)Lcn/kuwo/base/bean/quku/MusicInfo;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcn/kuwo/base/bean/online/OnlineMusic;->add(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, Lcn/kuwo/base/bean/online/OnlineRootInfo;->add(Lcn/kuwo/base/bean/online/BaseOnlineSection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static a([BLcn/kuwo/mod/quku/OnlineType;)Lcn/kuwo/base/bean/online/OnlineRootInfo;
    .locals 4

    invoke-static {p0}, Lcn/kuwo/mod/search/SearchParse;->a([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ajh.quku.jumpToSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "json: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcn/kuwo/mod/search/SearchParse;->a(Ljava/lang/String;Lcn/kuwo/mod/quku/OnlineType;)Lcn/kuwo/base/bean/online/OnlineRootInfo;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Lcn/kuwo/base/bean/quku/ArtistInfo;
    .locals 5

    new-instance v0, Lcn/kuwo/base/bean/quku/ArtistInfo;

    invoke-direct {v0}, Lcn/kuwo/base/bean/quku/ArtistInfo;-><init>()V

    :try_start_0
    const-string v1, "ARTISTID"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/ArtistInfo;->setId(Ljava/lang/String;)V

    const-string v1, "ARTIST"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&quot;"

    const-string v3, "\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/ArtistInfo;->setName(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PICPATH"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&quot;"

    const-string v4, "\""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/ArtistInfo;->setImageUrl(Ljava/lang/String;)V

    const-string v1, "MUSICCNT"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/ArtistInfo;->e(Ljava/lang/String;)V

    const-string v1, "ALBUMCNT"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/ArtistInfo;->b(Ljava/lang/String;)V

    const-string v1, "MVCNT"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/ArtistInfo;->d(Ljava/lang/String;)V

    const-string v1, "RADIO_ID"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/ArtistInfo;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x4

    :try_start_0
    new-array v1, v1, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    :try_start_1
    invoke-static {p0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {p0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/kuwo/base/util/IOUtils;->parseInteger([BZ)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    const/16 v1, 0x8

    invoke-static {p0, v1, v0}, Lcn/kuwo/mod/search/SearchParse;->a([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a([BII)Ljava/lang/String;
    .locals 8

    const/4 v2, -0x1

    const/4 v0, 0x0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0, p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    new-instance v3, Ljava/util/zip/Inflater;

    invoke-direct {v3}, Ljava/util/zip/Inflater;-><init>()V

    new-instance v4, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v4, v1, v3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x200

    :try_start_0
    new-array v6, v1, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v4, v6}, Ljava/util/zip/InflaterInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    :goto_1
    if-ne v1, v2, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/InflaterInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V

    :try_start_3
    const-string v1, "utf-8"

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    :goto_4
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception v1

    move v1, v2

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_3
.end method

.method private static b(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, -0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    const-string v2, "MUSIC_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    :try_start_0
    const-string v2, "MUSIC_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(Lorg/json/JSONObject;Ljava/lang/String;)Lcn/kuwo/base/bean/quku/AlbumInfo;
    .locals 5

    new-instance v0, Lcn/kuwo/base/bean/quku/AlbumInfo;

    invoke-direct {v0}, Lcn/kuwo/base/bean/quku/AlbumInfo;-><init>()V

    :try_start_0
    const-string v1, "ALBUMID"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AlbumInfo;->setId(Ljava/lang/String;)V

    const-string v1, "ARTISTID"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/kuwo/mod/search/SearchParse;->a(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcn/kuwo/base/bean/quku/AlbumInfo;->a(J)V

    const-string v1, "NAME"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&quot;"

    const-string v3, "\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AlbumInfo;->setName(Ljava/lang/String;)V

    const-string v1, "ARTIST"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&quot;"

    const-string v3, "\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AlbumInfo;->setArtist(Ljava/lang/String;)V

    const-string v1, "RELEASEDATE"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&quot;"

    const-string v3, "\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AlbumInfo;->c(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PIC"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&quot;"

    const-string v4, "\""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AlbumInfo;->setImageUrl(Ljava/lang/String;)V

    const-string v1, "MUSICNUM"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&quot;"

    const-string v3, "\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AlbumInfo;->e(Ljava/lang/String;)V

    const-string v1, "COMPANY"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&quot;"

    const-string v3, "\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AlbumInfo;->b(Ljava/lang/String;)V

    const-string v1, "HOT"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&quot;"

    const-string v3, "\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/AlbumInfo;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static b(Lorg/json/JSONObject;)Lcn/kuwo/base/bean/quku/MusicInfo;
    .locals 4

    new-instance v1, Lcn/kuwo/base/bean/quku/MusicInfo;

    invoke-direct {v1}, Lcn/kuwo/base/bean/quku/MusicInfo;-><init>()V

    :try_start_0
    const-string v0, "MUSICID"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/mod/search/SearchParse;->b(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/kuwo/base/bean/quku/MusicInfo;->a(J)V

    const-string v0, "SONGNAME"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&quot;"

    const-string v3, "\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->setName(Ljava/lang/String;)V

    const-string v0, "ARTIST"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&quot;"

    const-string v3, "\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->setArtist(Ljava/lang/String;)V

    const-string v0, "ALBUM"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&quot;"

    const-string v3, "\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->setAlbum(Ljava/lang/String;)V

    const-string v0, "FORMAT"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&quot;"

    const-string v3, "\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->d(Ljava/lang/String;)V

    const-string v0, "DURATION"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/mod/search/SearchParse;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->setDuration(I)V

    const-string v0, "TAG"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&quot;"

    const-string v3, "\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->a(Ljava/lang/String;)V

    const-string v0, "MVFLAG"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->l(Ljava/lang/String;)V

    const-string v0, "MVQUALITY"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&quot;"

    const-string v3, "\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->m(Ljava/lang/String;)V

    const-string v0, "MINFO"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->n(Ljava/lang/String;)V

    const-string v0, "KMARK"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->b(Ljava/lang/String;)V

    const-string v0, "UPLOADER"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UPLOADER"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->p(Ljava/lang/String;)V

    :cond_0
    const-string v0, "UPTIME"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "UPTIME"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->g(Ljava/lang/String;)V

    :cond_1
    const-string v0, "audio_id"

    const-string v2, "-1"

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "-1"

    :cond_2
    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->r(Ljava/lang/String;)V

    const-string v0, "float_adid"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "-1"

    :cond_3
    invoke-virtual {v1, v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->s(Ljava/lang/String;)V

    :goto_2
    return-object v1

    :cond_4
    const-string v2, "&quot;"

    const-string v3, "\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v2, "&quot;"

    const-string v3, "\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private static c(Lorg/json/JSONObject;)Lcn/kuwo/base/bean/online/OnlineRootInfo;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "Hit"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "artistlist"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v0, Lcn/kuwo/base/bean/online/OnlineRootInfo;

    invoke-direct {v0}, Lcn/kuwo/base/bean/online/OnlineRootInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v4, Lcn/kuwo/base/bean/online/OnlineList;

    invoke-direct {v4}, Lcn/kuwo/base/bean/online/OnlineList;-><init>()V

    const-string v1, "list"

    invoke-virtual {v4, v1}, Lcn/kuwo/base/bean/online/OnlineList;->setType(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {v4, v1}, Lcn/kuwo/base/bean/online/OnlineList;->setCount(I)V

    invoke-virtual {v4, v2}, Lcn/kuwo/base/bean/online/OnlineList;->b(I)V

    const-string v1, "BASEPICPATH"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&quot;"

    const-string v5, "\""

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5, v2}, Lcn/kuwo/mod/search/SearchParse;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcn/kuwo/base/bean/quku/ArtistInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/kuwo/base/bean/online/OnlineList;->add(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, Lcn/kuwo/base/bean/online/OnlineRootInfo;->add(Lcn/kuwo/base/bean/online/BaseOnlineSection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private static c(Lorg/json/JSONObject;Ljava/lang/String;)Lcn/kuwo/base/bean/quku/MvInfo;
    .locals 5

    new-instance v0, Lcn/kuwo/base/bean/quku/MvInfo;

    invoke-direct {v0}, Lcn/kuwo/base/bean/quku/MvInfo;-><init>()V

    :try_start_0
    const-string v1, "MUSICRID"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/kuwo/mod/search/SearchParse;->b(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/kuwo/base/bean/quku/MvInfo;->a(J)V

    const-string v1, "SONGNAME"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&quot;"

    const-string v3, "\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvInfo;->setName(Ljava/lang/String;)V

    const-string v1, "ARTIST"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&quot;"

    const-string v3, "\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvInfo;->setArtist(Ljava/lang/String;)V

    const-string v1, "RELEASEDATE"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&quot;"

    const-string v3, "\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvInfo;->c(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MVPIC"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&quot;"

    const-string v4, "\""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvInfo;->setImageUrl(Ljava/lang/String;)V

    const-string v1, "ALBUM"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&quot;"

    const-string v3, "\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvInfo;->setAlbum(Ljava/lang/String;)V

    const-string v1, "MVQUALITY"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&quot;"

    const-string v3, "\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/MvInfo;->m(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static d(Lorg/json/JSONObject;)Lcn/kuwo/base/bean/online/OnlineRootInfo;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "Hit"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "albumlist"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v0, Lcn/kuwo/base/bean/online/OnlineRootInfo;

    invoke-direct {v0}, Lcn/kuwo/base/bean/online/OnlineRootInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v4, Lcn/kuwo/base/bean/online/OnlineList;

    invoke-direct {v4}, Lcn/kuwo/base/bean/online/OnlineList;-><init>()V

    const-string v1, "list"

    invoke-virtual {v4, v1}, Lcn/kuwo/base/bean/online/OnlineList;->setType(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {v4, v1}, Lcn/kuwo/base/bean/online/OnlineList;->setCount(I)V

    invoke-virtual {v4, v2}, Lcn/kuwo/base/bean/online/OnlineList;->b(I)V

    const-string v1, "BASEPICPATH"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&quot;"

    const-string v5, "\""

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5, v2}, Lcn/kuwo/mod/search/SearchParse;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcn/kuwo/base/bean/quku/AlbumInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/kuwo/base/bean/online/OnlineList;->add(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, Lcn/kuwo/base/bean/online/OnlineRootInfo;->add(Lcn/kuwo/base/bean/online/BaseOnlineSection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private static e(Lorg/json/JSONObject;)Lcn/kuwo/base/bean/online/OnlineRootInfo;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "Hit"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "mvlist"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v0, Lcn/kuwo/base/bean/online/OnlineRootInfo;

    invoke-direct {v0}, Lcn/kuwo/base/bean/online/OnlineRootInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v4, Lcn/kuwo/base/bean/online/OnlineMv;

    invoke-direct {v4}, Lcn/kuwo/base/bean/online/OnlineMv;-><init>()V

    const-string v1, "mv"

    invoke-virtual {v4, v1}, Lcn/kuwo/base/bean/online/OnlineMv;->setType(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {v4, v1}, Lcn/kuwo/base/bean/online/OnlineMv;->setCount(I)V

    invoke-virtual {v4, v2}, Lcn/kuwo/base/bean/online/OnlineMv;->b(I)V

    const-string v1, "BASEPICPATH"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&quot;"

    const-string v5, "\""

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5, v2}, Lcn/kuwo/mod/search/SearchParse;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcn/kuwo/base/bean/quku/MvInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/kuwo/base/bean/online/OnlineMv;->add(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, Lcn/kuwo/base/bean/online/OnlineRootInfo;->add(Lcn/kuwo/base/bean/online/BaseOnlineSection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private static f(Lorg/json/JSONObject;)Lcn/kuwo/base/bean/online/OnlineRootInfo;
    .locals 5

    new-instance v1, Lcn/kuwo/base/bean/online/OnlineRootInfo;

    invoke-direct {v1}, Lcn/kuwo/base/bean/online/OnlineRootInfo;-><init>()V

    new-instance v2, Lcn/kuwo/base/bean/online/OnlineList;

    invoke-direct {v2}, Lcn/kuwo/base/bean/online/OnlineList;-><init>()V

    const-string v0, ""

    invoke-virtual {v2, v0}, Lcn/kuwo/base/bean/online/OnlineList;->b(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "TOTAL"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcn/kuwo/base/bean/online/OnlineList;->b(I)V

    const-string v0, "HIT"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "abslist"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcn/kuwo/mod/search/SearchParse;->g(Lorg/json/JSONObject;)Lcn/kuwo/base/bean/quku/SongListInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v4}, Lcn/kuwo/base/bean/online/OnlineList;->add(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Lcn/kuwo/base/bean/online/OnlineRootInfo;->add(Lcn/kuwo/base/bean/online/BaseOnlineSection;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static g(Lorg/json/JSONObject;)Lcn/kuwo/base/bean/quku/SongListInfo;
    .locals 2

    new-instance v0, Lcn/kuwo/base/bean/quku/SongListInfo;

    invoke-direct {v0}, Lcn/kuwo/base/bean/quku/SongListInfo;-><init>()V

    const-string v1, "pic"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/SongListInfo;->setImageUrl(Ljava/lang/String;)V

    const-string v1, "intro"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/SongListInfo;->a(Ljava/lang/String;)V

    const-string v1, "intro"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/SongListInfo;->b(Ljava/lang/String;)V

    const-string v1, "playlistid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/SongListInfo;->setId(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/SongListInfo;->setName(Ljava/lang/String;)V

    const-string v1, "8"

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/SongListInfo;->d(Ljava/lang/String;)V

    return-object v0
.end method
