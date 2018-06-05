.class public Lcn/kuwo/mod/quku/SimilarSongParser;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcn/kuwo/base/bean/online/OnlineRootInfo;
    .locals 10

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcn/kuwo/base/bean/online/OnlineRootInfo;

    invoke-direct {v1}, Lcn/kuwo/base/bean/online/OnlineRootInfo;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "zone"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcn/kuwo/base/bean/online/OnlineList;

    invoke-direct {v3}, Lcn/kuwo/base/bean/online/OnlineList;-><init>()V

    const-string v6, "\u4e13\u533a"

    invoke-virtual {v3, v6}, Lcn/kuwo/base/bean/online/OnlineList;->b(Ljava/lang/String;)V

    new-instance v6, Lcn/kuwo/base/bean/quku/TemplateAreaInfo;

    invoke-direct {v6}, Lcn/kuwo/base/bean/quku/TemplateAreaInfo;-><init>()V

    const-string v7, "sourceid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/kuwo/base/bean/quku/TemplateAreaInfo;->setId(Ljava/lang/String;)V

    const-string v7, "name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/kuwo/base/bean/quku/TemplateAreaInfo;->setName(Ljava/lang/String;)V

    const-string v7, "pic"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/kuwo/base/bean/quku/TemplateAreaInfo;->setImageUrl(Ljava/lang/String;)V

    const-string v7, "disname"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/kuwo/base/bean/quku/TemplateAreaInfo;->j(Ljava/lang/String;)V

    const-string v7, "digest"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcn/kuwo/base/bean/quku/TemplateAreaInfo;->d(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcn/kuwo/base/bean/online/OnlineList;->add(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V

    invoke-virtual {v1, v3}, Lcn/kuwo/base/bean/online/OnlineRootInfo;->add(Lcn/kuwo/base/bean/online/BaseOnlineSection;)V

    :cond_1
    const-string v3, "playlist"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_3

    new-instance v6, Lcn/kuwo/base/bean/online/OnlineList;

    invoke-direct {v6}, Lcn/kuwo/base/bean/online/OnlineList;-><init>()V

    const-string v3, "\u76f8\u4f3c\u6b4c\u5355"

    invoke-virtual {v6, v3}, Lcn/kuwo/base/bean/online/OnlineList;->b(Ljava/lang/String;)V

    move v3, v2

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_2

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    new-instance v8, Lcn/kuwo/base/bean/quku/SongListInfo;

    invoke-direct {v8}, Lcn/kuwo/base/bean/quku/SongListInfo;-><init>()V

    const-string v9, "sourceid"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcn/kuwo/base/bean/quku/SongListInfo;->setId(Ljava/lang/String;)V

    const-string v9, "name"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcn/kuwo/base/bean/quku/SongListInfo;->setName(Ljava/lang/String;)V

    const-string v9, "pic"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcn/kuwo/base/bean/quku/SongListInfo;->setImageUrl(Ljava/lang/String;)V

    const-string v9, "disname"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcn/kuwo/base/bean/quku/SongListInfo;->b(Ljava/lang/String;)V

    const-string v9, "info"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcn/kuwo/base/bean/quku/SongListInfo;->a(Ljava/lang/String;)V

    const-string v9, "digest"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcn/kuwo/base/bean/quku/SongListInfo;->d(Ljava/lang/String;)V

    const-string v9, "extend"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcn/kuwo/base/bean/quku/SongListInfo;->i(Ljava/lang/String;)V

    const-string v9, "isnew"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcn/kuwo/base/bean/quku/SongListInfo;->k(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Lcn/kuwo/base/bean/online/OnlineList;->add(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v6}, Lcn/kuwo/base/bean/online/OnlineRootInfo;->add(Lcn/kuwo/base/bean/online/BaseOnlineSection;)V

    :cond_3
    const-string v3, "music"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_5

    new-instance v4, Lcn/kuwo/base/bean/online/OnlineMusic;

    invoke-direct {v4}, Lcn/kuwo/base/bean/online/OnlineMusic;-><init>()V

    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    new-instance v6, Lcn/kuwo/base/bean/quku/MusicInfo;

    invoke-direct {v6}, Lcn/kuwo/base/bean/quku/MusicInfo;-><init>()V

    const-string v7, "musicrid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Lcn/kuwo/base/bean/quku/MusicInfo;->a(J)V

    const-string v7, "name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/kuwo/base/bean/quku/MusicInfo;->setName(Ljava/lang/String;)V

    const-string v7, "artist"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/kuwo/base/bean/quku/MusicInfo;->setArtist(Ljava/lang/String;)V

    const-string v7, "artist"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/kuwo/base/bean/quku/MusicInfo;->setAlbum(Ljava/lang/String;)V

    const-string v7, "kmark"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/kuwo/base/bean/quku/MusicInfo;->b(Ljava/lang/String;)V

    const-string v7, "online"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    const-string v7, "duration"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcn/kuwo/base/bean/quku/MusicInfo;->setDuration(I)V

    const-string v7, "formats"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/kuwo/base/bean/quku/MusicInfo;->d(Ljava/lang/String;)V

    const-string v7, "hasmv"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/kuwo/base/bean/quku/MusicInfo;->l(Ljava/lang/String;)V

    const-string v7, "minfo"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcn/kuwo/base/bean/quku/MusicInfo;->n(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcn/kuwo/base/bean/online/OnlineMusic;->add(Lcn/kuwo/base/bean/quku/BaseQukuItem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v4}, Lcn/kuwo/base/bean/online/OnlineRootInfo;->add(Lcn/kuwo/base/bean/online/BaseOnlineSection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method
