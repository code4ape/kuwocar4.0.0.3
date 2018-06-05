.class public Lcn/kuwo/base/config/basic/SettingSection;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcn/kuwo/base/config/basic/BaseConfig;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcn/kuwo/base/config/basic/BaseConfig;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/base/config/basic/SettingSection;->c:Ljava/util/Map;

    iput-object p1, p0, Lcn/kuwo/base/config/basic/SettingSection;->a:Lcn/kuwo/base/config/basic/BaseConfig;

    iput-object p2, p0, Lcn/kuwo/base/config/basic/SettingSection;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/config/basic/SettingSection;->c:Ljava/util/Map;

    return-object v0
.end method

.method public add(Ljava/lang/String;)Lcn/kuwo/base/config/basic/SettingSection$SettingItem;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/kuwo/base/config/basic/SettingSection;->c:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/base/config/basic/SettingSection;->c:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/config/basic/SettingSection$SettingItem;

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/base/config/basic/SettingSection$SettingItem;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lcn/kuwo/base/config/basic/SettingSection$SettingItem;-><init>(Lcn/kuwo/base/config/basic/SettingSection;Ljava/lang/String;Lcn/kuwo/base/config/basic/SettingSection$1;)V

    iget-object v1, p0, Lcn/kuwo/base/config/basic/SettingSection;->c:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/config/basic/SettingSection;->c:Ljava/util/Map;

    move-object v0, v1

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/config/basic/SettingSection;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/config/basic/SettingSection;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lcn/kuwo/base/config/basic/SettingSection$SettingItem;
    .locals 2

    iget-object v0, p0, Lcn/kuwo/base/config/basic/SettingSection;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/config/basic/SettingSection;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/config/basic/SettingSection;->c:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/config/basic/SettingSection$SettingItem;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/config/basic/SettingSection;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/base/config/basic/SettingSection;->b:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcn/kuwo/base/config/basic/SettingSection;->b:Ljava/lang/String;

    goto :goto_0
.end method
