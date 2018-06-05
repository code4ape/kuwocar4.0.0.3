.class final Lcn/kuwo/base/config/basic/SettingSection$SettingItem;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcn/kuwo/base/config/basic/SettingSection;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcn/kuwo/base/config/basic/SettingSection;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/kuwo/base/config/basic/SettingSection$SettingItem;->a:Lcn/kuwo/base/config/basic/SettingSection;

    iput-object p2, p0, Lcn/kuwo/base/config/basic/SettingSection$SettingItem;->b:Ljava/lang/String;

    iput-object v0, p0, Lcn/kuwo/base/config/basic/SettingSection$SettingItem;->c:Ljava/lang/String;

    iput-object v0, p0, Lcn/kuwo/base/config/basic/SettingSection$SettingItem;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcn/kuwo/base/config/basic/SettingSection;Ljava/lang/String;Lcn/kuwo/base/config/basic/SettingSection$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/kuwo/base/config/basic/SettingSection$SettingItem;-><init>(Lcn/kuwo/base/config/basic/SettingSection;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/config/basic/SettingSection$SettingItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/config/basic/SettingSection$SettingItem;->c:Ljava/lang/String;

    return-void
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/config/basic/SettingSection$SettingItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/config/basic/SettingSection$SettingItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/config/basic/SettingSection$SettingItem;->d:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/base/config/basic/SettingSection$SettingItem;->b:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcn/kuwo/base/config/basic/SettingSection$SettingItem;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/kuwo/base/config/basic/SettingSection$SettingItem;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/config/basic/SettingSection$SettingItem;->d:Ljava/lang/String;

    const-string v2, "\\n|\\r\\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/base/config/basic/SettingSection$SettingItem;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  =  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/kuwo/base/config/basic/SettingSection$SettingItem;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/base/config/basic/SettingSection$SettingItem;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
