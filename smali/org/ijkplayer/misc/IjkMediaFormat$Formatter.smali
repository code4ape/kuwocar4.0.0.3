.class abstract Lorg/ijkplayer/misc/IjkMediaFormat$Formatter;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/ijkplayer/misc/IjkMediaFormat$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/ijkplayer/misc/IjkMediaFormat$Formatter;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract doFormat(Lorg/ijkplayer/misc/IjkMediaFormat;)Ljava/lang/String;
.end method

.method public format(Lorg/ijkplayer/misc/IjkMediaFormat;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/ijkplayer/misc/IjkMediaFormat$Formatter;->doFormat(Lorg/ijkplayer/misc/IjkMediaFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/ijkplayer/misc/IjkMediaFormat$Formatter;->getDefaultString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected getDefaultString()Ljava/lang/String;
    .locals 1

    const-string v0, "N/A"

    return-object v0
.end method
