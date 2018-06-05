.class public Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/mod/audioeffect/IAudioEffectMgr;


# static fields
.field private static c:I


# instance fields
.field private a:Ljava/util/List;

.field private b:Lcn/kuwo/mod/audioeffect/EqualizerItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->a:Ljava/util/List;

    iput-object v0, p0, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->b:Lcn/kuwo/mod/audioeffect/EqualizerItem;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "equalizer5"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    :try_start_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Lcn/kuwo/mod/audioeffect/EqualizerItem;

    invoke-direct {v4}, Lcn/kuwo/mod/audioeffect/EqualizerItem;-><init>()V

    const-string v5, "type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcn/kuwo/mod/audioeffect/EqualizerItem;->a:I

    const-string v5, "showName"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcn/kuwo/mod/audioeffect/EqualizerItem;->b:Ljava/lang/String;

    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcn/kuwo/mod/audioeffect/EqualizerItem;->c:Ljava/lang/String;

    const-string v5, "eqBands"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v4, v3}, Lcn/kuwo/mod/audioeffect/EqualizerItem;->a(Lcn/kuwo/mod/audioeffect/EqualizerItem;Lorg/json/JSONArray;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    :try_start_2
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 2

    const-string v0, "{\'equalizer5\':[{\'showName\':\'\u97f3\u6548\', \'name\':\'Flat\', \'type\':2, \'bgColor\':0xFF000000, \'image\':\'default.png\', \'eqBands\':[{\'centerFreq\':60000, \'level\':0}, {\'centerFreq\':230000, \'level\':0}, {\'centerFreq\':910000, \'level\':0}, {\'centerFreq\':3600000, \'level\':0}, {\'centerFreq\':14000000, \'level\':0}]},{\'showName\':\'\u81ea\u5b9a\u4e49\', \'name\':\'custome\', \'type\':1, \'bgColor\':0xFF000000, \'image\':\'custom.png\', \'eqBands\':[{\'centerFreq\':60000, \'level\':0}, {\'centerFreq\':230000, \'level\':0}, {\'centerFreq\':910000, \'level\':0}, {\'centerFreq\':3600000, \'level\':0}, {\'centerFreq\':14000000, \'level\':0}]},{\'showName\':\'\u6d41\u884c\', \'name\':\'Pop\', \'type\':0, \'bgColor\':0xFF000000, \'image\':\'popular.png\', \'eqBands\':[{\'centerFreq\':60000, \'level\':-1}, {\'centerFreq\':230000, \'level\':2}, {\'centerFreq\':910000, \'level\':5}, {\'centerFreq\':3600000, \'level\':1}, {\'centerFreq\':14000000, \'level\':-2}]},{\'showName\':\'\u6447\u6eda\', \'name\':\'Rock\', \'type\':0, \'bgColor\':0xFF000000, \'image\':\'rock.png\', \'eqBands\':[{\'centerFreq\':60000, \'level\':5}, {\'centerFreq\':230000, \'level\':3}, {\'centerFreq\':910000, \'level\':-1}, {\'centerFreq\':3600000, \'level\':3}, {\'centerFreq\':14000000, \'level\':5}]},{\'showName\':\'\u821e\u66f2\', \'name\':\'Dance\', \'type\':0, \'bgColor\':0xFF000000, \'image\':\'dance.png\', \'eqBands\':[{\'centerFreq\':60000, \'level\':6}, {\'centerFreq\':230000, \'level\':0}, {\'centerFreq\':910000, \'level\':2}, {\'centerFreq\':3600000, \'level\':4}, {\'centerFreq\':14000000, \'level\':1}]},{\'showName\':\'\u53e4\u5178\', \'name\':\'Classic\', \'type\':0, \'bgColor\':0xFF000000, \'image\':\'dance.png\', \'eqBands\':[{\'centerFreq\':60000, \'level\':5}, {\'centerFreq\':230000, \'level\':3}, {\'centerFreq\':910000, \'level\':-2}, {\'centerFreq\':3600000, \'level\':4}, {\'centerFreq\':14000000, \'level\':4}]},{\'showName\':\'\u7235\u58eb\', \'name\':\'Jazz\', \'type\':0, \'bgColor\':0xFF000000, \'image\':\'sir.png\', \'eqBands\':[{\'centerFreq\':60000, \'level\':4}, {\'centerFreq\':230000, \'level\':2}, {\'centerFreq\':910000, \'level\':-2}, {\'centerFreq\':3600000, \'level\':2}, {\'centerFreq\':14000000, \'level\':5}]},{\'showName\':\'\u4f4e\u97f3\', \'name\':\'Bass\', \'type\':0, \'bgColor\':0xFF000000, \'image\':\'default.png\', \'eqBands\':[{\'centerFreq\':60000, \'level\':6}, {\'centerFreq\':230000, \'level\':5}, {\'centerFreq\':910000, \'level\':0}, {\'centerFreq\':3600000, \'level\':0}, {\'centerFreq\':14000000, \'level\':0}]},{\'showName\':\'\u9ad8\u97f3\', \'name\':\'Soprano\', \'type\':0, \'bgColor\':0xFF000000, \'image\':\'default.png\', \'eqBands\':[{\'centerFreq\':60000, \'level\':0}, {\'centerFreq\':230000, \'level\':0}, {\'centerFreq\':910000, \'level\':0}, {\'centerFreq\':3600000, \'level\':5}, {\'centerFreq\':14000000, \'level\':6}]},{\'showName\':\'\u6e05\u6670\', \'name\':\'Clear\', \'type\':0, \'bgColor\':0xFF000000, \'image\':\'default.png\', \'eqBands\':[{\'centerFreq\':60000, \'level\':4}, {\'centerFreq\':230000, \'level\':2}, {\'centerFreq\':910000, \'level\':0}, {\'centerFreq\':3600000, \'level\':2}, {\'centerFreq\':14000000, \'level\':5}]}]}"

    const-string v1, "equalizer5"

    invoke-direct {p0, v0, v1}, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->a:Ljava/util/List;

    return-void
.end method

.method private g()V
    .locals 4

    invoke-virtual {p0}, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->b:Lcn/kuwo/mod/audioeffect/EqualizerItem;

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->a:Ljava/util/List;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->a:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->f()V

    invoke-virtual {p0}, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->d()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->b:Lcn/kuwo/mod/audioeffect/EqualizerItem;

    invoke-virtual {v1}, Lcn/kuwo/mod/audioeffect/EqualizerItem;->b()S

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->a:Ljava/util/List;

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "equalizer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->a:Ljava/util/List;

    goto :goto_0
.end method

.method private h()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xa

    invoke-static {v1}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ae_eq_2016.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->a:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->g()V

    :cond_0
    iget-object v0, p0, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/audioeffect/EqualizerItem;

    iput-object v0, p0, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->b:Lcn/kuwo/mod/audioeffect/EqualizerItem;

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 3

    invoke-static {}, Lcn/kuwo/service/MainService;->d()Lcn/kuwo/service/PlayProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/kuwo/service/PlayProxy;->b(I)V

    const-string v0, "audioeffect"

    const-string v1, "effecttype"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;IZ)Z

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/kuwo/base/util/KwFileUtils;->fileWrite(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()I
    .locals 3

    const-string v0, "audioeffect"

    const-string v1, "effecttype"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 5

    iget-object v0, p0, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->a:Ljava/util/List;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iget-object v1, p0, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->b:Lcn/kuwo/mod/audioeffect/EqualizerItem;

    if-nez v1, :cond_1

    const-string v1, "{\'equalizer\':["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v1, p0, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/audioeffect/EqualizerItem;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0}, Lcn/kuwo/mod/audioeffect/EqualizerItem;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->b:Lcn/kuwo/mod/audioeffect/EqualizerItem;

    invoke-virtual {v1}, Lcn/kuwo/mod/audioeffect/EqualizerItem;->b()S

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "{\'equalizer\':["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\'equalizer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\':["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const-string v0, "]}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/mod/audioeffect/AudioEffectMgrImpl;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->fileRead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
