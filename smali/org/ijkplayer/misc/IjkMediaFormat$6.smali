.class Lorg/ijkplayer/misc/IjkMediaFormat$6;
.super Lorg/ijkplayer/misc/IjkMediaFormat$Formatter;


# instance fields
.field final synthetic this$0:Lorg/ijkplayer/misc/IjkMediaFormat;


# direct methods
.method constructor <init>(Lorg/ijkplayer/misc/IjkMediaFormat;)V
    .locals 1

    iput-object p1, p0, Lorg/ijkplayer/misc/IjkMediaFormat$6;->this$0:Lorg/ijkplayer/misc/IjkMediaFormat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/ijkplayer/misc/IjkMediaFormat$Formatter;-><init>(Lorg/ijkplayer/misc/IjkMediaFormat$1;)V

    return-void
.end method


# virtual methods
.method protected doFormat(Lorg/ijkplayer/misc/IjkMediaFormat;)Ljava/lang/String;
    .locals 2

    const-string v0, "fps_num"

    invoke-virtual {p1, v0}, Lorg/ijkplayer/misc/IjkMediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "fps_den"

    invoke-virtual {p1, v1}, Lorg/ijkplayer/misc/IjkMediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-lez v0, :cond_0

    if-gtz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
