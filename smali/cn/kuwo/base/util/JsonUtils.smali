.class public Lcn/kuwo/base/util/JsonUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static jsonToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 5

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    const-string v0, "{\"result\":\"succ\",\"uid\":\"6508300\",\"sid\":\"1689263805\",\"lev\":\"41\",\"vip_lev\":\"0\",\"vip_type\":\"-1\",\"head\":\"http://img1.kuwo.cn/star/userhead/0/40/1350465710281_6508300s.jpg\",\"nick\":\"yangfan700\",\"dcinfo\":\"mp3-0;ape-0;mkv-0\",\"vip_expire\":\"704\",\"next_avail_date\":\"\",\"mp3\":\"0\",\"ape\":\"0\",\"mkv\":\"0\",\"msg\":\"\u767b\u5f55\u6210\u529f\"}"

    invoke-static {v0}, Lcn/kuwo/base/util/JsonUtils;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "result"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
