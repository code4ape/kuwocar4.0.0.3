.class public Lcn/kuwo/base/config/basic/PrefsUtils;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/SharedPreferences;

.field private static b:Landroid/content/SharedPreferences$Editor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    sput-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->b:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 11

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v3, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    if-nez v3, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    sput-object v3, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    :cond_0
    :try_start_0
    sget-object v3, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    :cond_1
    :goto_0
    return p2

    :catch_0
    move-exception v3

    const-string v6, ""

    :try_start_1
    sget-object v3, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    const-string v7, ""

    invoke-interface {v3, p1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v6, v3

    move v7, v0

    move v8, v0

    move v9, v0

    move v10, v0

    move v3, v1

    :goto_1
    if-eqz v10, :cond_2

    :try_start_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_5

    move-result p2

    goto :goto_0

    :catch_1
    move-exception v3

    :try_start_3
    sget-object v3, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    const-wide/16 v8, 0x0

    invoke-interface {v3, p1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-wide v4

    move v3, v1

    move v7, v0

    move v8, v0

    move v9, v0

    move v10, v1

    goto :goto_1

    :catch_2
    move-exception v3

    :try_start_4
    sget-object v3, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    const/4 v7, 0x0

    invoke-interface {v3, p1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v3

    move v7, v0

    move v8, v0

    move v9, v1

    move v10, v1

    goto :goto_1

    :catch_3
    move-exception v3

    :try_start_5
    sget-object v3, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    const/4 v7, 0x0

    invoke-interface {v3, p1, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v2

    move v3, v1

    move v7, v0

    move v8, v1

    move v9, v1

    move v10, v1

    goto :goto_1

    :catch_4
    move-exception v3

    move v3, v1

    move v7, v1

    move v8, v1

    move v9, v1

    move v10, v1

    goto :goto_1

    :cond_2
    if-eqz v9, :cond_3

    long-to-int p2, v4

    goto :goto_0

    :cond_3
    if-eqz v8, :cond_5

    if-eqz v3, :cond_4

    :goto_2
    move p2, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    if-eqz v7, :cond_1

    float-to-int p2, v2

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 10

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    :cond_0
    :try_start_0
    sget-object v2, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    :cond_1
    :goto_0
    return-wide p2

    :catch_0
    move-exception v2

    const-string v3, ""

    :try_start_1
    sget-object v2, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    const-string v5, ""

    invoke-interface {v2, p1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    move-object v3, v2

    move v5, v4

    move v6, v4

    move v7, v4

    move v2, v1

    :goto_1
    if-eqz v7, :cond_2

    :try_start_2
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-wide p2

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_3
    sget-object v2, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    invoke-interface {v2, p1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v2

    move v5, v4

    move v6, v4

    move v7, v1

    goto :goto_1

    :catch_2
    move-exception v2

    :try_start_4
    sget-object v2, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    invoke-interface {v2, p1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v2

    move v5, v4

    move v6, v1

    move v7, v1

    move v8, v1

    move v1, v2

    move v2, v8

    goto :goto_1

    :catch_3
    move-exception v2

    :try_start_5
    sget-object v2, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    invoke-interface {v2, p1, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v0

    move v2, v1

    move v5, v1

    move v6, v1

    move v7, v1

    goto :goto_1

    :catch_4
    move-exception v2

    move v2, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    goto :goto_1

    :cond_2
    if-eqz v6, :cond_3

    int-to-long p2, v2

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_5

    if-eqz v1, :cond_4

    const-wide/16 v0, 0x1

    :goto_2
    move-wide p2, v0

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_1

    float-to-long p2, v0

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/kuwo/base/config/basic/PrefsUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    :cond_0
    :try_start_0
    sget-object v2, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    :try_start_1
    sget-object v2, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    const-wide/16 v8, 0x0

    invoke-interface {v2, p1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    move-wide v4, v2

    move v7, v6

    move v8, v6

    move v2, v1

    move v3, v6

    :goto_1
    if-eqz v8, :cond_1

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    sget-object v2, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    move v3, v6

    move v7, v6

    move v8, v1

    goto :goto_1

    :catch_2
    move-exception v2

    :try_start_3
    sget-object v2, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v2

    move v3, v6

    move v7, v1

    move v8, v1

    move v10, v1

    move v1, v2

    move v2, v10

    goto :goto_1

    :catch_3
    move-exception v2

    :try_start_4
    sget-object v2, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v0

    move v2, v1

    move v3, v6

    move v7, v1

    move v8, v1

    move v6, v1

    goto :goto_1

    :catch_4
    move-exception v2

    move v2, v1

    move v3, v1

    move v6, v1

    move v7, v1

    move v8, v1

    goto :goto_1

    :cond_1
    if-eqz v7, :cond_2

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_4

    if-eqz v1, :cond_3

    const-string v0, "1"

    goto :goto_0

    :cond_3
    const-string v0, "0"

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, v0}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, p2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 11

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v3, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    if-nez v3, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    sput-object v3, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    :cond_0
    :try_start_0
    sget-object v3, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_1
    :goto_0
    return v1

    :catch_0
    move-exception v3

    const-string v6, ""

    :try_start_1
    sget-object v3, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    const-string v7, ""

    invoke-interface {v3, p1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v6, v3

    move v7, v1

    move v8, v1

    move v9, v1

    move v10, v1

    move v3, v0

    :goto_1
    if-eqz v10, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    if-eq v2, v3, :cond_2

    const-string v3, "1"

    if-ne v2, v3, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    move v1, v0

    goto :goto_0

    :catch_1
    move-exception v3

    :try_start_2
    sget-object v3, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    const-wide/16 v8, 0x0

    invoke-interface {v3, p1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v4

    move v3, v0

    move v7, v1

    move v8, v1

    move v9, v1

    move v10, v0

    goto :goto_1

    :catch_2
    move-exception v3

    :try_start_3
    sget-object v3, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    const/4 v7, 0x0

    invoke-interface {v3, p1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v3

    move v7, v1

    move v8, v1

    move v9, v0

    move v10, v0

    goto :goto_1

    :catch_3
    move-exception v3

    :try_start_4
    sget-object v3, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    const/4 v7, 0x0

    invoke-interface {v3, p1, v7}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v2

    move v3, v0

    move v7, v1

    move v8, v0

    move v9, v0

    move v10, v0

    goto :goto_1

    :catch_4
    move-exception v3

    move v3, v0

    move v7, v0

    move v8, v0

    move v9, v0

    move v10, v0

    goto :goto_1

    :cond_4
    if-eqz v9, :cond_5

    const-wide/16 v2, 0x1

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_5
    if-eqz v8, :cond_6

    if-eq v3, v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_6
    if-eqz v7, :cond_7

    float-to-double v2, v2

    const-wide v4, 0x3d06849b86a12b9bL    # 1.0E-14

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_7
    move v1, p2

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    :cond_0
    sget-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->b:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    sget-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->b:Landroid/content/SharedPreferences$Editor;

    :cond_1
    sget-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    sget-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    :cond_0
    sget-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->b:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    sget-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->b:Landroid/content/SharedPreferences$Editor;

    :cond_1
    sget-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    :cond_0
    sget-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->b:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    sget-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->b:Landroid/content/SharedPreferences$Editor;

    :cond_1
    sget-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    :cond_0
    sget-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->b:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    sget-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->b:Landroid/content/SharedPreferences$Editor;

    :cond_1
    sget-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcn/kuwo/base/config/basic/PrefsUtils;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
