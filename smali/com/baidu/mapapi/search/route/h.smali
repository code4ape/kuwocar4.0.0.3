.class public Lcom/baidu/mapapi/search/route/h;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lorg/json/JSONObject;)Lcom/baidu/mapapi/search/route/SuggestAddrInfo;
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;-><init>()V

    const-string v1, "start_sug"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "end_sug"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v1, :cond_0

    const-string v3, "listType"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "cityName"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-ne v3, v5, :cond_2

    const-string v3, "list"

    invoke-static {v1, v3}, Lcom/baidu/mapapi/search/route/h;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->d(Ljava/util/List;)V

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    const-string v1, "listType"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "cityName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-ne v1, v5, :cond_3

    const-string v1, "list"

    invoke-static {v2, v1}, Lcom/baidu/mapapi/search/route/h;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->e(Ljava/util/List;)V

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    if-nez v3, :cond_0

    const-string v3, "list"

    invoke-static {v1, v3, v4}, Lcom/baidu/mapapi/search/route/h;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    if-nez v1, :cond_1

    const-string v1, "list"

    invoke-static {v2, v1, v3}, Lcom/baidu/mapapi/search/route/h;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->b(Ljava/util/List;)V

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Lcom/baidu/mapapi/search/route/TransitRouteResult;
    .locals 15

    const/4 v2, 0x0

    new-instance v3, Lcom/baidu/mapapi/search/route/TransitRouteResult;

    invoke-direct {v3}, Lcom/baidu/mapapi/search/route/TransitRouteResult;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v0, v3, Lcom/baidu/mapapi/search/route/TransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "taxi"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "taxi"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mapapi/search/route/h;->f(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/TaxiInfo;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/baidu/mapapi/search/route/TransitRouteResult;->a(Lcom/baidu/mapapi/search/core/TaxiInfo;)V

    :cond_2
    const-string v1, "start_point"

    invoke-static {v0, v1}, Lcom/baidu/mapapi/search/route/h;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v4

    const-string v1, "end_point"

    invoke-static {v0, v1}, Lcom/baidu/mapapi/search/route/h;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v5

    const-string v1, "routes"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_3
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v0, v3, Lcom/baidu/mapapi/search/route/TransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v1, v3, Lcom/baidu/mapapi/search/route/TransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v3

    goto :goto_0

    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_e

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v8, "legs"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_5
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_6
    new-instance v8, Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-direct {v8}, Lcom/baidu/mapapi/search/route/TransitRouteLine;-><init>()V

    const-string v9, "distance"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->setDistance(I)V

    const-string v9, "time"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->setDuration(I)V

    invoke-virtual {v8, v4}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->setStarting(Lcom/baidu/mapapi/search/core/RouteNode;)V

    invoke-virtual {v8, v5}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->setTerminal(Lcom/baidu/mapapi/search/core/RouteNode;)V

    const-string v9, "steps"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    :goto_3
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v0, v11, :cond_d

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "busline"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-gtz v12, :cond_8

    :cond_7
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    new-instance v12, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;

    invoke-direct {v12}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;-><init>()V

    const-string v13, "start_location"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/baidu/mapapi/model/CoordUtil;->decodeLocation(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v13

    invoke-static {v13}, Lcom/baidu/mapapi/search/core/RouteNode;->location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->a(Lcom/baidu/mapapi/search/core/RouteNode;)V

    const-string v13, "end_location"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/baidu/mapapi/model/CoordUtil;->decodeLocation(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v13

    invoke-static {v13}, Lcom/baidu/mapapi/search/core/RouteNode;->location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->b(Lcom/baidu/mapapi/search/core/RouteNode;)V

    const-string v13, "type"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x5

    if-ne v13, v14, :cond_a

    sget-object v13, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;->WAKLING:Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    invoke-virtual {v12, v13}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->a(Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;)V

    :goto_5
    const-string v13, "instructions"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/baidu/mapapi/search/route/h;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->a(Ljava/lang/String;)V

    const-string v13, "distance"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->setDistance(I)V

    const-string v13, "duration"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->setDuration(I)V

    const-string v13, "path_geo"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->b(Ljava/lang/String;)V

    const-string v13, "vehicle"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    const-string v13, "vehicle"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/baidu/mapapi/search/route/h;->g(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/VehicleInfo;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->a(Lcom/baidu/mapapi/search/core/VehicleInfo;)V

    const-string v13, "vehicle"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v12}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v13

    const-string v14, "start_uid"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/baidu/mapapi/search/core/RouteNode;->setUid(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v13

    const-string v14, "start_name"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/baidu/mapapi/search/core/RouteNode;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v13

    const-string v14, "end_uid"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/baidu/mapapi/search/core/RouteNode;->setUid(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v13

    const-string v14, "end_name"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/baidu/mapapi/search/core/RouteNode;->setTitle(Ljava/lang/String;)V

    const-string v13, "type"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_b

    sget-object v11, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;->SUBWAY:Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    invoke-virtual {v12, v11}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->a(Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;)V

    :cond_9
    :goto_6
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_a
    sget-object v13, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;->WAKLING:Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    invoke-virtual {v12, v13}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->a(Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;)V

    goto/16 :goto_5

    :cond_b
    sget-object v11, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;->BUSLINE:Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    invoke-virtual {v12, v11}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->a(Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;)V

    goto :goto_6

    :cond_c
    sget-object v11, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;->BUSLINE:Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    invoke-virtual {v12, v11}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->a(Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;)V

    goto :goto_6

    :cond_d
    invoke-virtual {v8, v10}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->setSteps(Ljava/util/List;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_e
    invoke-virtual {v3, v7}, Lcom/baidu/mapapi/search/route/TransitRouteResult;->a(Ljava/util/List;)V

    move-object v0, v3

    goto/16 :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

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

    :cond_2
    new-instance v4, Lcom/baidu/mapapi/search/core/CityInfo;

    invoke-direct {v4}, Lcom/baidu/mapapi/search/core/CityInfo;-><init>()V

    const-string v5, "num"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/baidu/mapapi/search/core/CityInfo;->num:I

    const-string v5, "name"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/baidu/mapapi/search/core/CityInfo;->city:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    move-object v0, v2

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

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

    :cond_2
    new-instance v5, Lcom/baidu/mapapi/search/core/PoiInfo;

    invoke-direct {v5}, Lcom/baidu/mapapi/search/core/PoiInfo;-><init>()V

    const-string v6, "name"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v6}, Lcom/baidu/mapapi/search/route/PlanNode;->withCityNameAndPlaceName(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapapi/search/route/PlanNode;

    const-string v6, "addr"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/baidu/mapapi/search/core/PoiInfo;->address:Ljava/lang/String;

    const-string v6, "uid"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/baidu/mapapi/search/core/PoiInfo;->uid:Ljava/lang/String;

    const-string v6, "name"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/baidu/mapapi/search/core/PoiInfo;->name:Ljava/lang/String;

    const-string v6, "geo"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->decodeLocation(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    iput-object v0, v5, Lcom/baidu/mapapi/search/core/PoiInfo;->location:Lcom/baidu/mapapi/model/LatLng;

    iput-object p2, v5, Lcom/baidu/mapapi/search/core/PoiInfo;->city:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    move-object v0, v2

    goto :goto_0

    :cond_4
    move-object v0, v3

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/baidu/mapapi/search/route/DrivingRouteResult;
    .locals 22

    new-instance v5, Lcom/baidu/mapapi/search/route/DrivingRouteResult;

    invoke-direct {v5}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;-><init>()V

    if-eqz p0, :cond_0

    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-object v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v2, v5, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    move-object v2, v5

    :goto_0
    return-object v2

    :cond_1
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "routes"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-nez v9, :cond_2

    move-object v2, v5

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    sget-object v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v2, v5, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    move-object v2, v5

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_f

    new-instance v10, Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-direct {v10}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;-><init>()V

    const-string v2, "start_point"

    invoke-static {v7, v2}, Lcom/baidu/mapapi/search/route/h;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->setStarting(Lcom/baidu/mapapi/search/core/RouteNode;)V

    const-string v2, "end_point"

    invoke-static {v7, v2}, Lcom/baidu/mapapi/search/route/h;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->setTerminal(Lcom/baidu/mapapi/search/core/RouteNode;)V

    const-string v2, "waypoints"

    invoke-static {v7, v2}, Lcom/baidu/mapapi/search/route/h;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->a(Ljava/util/List;)V

    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    const-string v4, "legs"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_4

    move-object v2, v5

    goto :goto_0

    :cond_4
    const-string v4, "distance"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->setDistance(I)V

    const-string v4, "duration"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->setDuration(I)V

    const-string v4, "congestion_length"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->setCongestionDistance(I)V

    const-string v4, "light_num"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v10, v4}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->setLightNum(I)V

    const-string v4, "steps"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    if-nez v11, :cond_5

    move-object v2, v5

    goto/16 :goto_0

    :cond_5
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v4, v2

    :goto_3
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v4, v2, :cond_e

    new-instance v13, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-direct {v13}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;-><init>()V

    invoke-virtual {v11, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    if-nez v14, :cond_6

    :goto_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3

    :cond_6
    const-string v2, "paths"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-nez v6, :cond_7

    move-object v2, v5

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v15, 0x2

    if-lt v2, v15, :cond_b

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v2, v0, :cond_a

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    new-instance v17, Lcom/baidu/mapapi/model/inner/GeoPoint;

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    invoke-direct/range {v17 .. v21}, Lcom/baidu/mapapi/model/inner/GeoPoint;-><init>(DD)V

    const-string v18, "loc_x"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Lcom/baidu/mapapi/model/inner/GeoPoint;->setLongitudeE6(D)V

    const-string v18, "loc_y"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Lcom/baidu/mapapi/model/inner/GeoPoint;->setLatitudeE6(D)V

    if-nez v2, :cond_9

    invoke-static/range {v17 .. v17}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/mapapi/model/inner/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/baidu/mapapi/search/core/RouteNode;->location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->a(Lcom/baidu/mapapi/search/core/RouteNode;)V

    :cond_8
    :goto_6
    invoke-static/range {v17 .. v17}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/mapapi/model/inner/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-ne v2, v0, :cond_8

    invoke-static/range {v17 .. v17}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/mapapi/model/inner/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/baidu/mapapi/search/core/RouteNode;->location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->b(Lcom/baidu/mapapi/search/core/RouteNode;)V

    goto :goto_6

    :cond_a
    invoke-virtual {v13, v15}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->a(Ljava/util/List;)V

    :cond_b
    const-string v2, "traffics"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    if-eqz v15, :cond_d

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_d

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/4 v2, 0x0

    move v6, v2

    :goto_7
    move/from16 v0, v16

    if-ge v6, v0, :cond_c

    invoke-virtual {v15, v6}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v17, v6

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_7

    :cond_c
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->a([I)V

    :cond_d
    const-string v2, "direction"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x1e

    invoke-virtual {v13, v2}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->a(I)V

    const-string v2, "distance"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->setDistance(I)V

    const-string v2, "duration"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->setDuration(I)V

    const-string v2, "description"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->c(Ljava/lang/String;)V

    const-string v2, "start_desc"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->a(Ljava/lang/String;)V

    const-string v2, "end_desc"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->b(Ljava/lang/String;)V

    const-string v2, "turn"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->b(I)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_e
    invoke-virtual {v10, v12}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->setSteps(Ljava/util/List;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_f
    invoke-virtual {v5, v8}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->a(Ljava/util/List;)V

    const-string v2, "taxis"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mapapi/search/route/h;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->setTaxiInfos(Ljava/util/List;)V

    move-object v2, v5

    goto/16 :goto_0
.end method

.method public static b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

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

    :cond_2
    new-instance v4, Lcom/baidu/mapapi/search/core/CityInfo;

    invoke-direct {v4}, Lcom/baidu/mapapi/search/core/CityInfo;-><init>()V

    const-string v5, "number"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/baidu/mapapi/search/core/CityInfo;->num:I

    const-string v5, "name"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/baidu/mapapi/search/core/CityInfo;->city:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    move-object v0, v2

    goto :goto_0
.end method

.method private static b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 10

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_2

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    new-instance v5, Lcom/baidu/mapapi/search/core/PoiInfo;

    invoke-direct {v5}, Lcom/baidu/mapapi/search/core/PoiInfo;-><init>()V

    const-string v6, "address"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "address"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/baidu/mapapi/search/core/PoiInfo;->address:Ljava/lang/String;

    :cond_3
    const-string v6, "uid"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/baidu/mapapi/search/core/PoiInfo;->uid:Ljava/lang/String;

    const-string v6, "name"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/baidu/mapapi/search/core/PoiInfo;->name:Ljava/lang/String;

    const-string v6, "lat"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-string v8, "lng"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    iput-object v0, v5, Lcom/baidu/mapapi/search/core/PoiInfo;->location:Lcom/baidu/mapapi/model/LatLng;

    iput-object p2, v5, Lcom/baidu/mapapi/search/core/PoiInfo;->city:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    move-object v0, v2

    goto :goto_0

    :cond_5
    move-object v0, v3

    goto :goto_0
.end method

.method private static c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/baidu/mapapi/search/core/RouteNode;
    .locals 3

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v0, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/core/RouteNode;-><init>()V

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/search/core/RouteNode;->setTitle(Ljava/lang/String;)V

    const-string v2, "uid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/search/core/RouteNode;->setUid(Ljava/lang/String;)V

    const-string v2, "geo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mapapi/model/CoordUtil;->decodeLocation(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/core/RouteNode;->setLocation(Lcom/baidu/mapapi/model/LatLng;)V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Lcom/baidu/mapapi/search/route/WalkingRouteResult;
    .locals 8

    new-instance v1, Lcom/baidu/mapapi/search/route/WalkingRouteResult;

    invoke-direct {v1}, Lcom/baidu/mapapi/search/route/WalkingRouteResult;-><init>()V

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v0, v1, Lcom/baidu/mapapi/search/route/WalkingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "taxi"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "taxi"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mapapi/search/route/h;->f(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/TaxiInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/route/WalkingRouteResult;->a(Lcom/baidu/mapapi/search/core/TaxiInfo;)V

    :cond_2
    new-instance v2, Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-direct {v2}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;-><init>()V

    const-string v3, "start_point"

    invoke-static {v0, v3}, Lcom/baidu/mapapi/search/route/h;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->setStarting(Lcom/baidu/mapapi/search/core/RouteNode;)V

    const-string v3, "end_point"

    invoke-static {v0, v3}, Lcom/baidu/mapapi/search/route/h;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->setTerminal(Lcom/baidu/mapapi/search/core/RouteNode;)V

    const-string v3, "routes"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v0, v1, Lcom/baidu/mapapi/search/route/WalkingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    move-object v0, v1

    goto :goto_0

    :cond_3
    const-string v3, "legs"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    const-string v3, "distance"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->setDistance(I)V

    const-string v3, "duration"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->setDuration(I)V

    const-string v3, "steps"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_6

    new-instance v5, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;

    invoke-direct {v5}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;-><init>()V

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_5

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const-string v7, "direction"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x1e

    invoke-virtual {v5, v7}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->a(I)V

    const-string v7, "distance"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->setDistance(I)V

    const-string v7, "duration"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->setDuration(I)V

    const-string v7, "start_loc"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/mapapi/model/CoordUtil;->decodeLocation(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/mapapi/search/core/RouteNode;->location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->a(Lcom/baidu/mapapi/search/core/RouteNode;)V

    const-string v7, "end_loc"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/mapapi/model/CoordUtil;->decodeLocation(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/mapapi/search/core/RouteNode;->location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->b(Lcom/baidu/mapapi/search/core/RouteNode;)V

    const-string v7, "description"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->d(Ljava/lang/String;)V

    const-string v7, "start_desc"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->b(Ljava/lang/String;)V

    const-string v7, "end_desc"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->c(Ljava/lang/String;)V

    const-string v7, "path"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->a(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {v2, v4}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->setSteps(Ljava/util/List;)V

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/search/route/WalkingRouteResult;->a(Ljava/util/List;)V

    move-object v0, v1

    goto/16 :goto_0
.end method

.method private static d(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/baidu/mapapi/search/core/RouteNode;
    .locals 8

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v0, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/core/RouteNode;-><init>()V

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/search/core/RouteNode;->setTitle(Ljava/lang/String;)V

    const-string v2, "uid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/search/core/RouteNode;->setUid(Ljava/lang/String;)V

    new-instance v2, Lcom/baidu/mapapi/model/LatLng;

    const-string v3, "lat"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v3, "lng"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/search/core/RouteNode;->setLocation(Lcom/baidu/mapapi/model/LatLng;)V

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Lcom/baidu/mapapi/search/route/BikingRouteResult;
    .locals 20

    new-instance v3, Lcom/baidu/mapapi/search/route/BikingRouteResult;

    invoke-direct {v3}, Lcom/baidu/mapapi/search/route/BikingRouteResult;-><init>()V

    if-eqz p0, :cond_0

    const-string v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-object v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v2, v3, Lcom/baidu/mapapi/search/route/BikingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    move-object v2, v3

    :goto_0
    return-object v2

    :cond_1
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "type"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    invoke-static {v5}, Lcom/baidu/mapapi/search/route/h;->a(Lorg/json/JSONObject;)Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/baidu/mapapi/search/route/BikingRouteResult;->a(Lcom/baidu/mapapi/search/route/SuggestAddrInfo;)V

    sget-object v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->AMBIGUOUS_ROURE_ADDR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v2, v3, Lcom/baidu/mapapi/search/route/BikingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    :goto_1
    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    sget-object v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v2, v3, Lcom/baidu/mapapi/search/route/BikingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    move-object v2, v3

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    if-ne v2, v4, :cond_9

    const-string v2, "routes"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_8

    new-instance v8, Lcom/baidu/mapapi/search/route/BikingRouteLine;

    invoke-direct {v8}, Lcom/baidu/mapapi/search/route/BikingRouteLine;-><init>()V

    :try_start_1
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v9, "start"

    invoke-static {v5, v9}, Lcom/baidu/mapapi/search/route/h;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/baidu/mapapi/search/route/BikingRouteLine;->setStarting(Lcom/baidu/mapapi/search/core/RouteNode;)V

    const-string v9, "end"

    invoke-static {v5, v9}, Lcom/baidu/mapapi/search/route/h;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/baidu/mapapi/search/route/BikingRouteLine;->setTerminal(Lcom/baidu/mapapi/search/core/RouteNode;)V

    if-nez v4, :cond_3

    move-object v2, v3

    goto :goto_0

    :cond_3
    const-string v9, "distance"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/baidu/mapapi/search/route/BikingRouteLine;->setDistance(I)V

    const-string v9, "duration"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/baidu/mapapi/search/route/BikingRouteLine;->setDuration(I)V

    const-string v9, "steps"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-eqz v9, :cond_7

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v4, v11, :cond_6

    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    new-instance v12, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;

    invoke-direct {v12}, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;-><init>()V

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I

    move-result v13

    if-gtz v13, :cond_5

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    const-string v13, "direction"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    mul-int/lit8 v13, v13, 0x1e

    invoke-virtual {v12, v13}, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->a(I)V

    const-string v13, "distance"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->setDistance(I)V

    const-string v13, "duration"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->setDuration(I)V

    const-string v13, "start_pt"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "end_pt"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    new-instance v15, Lcom/baidu/mapapi/model/LatLng;

    const-string v16, "lat"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v16

    const-string v18, "lng"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v18

    invoke-direct/range {v15 .. v19}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    invoke-static {v15}, Lcom/baidu/mapapi/search/core/RouteNode;->location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->a(Lcom/baidu/mapapi/search/core/RouteNode;)V

    new-instance v13, Lcom/baidu/mapapi/model/LatLng;

    const-string v15, "lat"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v16

    const-string v15, "lng"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v14

    move-wide/from16 v0, v16

    invoke-direct {v13, v0, v1, v14, v15}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    invoke-static {v13}, Lcom/baidu/mapapi/search/core/RouteNode;->location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->b(Lcom/baidu/mapapi/search/core/RouteNode;)V

    const-string v13, "instructions"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->d(Ljava/lang/String;)V

    const-string v13, "start_instructions"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->b(Ljava/lang/String;)V

    const-string v13, "end_instructions"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->c(Ljava/lang/String;)V

    const-string v13, "path"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->a(Ljava/lang/String;)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :catch_1
    move-exception v4

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_6
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    invoke-virtual {v8, v10}, Lcom/baidu/mapapi/search/route/BikingRouteLine;->setSteps(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    invoke-virtual {v3, v7}, Lcom/baidu/mapapi/search/route/BikingRouteResult;->a(Ljava/util/List;)V

    move-object v2, v3

    goto/16 :goto_0

    :cond_9
    sget-object v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v2, v3, Lcom/baidu/mapapi/search/route/BikingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto/16 :goto_1
.end method

.method private static e(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/baidu/mapapi/search/core/RouteNode;
    .locals 6

    const-wide/16 v4, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v0, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/core/RouteNode;-><init>()V

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/search/core/RouteNode;->setTitle(Ljava/lang/String;)V

    new-instance v2, Lcom/baidu/mapapi/model/inner/GeoPoint;

    invoke-direct {v2, v4, v5, v4, v5}, Lcom/baidu/mapapi/model/inner/GeoPoint;-><init>(DD)V

    const-string v3, "loc_x"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    int-to-double v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/baidu/mapapi/model/inner/GeoPoint;->setLongitudeE6(D)V

    const-string v3, "loc_y"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    int-to-double v4, v1

    invoke-virtual {v2, v4, v5}, Lcom/baidu/mapapi/model/inner/GeoPoint;->setLatitudeE6(D)V

    invoke-static {v2}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/mapapi/model/inner/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/core/RouteNode;->setLocation(Lcom/baidu/mapapi/model/LatLng;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/baidu/mapapi/search/core/TaxiInfo;

    invoke-direct {v4}, Lcom/baidu/mapapi/search/core/TaxiInfo;-><init>()V

    const-string v5, "total_price"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setTotalPrice(F)V

    :goto_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v4, v3}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setTotalPrice(F)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public static f(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/TaxiInfo;
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v1, :cond_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/baidu/mapapi/search/core/TaxiInfo;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/core/TaxiInfo;-><init>()V

    const-string v2, "remark"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setDesc(Ljava/lang/String;)V

    const-string v2, "distance"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setDistance(I)V

    const-string v2, "duration"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setDuration(I)V

    const-string v2, "total_price"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "start_price"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "km_price"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_1

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    invoke-virtual {v0, v5}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setTotalPrice(F)V

    :goto_2
    if-eqz v2, :cond_2

    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    invoke-virtual {v0, v5}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setStartPrice(F)V

    :goto_3
    if-eqz v1, :cond_3

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    invoke-virtual {v0, v5}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setPerKMPrice(F)V

    goto :goto_1

    :cond_4
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setTotalPrice(F)V

    goto :goto_2

    :cond_5
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setStartPrice(F)V

    goto :goto_3

    :cond_6
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setPerKMPrice(F)V

    goto :goto_1
.end method

.method private static f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    new-instance v3, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-direct {v3}, Lcom/baidu/mapapi/search/core/RouteNode;-><init>()V

    :try_start_0
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/search/core/RouteNode;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "uid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/search/core/RouteNode;->setUid(Ljava/lang/String;)V

    new-instance v4, Lcom/baidu/mapapi/model/inner/GeoPoint;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/baidu/mapapi/model/inner/GeoPoint;-><init>(DD)V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "loc_x"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-double v6, v5

    invoke-virtual {v4, v6, v7}, Lcom/baidu/mapapi/model/inner/GeoPoint;->setLongitudeE6(D)V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "loc_y"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-double v6, v5

    invoke-virtual {v4, v6, v7}, Lcom/baidu/mapapi/model/inner/GeoPoint;->setLatitudeE6(D)V

    invoke-static {v4}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/mapapi/model/inner/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/search/core/RouteNode;->setLocation(Lcom/baidu/mapapi/model/LatLng;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public static g(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/VehicleInfo;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v1, :cond_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/baidu/mapapi/search/core/VehicleInfo;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/core/VehicleInfo;-><init>()V

    const-string v2, "zone_price"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/search/core/VehicleInfo;->setZonePrice(I)V

    const-string v2, "total_price"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/search/core/VehicleInfo;->setTotalPrice(I)V

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/search/core/VehicleInfo;->setTitle(Ljava/lang/String;)V

    const-string v2, "stop_num"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/search/core/VehicleInfo;->setPassStationNum(I)V

    const-string v2, "uid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/core/VehicleInfo;->setUid(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static h(Ljava/lang/String;)Lcom/baidu/mapapi/search/route/SuggestAddrInfo;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "address_info"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v1, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    invoke-direct {v1}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;-><init>()V

    const-string v4, "st_cityname"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "en_cityname"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "hasAddrList"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "startcitys"

    invoke-static {v2, v5}, Lcom/baidu/mapapi/search/route/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->d(Ljava/util/List;)V

    const-string v5, "startpoints"

    invoke-static {v2, v5, v4}, Lcom/baidu/mapapi/search/route/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->a(Ljava/util/List;)V

    const-string v4, "endcitys"

    invoke-static {v2, v4}, Lcom/baidu/mapapi/search/route/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->e(Ljava/util/List;)V

    const-string v4, "endpoints"

    invoke-static {v2, v4, v3}, Lcom/baidu/mapapi/search/route/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->b(Ljava/util/List;)V

    const-string v3, "waypoints_result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_6

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "waypointcitys"

    invoke-static {v6, v7}, Lcom/baidu/mapapi/search/route/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v7, "waypoints"

    const-string v8, ""

    invoke-static {v6, v7, v8}, Lcom/baidu/mapapi/search/route/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {v1, v4}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->f(Ljava/util/List;)V

    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    invoke-virtual {v1, v5}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->c(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v0, v1

    move v2, v1

    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_4

    aget-char v5, v4, v0

    const/16 v6, 0x3c

    if-ne v5, v6, :cond_2

    const/4 v2, 0x1

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    aget-char v5, v4, v0

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    if-nez v2, :cond_1

    aget-char v5, v4, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
