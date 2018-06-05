.class public final Lcn/kuwo/service/kwplayer/codec/DecoderManager;
.super Ljava/lang/Object;


# static fields
.field public static final AUDIO_CODEC_LOAD_FAIL:I = 0x1000002

.field public static final AUDIO_CODEC_NOT_FOUND:I = 0x1000001

.field private static final TAG:Ljava/lang/String; = "DecoderManager"

.field private static formatDecoder:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/kuwo/service/kwplayer/codec/DecoderManager;->formatDecoder:Ljava/util/HashMap;

    sget-object v0, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;->formats:[Ljava/lang/String;

    const-class v1, Lcn/kuwo/service/kwplayer/codec/NativeAACDecoder;

    invoke-static {v0, v1}, Lcn/kuwo/service/kwplayer/codec/DecoderManager;->registDecoder([Ljava/lang/String;Ljava/lang/Class;)V

    sget-object v0, Lcn/kuwo/service/kwplayer/codec/NativeMP3Decoder;->formats:[Ljava/lang/String;

    const-class v1, Lcn/kuwo/service/kwplayer/codec/NativeMP3Decoder;

    invoke-static {v0, v1}, Lcn/kuwo/service/kwplayer/codec/DecoderManager;->registDecoder([Ljava/lang/String;Ljava/lang/Class;)V

    sget-object v0, Lcn/kuwo/service/kwplayer/codec/NativeWMADecoder;->formats:[Ljava/lang/String;

    const-class v1, Lcn/kuwo/service/kwplayer/codec/NativeWMADecoder;

    invoke-static {v0, v1}, Lcn/kuwo/service/kwplayer/codec/DecoderManager;->registDecoder([Ljava/lang/String;Ljava/lang/Class;)V

    sget-object v0, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;->formats:[Ljava/lang/String;

    const-class v1, Lcn/kuwo/service/kwplayer/codec/NativeAPEDecoder;

    invoke-static {v0, v1}, Lcn/kuwo/service/kwplayer/codec/DecoderManager;->registDecoder([Ljava/lang/String;Ljava/lang/Class;)V

    sget-object v0, Lcn/kuwo/service/kwplayer/codec/NativeFLACDecoder;->formats:[Ljava/lang/String;

    const-class v1, Lcn/kuwo/service/kwplayer/codec/NativeFLACDecoder;

    invoke-static {v0, v1}, Lcn/kuwo/service/kwplayer/codec/DecoderManager;->registDecoder([Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDecoder(Ljava/lang/String;)Lcn/kuwo/service/kwplayer/codec/IDecoder;
    .locals 1

    sget-object v0, Lcn/kuwo/service/kwplayer/codec/DecoderManager;->formatDecoder:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/service/kwplayer/codec/DecoderManager$DecoderInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/codec/DecoderManager$DecoderInfo;->getDecoder()Lcn/kuwo/service/kwplayer/codec/IDecoder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSupportFormats()Ljava/util/ArrayList;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    sget-object v0, Lcn/kuwo/service/kwplayer/codec/DecoderManager;->formatDecoder:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v0, Lcn/kuwo/service/kwplayer/codec/DecoderManager;->formatDecoder:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static registDecoder([Ljava/lang/String;Ljava/lang/Class;)V
    .locals 5

    :try_start_0
    new-instance v1, Lcn/kuwo/service/kwplayer/codec/DecoderManager$DecoderInfo;

    invoke-direct {v1, p1}, Lcn/kuwo/service/kwplayer/codec/DecoderManager$DecoderInfo;-><init>(Ljava/lang/Class;)V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    sget-object v4, Lcn/kuwo/service/kwplayer/codec/DecoderManager;->formatDecoder:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method
