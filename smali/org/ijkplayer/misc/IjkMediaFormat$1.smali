.class Lorg/ijkplayer/misc/IjkMediaFormat$1;
.super Lorg/ijkplayer/misc/IjkMediaFormat$Formatter;


# instance fields
.field final synthetic this$0:Lorg/ijkplayer/misc/IjkMediaFormat;


# direct methods
.method constructor <init>(Lorg/ijkplayer/misc/IjkMediaFormat;)V
    .locals 1

    iput-object p1, p0, Lorg/ijkplayer/misc/IjkMediaFormat$1;->this$0:Lorg/ijkplayer/misc/IjkMediaFormat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/ijkplayer/misc/IjkMediaFormat$Formatter;-><init>(Lorg/ijkplayer/misc/IjkMediaFormat$1;)V

    return-void
.end method


# virtual methods
.method public doFormat(Lorg/ijkplayer/misc/IjkMediaFormat;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/ijkplayer/misc/IjkMediaFormat$1;->this$0:Lorg/ijkplayer/misc/IjkMediaFormat;

    iget-object v0, v0, Lorg/ijkplayer/misc/IjkMediaFormat;->mMediaFormat:Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;

    const-string v1, "codec_long_name"

    invoke-virtual {v0, v1}, Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
