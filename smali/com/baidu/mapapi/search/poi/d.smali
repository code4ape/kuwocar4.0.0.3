.class Lcom/baidu/mapapi/search/poi/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Lcom/baidu/mapapi/search/poi/PoiResult;
    .locals 7

    new-instance v2, Lcom/baidu/mapapi/search/poi/PoiResult;

    invoke-direct {v2}, Lcom/baidu/mapapi/search/poi/PoiResult;-><init>()V

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v0, v2, Lcom/baidu/mapapi/search/poi/PoiResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "citys"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_2

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v0, v2, Lcom/baidu/mapapi/search/poi/PoiResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    move-object v0, v2

    goto :goto_0

    :cond_2
    new-instance v5, Lcom/baidu/mapapi/search/core/CityInfo;

    invoke-direct {v5}, Lcom/baidu/mapapi/search/core/CityInfo;-><init>()V

    const-string v6, "num"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/baidu/mapapi/search/core/CityInfo;->num:I

    const-string v6, "name"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/baidu/mapapi/search/core/CityInfo;->city:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v2, v4}, Lcom/baidu/mapapi/search/poi/PoiResult;->c(Ljava/util/List;)V

    :cond_4
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->AMBIGUOUS_KEYWORD:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v0, v2, Lcom/baidu/mapapi/search/poi/PoiResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    move-object v0, v2

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v0, v2, Lcom/baidu/mapapi/search/poi/PoiResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    move-object v0, v2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;II)Lcom/baidu/mapapi/search/poi/PoiResult;
    .locals 12

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v5, Lcom/baidu/mapapi/search/poi/PoiResult;

    invoke-direct {v5}, Lcom/baidu/mapapi/search/poi/PoiResult;-><init>()V

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v0, v5, Lcom/baidu/mapapi/search/poi/PoiResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "total"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "count"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v0, v5, Lcom/baidu/mapapi/search/poi/PoiResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    move-object v0, v5

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v0, v5, Lcom/baidu/mapapi/search/poi/PoiResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    move-object v0, v5

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v0}, Lcom/baidu/mapapi/search/poi/PoiResult;->b(I)V

    invoke-virtual {v5, v0}, Lcom/baidu/mapapi/search/poi/PoiResult;->d(I)V

    invoke-virtual {v5, v3}, Lcom/baidu/mapapi/search/poi/PoiResult;->c(I)V

    invoke-virtual {v5, p1}, Lcom/baidu/mapapi/search/poi/PoiResult;->a(I)V

    if-eqz v3, :cond_3

    div-int v3, v0, p2

    rem-int/2addr v0, p2

    if-lez v0, :cond_5

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {v5, v0}, Lcom/baidu/mapapi/search/poi/PoiResult;->b(I)V

    :cond_3
    const-string v0, "current_city"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_4

    const-string v0, "name"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string v3, "pois"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v7, :cond_a

    move v3, v2

    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_a

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    new-instance v10, Lcom/baidu/mapapi/search/core/PoiInfo;

    invoke-direct {v10}, Lcom/baidu/mapapi/search/core/PoiInfo;-><init>()V

    if-nez v9, :cond_6

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    const-string v4, "name"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/baidu/mapapi/search/core/PoiInfo;->name:Ljava/lang/String;

    const-string v4, "addr"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/baidu/mapapi/search/core/PoiInfo;->address:Ljava/lang/String;

    const-string v4, "uid"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/baidu/mapapi/search/core/PoiInfo;->uid:Ljava/lang/String;

    const-string v4, "tel"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/baidu/mapapi/search/core/PoiInfo;->phoneNum:Ljava/lang/String;

    const-string v4, "type"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;->fromInt(I)Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    move-result-object v4

    iput-object v4, v10, Lcom/baidu/mapapi/search/core/PoiInfo;->type:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    const-string v4, "pano"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v1, :cond_9

    move v4, v1

    :goto_4
    iput-boolean v4, v10, Lcom/baidu/mapapi/search/core/PoiInfo;->isPano:Z

    iget-object v4, v10, Lcom/baidu/mapapi/search/core/PoiInfo;->type:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    sget-object v11, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;->BUS_LINE:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    if-eq v4, v11, :cond_7

    iget-object v4, v10, Lcom/baidu/mapapi/search/core/PoiInfo;->type:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    sget-object v11, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;->SUBWAY_LINE:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    if-eq v4, v11, :cond_7

    const-string v4, "geo"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/mapapi/model/CoordUtil;->decodeLocation(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    iput-object v4, v10, Lcom/baidu/mapapi/search/core/PoiInfo;->location:Lcom/baidu/mapapi/model/LatLng;

    :cond_7
    iput-object v0, v10, Lcom/baidu/mapapi/search/core/PoiInfo;->city:Ljava/lang/String;

    const-string v4, "place"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_8

    const-string v11, "src_name"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v11, "cater"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "detail"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iput-boolean v1, v10, Lcom/baidu/mapapi/search/core/PoiInfo;->hasCaterDetails:Z

    :cond_8
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    move v4, v2

    goto :goto_4

    :cond_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {v5, v8}, Lcom/baidu/mapapi/search/poi/PoiResult;->a(Ljava/util/List;)V

    :cond_b
    const-string v0, "addrs"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_d

    :goto_5
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_d

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v6, Lcom/baidu/mapapi/search/poi/PoiAddrInfo;

    invoke-direct {v6}, Lcom/baidu/mapapi/search/poi/PoiAddrInfo;-><init>()V

    if-nez v4, :cond_c

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    const-string v7, "name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/mapapi/search/poi/PoiAddrInfo;->name:Ljava/lang/String;

    const-string v7, "addr"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/mapapi/search/poi/PoiAddrInfo;->address:Ljava/lang/String;

    const-string v7, "geo"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/mapapi/model/CoordUtil;->decodeLocation(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    iput-object v4, v6, Lcom/baidu/mapapi/search/poi/PoiAddrInfo;->location:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {v5, v3}, Lcom/baidu/mapapi/search/poi/PoiResult;->b(Ljava/util/List;)V

    invoke-virtual {v5, v1}, Lcom/baidu/mapapi/search/poi/PoiResult;->a(Z)V

    :cond_e
    move-object v0, v5

    goto/16 :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/baidu/mapapi/search/poi/PoiIndoorResult;
    .locals 12

    new-instance v2, Lcom/baidu/mapapi/search/poi/PoiIndoorResult;

    invoke-direct {v2}, Lcom/baidu/mapapi/search/poi/PoiIndoorResult;-><init>()V

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v0, v2, Lcom/baidu/mapapi/search/poi/PoiIndoorResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "poi_list"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_2

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v0, v2, Lcom/baidu/mapapi/search/poi/PoiIndoorResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    move-object v0, v2

    goto :goto_0

    :cond_2
    new-instance v6, Lcom/baidu/mapapi/search/poi/PoiIndoorInfo;

    invoke-direct {v6}, Lcom/baidu/mapapi/search/poi/PoiIndoorInfo;-><init>()V

    const-string v7, "address"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/mapapi/search/poi/PoiIndoorInfo;->address:Ljava/lang/String;

    const-string v7, "bd_id"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/mapapi/search/poi/PoiIndoorInfo;->bid:Ljava/lang/String;

    const-string v7, "cid"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/baidu/mapapi/search/poi/PoiIndoorInfo;->cid:I

    const-string v7, "discount"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/baidu/mapapi/search/poi/PoiIndoorInfo;->discount:I

    const-string v7, "floor"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/mapapi/search/poi/PoiIndoorInfo;->floor:Ljava/lang/String;

    const-string v7, "name"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/mapapi/search/poi/PoiIndoorInfo;->name:Ljava/lang/String;

    const-string v7, "phone"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/mapapi/search/poi/PoiIndoorInfo;->phone:Ljava/lang/String;

    const-string v7, "price"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    int-to-double v8, v7

    iput-wide v8, v6, Lcom/baidu/mapapi/search/poi/PoiIndoorInfo;->price:D

    const-string v7, "star_level"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/baidu/mapapi/search/poi/PoiIndoorInfo;->starLevel:I

    const-string v7, "tag"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/mapapi/search/poi/PoiIndoorInfo;->tag:Ljava/lang/String;

    const-string v7, "uid"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/baidu/mapapi/search/poi/PoiIndoorInfo;->uid:Ljava/lang/String;

    const-string v7, "tuan_nums"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/baidu/mapapi/search/poi/PoiIndoorInfo;->groupNum:I

    const-string v7, "t_flag"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v6, Lcom/baidu/mapapi/search/poi/PoiIndoorInfo;->isGroup:Z

    const-string v7, "w_flag"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v6, Lcom/baidu/mapapi/search/poi/PoiIndoorInfo;->isTakeOut:Z

    const-string v7, "p_flag"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v6, Lcom/baidu/mapapi/search/poi/PoiIndoorInfo;->isWaited:Z

    new-instance v7, Lcom/baidu/mapapi/model/inner/GeoPoint;

    const-string v8, "pt_y"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-string v10, "pt_x"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/baidu/mapapi/model/inner/GeoPoint;-><init>(DD)V

    invoke-static {v7}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/mapapi/model/inner/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    iput-object v0, v6, Lcom/baidu/mapapi/search/poi/PoiIndoorInfo;->latLng:Lcom/baidu/mapapi/model/LatLng;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_3
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v0, v2, Lcom/baidu/mapapi/search/poi/PoiIndoorResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    invoke-virtual {v2, v5}, Lcom/baidu/mapapi/search/poi/PoiIndoorResult;->setmArrayPoiInfo(Ljava/util/List;)V

    :goto_3
    const-string v0, "page_num"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/baidu/mapapi/search/poi/PoiIndoorResult;->b:I

    const-string v0, "poi_num"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/baidu/mapapi/search/poi/PoiIndoorResult;->a:I

    move-object v0, v2

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v0, v2, Lcom/baidu/mapapi/search/poi/PoiIndoorResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_3
.end method
