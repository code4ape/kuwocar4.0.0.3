.class Lorg/ijkplayer/misc/IjkMediaFormat$5;
.super Lorg/ijkplayer/misc/IjkMediaFormat$Formatter;


# instance fields
.field final synthetic this$0:Lorg/ijkplayer/misc/IjkMediaFormat;


# direct methods
.method constructor <init>(Lorg/ijkplayer/misc/IjkMediaFormat;)V
    .locals 1

    iput-object p1, p0, Lorg/ijkplayer/misc/IjkMediaFormat$5;->this$0:Lorg/ijkplayer/misc/IjkMediaFormat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/ijkplayer/misc/IjkMediaFormat$Formatter;-><init>(Lorg/ijkplayer/misc/IjkMediaFormat$1;)V

    return-void
.end method


# virtual methods
.method protected doFormat(Lorg/ijkplayer/misc/IjkMediaFormat;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "width"

    invoke-virtual {p1, v0}, Lorg/ijkplayer/misc/IjkMediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "height"

    invoke-virtual {p1, v1}, Lorg/ijkplayer/misc/IjkMediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const-string v2, "sar_num"

    invoke-virtual {p1, v2}, Lorg/ijkplayer/misc/IjkMediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const-string v3, "sar_den"

    invoke-virtual {p1, v3}, Lorg/ijkplayer/misc/IjkMediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    if-lez v0, :cond_0

    if-gtz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    if-lez v2, :cond_2

    if-gtz v3, :cond_3

    :cond_2
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%d x %d"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%d x %d [SAR %d:%d]"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v9

    const/4 v0, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
