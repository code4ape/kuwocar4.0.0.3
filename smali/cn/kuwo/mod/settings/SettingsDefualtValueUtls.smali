.class public Lcn/kuwo/mod/settings/SettingsDefualtValueUtls;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcn/kuwo/mod/settings/KwSettingMgr;->a()Lcn/kuwo/mod/settings/KwSettingMgr;

    move-result-object v0

    const-string v2, "setting_listen"

    invoke-virtual {v0, v2, v1}, Lcn/kuwo/mod/settings/KwSettingMgr;->a(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_0

    rem-int/lit8 v0, v0, 0xa

    :cond_0
    if-ltz v0, :cond_1

    const/4 v2, 0x2

    if-le v0, v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method public static b()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcn/kuwo/mod/settings/KwSettingMgr;->a()Lcn/kuwo/mod/settings/KwSettingMgr;

    move-result-object v2

    const-string v3, "setting_downloadWhenListen"

    invoke-virtual {v2, v3, v1}, Lcn/kuwo/mod/settings/KwSettingMgr;->a(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    rem-int/lit8 v2, v2, 0xa

    :cond_0
    if-ltz v2, :cond_1

    if-le v2, v0, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method
