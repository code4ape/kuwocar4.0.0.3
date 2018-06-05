.class Lorg/ijkplayer/misc/IjkMediaFormat$2;
.super Lorg/ijkplayer/misc/IjkMediaFormat$Formatter;


# instance fields
.field final synthetic this$0:Lorg/ijkplayer/misc/IjkMediaFormat;


# direct methods
.method constructor <init>(Lorg/ijkplayer/misc/IjkMediaFormat;)V
    .locals 1

    iput-object p1, p0, Lorg/ijkplayer/misc/IjkMediaFormat$2;->this$0:Lorg/ijkplayer/misc/IjkMediaFormat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/ijkplayer/misc/IjkMediaFormat$Formatter;-><init>(Lorg/ijkplayer/misc/IjkMediaFormat$1;)V

    return-void
.end method


# virtual methods
.method protected doFormat(Lorg/ijkplayer/misc/IjkMediaFormat;)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v0, "bitrate"

    invoke-virtual {p1, v0}, Lorg/ijkplayer/misc/IjkMediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d bit/s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d kb/s"

    new-array v3, v3, [Ljava/lang/Object;

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
