.class public Lcn/kuwo/base/util/SearchHistoryUtils;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_NUM:I = 0x4

.field private static final settingSaveKey:Ljava/lang/String; = "search_history"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/lang/String;)V
    .locals 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "search_history"

    invoke-static {v0}, Lcn/kuwo/base/util/SettingsUtils;->getStringSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, ""

    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v3, v5}, Lcn/kuwo/base/crypt/Base64Coder;->a([BI)[C

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v0, v5

    add-int/lit8 v0, v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    move v0, v1

    :goto_1
    array-length v3, v6

    if-ge v0, v3, :cond_3

    const/4 v3, 0x0

    aput-object v3, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    aput-object v4, v6, v1

    array-length v7, v5

    move v3, v1

    move v0, v2

    :goto_2
    if-ge v3, v7, :cond_5

    aget-object v8, v5, v3

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    aput-object v8, v6, v0

    add-int/lit8 v0, v0, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v0, v6, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v2

    :goto_3
    array-length v1, v6

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_7

    aget-object v1, v6, v0

    if-eqz v1, :cond_6

    aget-object v1, v6, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v1, v6, v0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    const-string v0, "search_history"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/util/SettingsUtils;->setStringSettings(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static clean()V
    .locals 2

    const-string v0, "search_history"

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/kuwo/base/util/SettingsUtils;->setStringSettings(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getHistoryList()Ljava/util/List;
    .locals 5

    const-string v0, "search_history"

    invoke-static {v0}, Lcn/kuwo/base/util/SettingsUtils;->getStringSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    new-instance v3, Ljava/lang/String;

    aget-object v4, v2, v0

    invoke-static {v4}, Lcn/kuwo/base/crypt/Base64Coder;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "search_history"

    invoke-static {v0}, Lcn/kuwo/base/util/SettingsUtils;->getStringSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, ""

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v3, v4}, Lcn/kuwo/base/crypt/Base64Coder;->a([BI)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v3, :cond_5

    move v0, v1

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_5

    aget-object v5, v3, v0

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v1, :cond_3

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const-string v0, "search_history"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/kuwo/base/util/SettingsUtils;->setStringSettings(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
