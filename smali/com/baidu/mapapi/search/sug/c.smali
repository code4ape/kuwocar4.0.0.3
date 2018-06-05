.class public Lcom/baidu/mapapi/search/sug/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Lcom/baidu/mapapi/search/sug/SuggestionResult;
    .locals 18

    new-instance v2, Lcom/baidu/mapapi/search/sug/SuggestionResult;

    invoke-direct {v2}, Lcom/baidu/mapapi/search/sug/SuggestionResult;-><init>()V

    if-eqz p0, :cond_0

    const-string v3, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    sget-object v3, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v3, v2, Lcom/baidu/mapapi/search/sug/SuggestionResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "cityname"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "poiname"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const-string v6, "districtname"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "pt"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const-string v8, "poiid"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v9}, Lcom/baidu/mapapi/search/sug/SuggestionResult;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v10, :cond_1

    new-instance v11, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;

    invoke-direct {v11}, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;-><init>()V

    if-eqz v4, :cond_3

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->city:Ljava/lang/String;

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->key:Ljava/lang/String;

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->district:Ljava/lang/String;

    :cond_5
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "x"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    const-string v13, "y"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    new-instance v13, Lcom/baidu/mapapi/model/inner/GeoPoint;

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    invoke-direct/range {v13 .. v17}, Lcom/baidu/mapapi/model/inner/GeoPoint;-><init>(DD)V

    const-string v14, "x"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v14

    double-to-int v14, v14

    int-to-double v14, v14

    invoke-virtual {v13, v14, v15}, Lcom/baidu/mapapi/model/inner/GeoPoint;->setLongitudeE6(D)V

    const-string v14, "y"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v14

    double-to-int v12, v14

    int-to-double v14, v12

    invoke-virtual {v13, v14, v15}, Lcom/baidu/mapapi/model/inner/GeoPoint;->setLatitudeE6(D)V

    invoke-static {v13}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/mapapi/model/inner/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v12

    iput-object v12, v11, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->pt:Lcom/baidu/mapapi/model/LatLng;

    :cond_6
    if-eqz v8, :cond_7

    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->uid:Ljava/lang/String;

    :cond_7
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    sget-object v3, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v3, v2, Lcom/baidu/mapapi/search/sug/SuggestionResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto/16 :goto_0
.end method
