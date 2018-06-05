.class public Lcn/kuwo/mod/audioeffect/EqualizerItem;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final h:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/List;

.field public e:S

.field public f:S

.field public g:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/kuwo/mod/audioeffect/EqualizerItem$1;

    invoke-direct {v0}, Lcn/kuwo/mod/audioeffect/EqualizerItem$1;-><init>()V

    sput-object v0, Lcn/kuwo/mod/audioeffect/EqualizerItem;->h:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcn/kuwo/mod/audioeffect/EqualizerItem;->a:I

    iput-object v1, p0, Lcn/kuwo/mod/audioeffect/EqualizerItem;->b:Ljava/lang/String;

    iput-object v1, p0, Lcn/kuwo/mod/audioeffect/EqualizerItem;->c:Ljava/lang/String;

    iput-object v1, p0, Lcn/kuwo/mod/audioeffect/EqualizerItem;->d:Ljava/util/List;

    iput-short v0, p0, Lcn/kuwo/mod/audioeffect/EqualizerItem;->e:S

    iput-short v0, p0, Lcn/kuwo/mod/audioeffect/EqualizerItem;->f:S

    iput-short v0, p0, Lcn/kuwo/mod/audioeffect/EqualizerItem;->g:S

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcn/kuwo/mod/audioeffect/EqualizerItem;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "eqBands"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    new-instance v1, Lcn/kuwo/mod/audioeffect/EqualizerItem;

    invoke-direct {v1}, Lcn/kuwo/mod/audioeffect/EqualizerItem;-><init>()V

    :try_start_1
    const-string v4, "type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcn/kuwo/mod/audioeffect/EqualizerItem;->a:I

    const-string v4, "showName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcn/kuwo/mod/audioeffect/EqualizerItem;->b:Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcn/kuwo/mod/audioeffect/EqualizerItem;->c:Ljava/lang/String;

    const-string v4, "minLevel"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-short v4, v4

    iput-short v4, v1, Lcn/kuwo/mod/audioeffect/EqualizerItem;->e:S

    const-string v4, "maxLevel"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-short v4, v4

    iput-short v4, v1, Lcn/kuwo/mod/audioeffect/EqualizerItem;->f:S

    const-string v4, "preLevel"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, v1, Lcn/kuwo/mod/audioeffect/EqualizerItem;->g:S
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v1, v3}, Lcn/kuwo/mod/audioeffect/EqualizerItem;->a(Lcn/kuwo/mod/audioeffect/EqualizerItem;Lorg/json/JSONArray;)V

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Lcn/kuwo/mod/audioeffect/EqualizerItem;Lorg/json/JSONArray;)V
    .locals 4

    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/audioeffect/EqualizerItem;->d:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcn/kuwo/mod/audioeffect/EqualizerItem;->a()Lcn/kuwo/mod/audioeffect/EqualizerItem$EQBand;

    move-result-object v2

    const-string v3, "centerFreq"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcn/kuwo/mod/audioeffect/EqualizerItem$EQBand;->a:I

    const-string v3, "level"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v2, Lcn/kuwo/mod/audioeffect/EqualizerItem$EQBand;->b:S

    iget-object v1, p0, Lcn/kuwo/mod/audioeffect/EqualizerItem;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public a()Lcn/kuwo/mod/audioeffect/EqualizerItem$EQBand;
    .locals 1

    new-instance v0, Lcn/kuwo/mod/audioeffect/EqualizerItem$EQBand;

    invoke-direct {v0, p0}, Lcn/kuwo/mod/audioeffect/EqualizerItem$EQBand;-><init>(Lcn/kuwo/mod/audioeffect/EqualizerItem;)V

    return-object v0
.end method

.method protected a(Ljava/lang/StringBuilder;)V
    .locals 5

    const-string v0, "\'type\':"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/kuwo/mod/audioeffect/EqualizerItem;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", \'showName\':\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/audioeffect/EqualizerItem;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", \'name\':\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/audioeffect/EqualizerItem;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", \'minLevel\':"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcn/kuwo/mod/audioeffect/EqualizerItem;->e:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", \'maxLevel\':"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcn/kuwo/mod/audioeffect/EqualizerItem;->f:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", \'preLevel\':"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcn/kuwo/mod/audioeffect/EqualizerItem;->g:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/kuwo/mod/audioeffect/EqualizerItem;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    const-string v1, ", \'eqBands\':["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/kuwo/mod/audioeffect/EqualizerItem;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/audioeffect/EqualizerItem$EQBand;

    if-eqz v1, :cond_0

    const-string v1, "{\'centerFreq\':"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcn/kuwo/mod/audioeffect/EqualizerItem$EQBand;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_1
    const-string v3, ", \'level\':"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-short v0, v0, Lcn/kuwo/mod/audioeffect/EqualizerItem$EQBand;->b:S

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v3, ", {\'centerFreq\':"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcn/kuwo/mod/audioeffect/EqualizerItem$EQBand;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public b()S
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/audioeffect/EqualizerItem;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/audioeffect/EqualizerItem;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-short v0, v0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcn/kuwo/mod/audioeffect/EqualizerItem;->a(Ljava/lang/StringBuilder;)V

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/mod/audioeffect/EqualizerItem;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
