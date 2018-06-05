.class public Lorg/ijkplayer/misc/IjkMediaFormat;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ijkplayer/misc/IMediaFormat;


# static fields
.field public static final CODEC_NAME_H264:Ljava/lang/String; = "h264"

.field public static final KEY_IJK_BIT_RATE_UI:Ljava/lang/String; = "ijk-bit-rate-ui"

.field public static final KEY_IJK_CHANNEL_UI:Ljava/lang/String; = "ijk-channel-ui"

.field public static final KEY_IJK_CODEC_LONG_NAME_UI:Ljava/lang/String; = "ijk-codec-long-name-ui"

.field public static final KEY_IJK_CODEC_PIXEL_FORMAT_UI:Ljava/lang/String; = "ijk-pixel-format-ui"

.field public static final KEY_IJK_CODEC_PROFILE_LEVEL_UI:Ljava/lang/String; = "ijk-profile-level-ui"

.field public static final KEY_IJK_FRAME_RATE_UI:Ljava/lang/String; = "ijk-frame-rate-ui"

.field public static final KEY_IJK_RESOLUTION_UI:Ljava/lang/String; = "ijk-resolution-ui"

.field public static final KEY_IJK_SAMPLE_RATE_UI:Ljava/lang/String; = "ijk-sample-rate-ui"

.field private static final sFormatterMap:Ljava/util/Map;


# instance fields
.field public final mMediaFormat:Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/ijkplayer/misc/IjkMediaFormat;->sFormatterMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ijkplayer/misc/IjkMediaFormat;->sFormatterMap:Ljava/util/Map;

    const-string v1, "ijk-codec-long-name-ui"

    new-instance v2, Lorg/ijkplayer/misc/IjkMediaFormat$1;

    invoke-direct {v2, p0}, Lorg/ijkplayer/misc/IjkMediaFormat$1;-><init>(Lorg/ijkplayer/misc/IjkMediaFormat;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ijkplayer/misc/IjkMediaFormat;->sFormatterMap:Ljava/util/Map;

    const-string v1, "ijk-bit-rate-ui"

    new-instance v2, Lorg/ijkplayer/misc/IjkMediaFormat$2;

    invoke-direct {v2, p0}, Lorg/ijkplayer/misc/IjkMediaFormat$2;-><init>(Lorg/ijkplayer/misc/IjkMediaFormat;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ijkplayer/misc/IjkMediaFormat;->sFormatterMap:Ljava/util/Map;

    const-string v1, "ijk-profile-level-ui"

    new-instance v2, Lorg/ijkplayer/misc/IjkMediaFormat$3;

    invoke-direct {v2, p0}, Lorg/ijkplayer/misc/IjkMediaFormat$3;-><init>(Lorg/ijkplayer/misc/IjkMediaFormat;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ijkplayer/misc/IjkMediaFormat;->sFormatterMap:Ljava/util/Map;

    const-string v1, "ijk-pixel-format-ui"

    new-instance v2, Lorg/ijkplayer/misc/IjkMediaFormat$4;

    invoke-direct {v2, p0}, Lorg/ijkplayer/misc/IjkMediaFormat$4;-><init>(Lorg/ijkplayer/misc/IjkMediaFormat;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ijkplayer/misc/IjkMediaFormat;->sFormatterMap:Ljava/util/Map;

    const-string v1, "ijk-resolution-ui"

    new-instance v2, Lorg/ijkplayer/misc/IjkMediaFormat$5;

    invoke-direct {v2, p0}, Lorg/ijkplayer/misc/IjkMediaFormat$5;-><init>(Lorg/ijkplayer/misc/IjkMediaFormat;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ijkplayer/misc/IjkMediaFormat;->sFormatterMap:Ljava/util/Map;

    const-string v1, "ijk-frame-rate-ui"

    new-instance v2, Lorg/ijkplayer/misc/IjkMediaFormat$6;

    invoke-direct {v2, p0}, Lorg/ijkplayer/misc/IjkMediaFormat$6;-><init>(Lorg/ijkplayer/misc/IjkMediaFormat;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ijkplayer/misc/IjkMediaFormat;->sFormatterMap:Ljava/util/Map;

    const-string v1, "ijk-sample-rate-ui"

    new-instance v2, Lorg/ijkplayer/misc/IjkMediaFormat$7;

    invoke-direct {v2, p0}, Lorg/ijkplayer/misc/IjkMediaFormat$7;-><init>(Lorg/ijkplayer/misc/IjkMediaFormat;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/ijkplayer/misc/IjkMediaFormat;->sFormatterMap:Ljava/util/Map;

    const-string v1, "ijk-channel-ui"

    new-instance v2, Lorg/ijkplayer/misc/IjkMediaFormat$8;

    invoke-direct {v2, p0}, Lorg/ijkplayer/misc/IjkMediaFormat$8;-><init>(Lorg/ijkplayer/misc/IjkMediaFormat;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/ijkplayer/misc/IjkMediaFormat;->mMediaFormat:Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;

    return-void
.end method


# virtual methods
.method public getInteger(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lorg/ijkplayer/misc/IjkMediaFormat;->mMediaFormat:Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/ijkplayer/misc/IjkMediaFormat;->mMediaFormat:Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;

    invoke-virtual {v0, p1}, Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ijkplayer/misc/IjkMediaFormat;->mMediaFormat:Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/ijkplayer/misc/IjkMediaFormat;->sFormatterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/ijkplayer/misc/IjkMediaFormat;->sFormatterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ijkplayer/misc/IjkMediaFormat$Formatter;

    invoke-virtual {v0, p0}, Lorg/ijkplayer/misc/IjkMediaFormat$Formatter;->format(Lorg/ijkplayer/misc/IjkMediaFormat;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/ijkplayer/misc/IjkMediaFormat;->mMediaFormat:Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;

    invoke-virtual {v0, p1}, Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
