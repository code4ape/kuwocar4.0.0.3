.class Lcn/kuwo/service/kwplayer/codec/DecoderManager$DecoderInfo;
.super Ljava/lang/Object;


# instance fields
.field public c:Ljava/lang/Class;

.field public decoder:Lcn/kuwo/service/kwplayer/codec/IDecoder;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/codec/DecoderManager$DecoderInfo;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getDecoder()Lcn/kuwo/service/kwplayer/codec/IDecoder;
    .locals 2

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/codec/DecoderManager$DecoderInfo;->decoder:Lcn/kuwo/service/kwplayer/codec/IDecoder;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/codec/DecoderManager$DecoderInfo;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/service/kwplayer/codec/IDecoder;

    iput-object v0, p0, Lcn/kuwo/service/kwplayer/codec/DecoderManager$DecoderInfo;->decoder:Lcn/kuwo/service/kwplayer/codec/IDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/codec/DecoderManager$DecoderInfo;->decoder:Lcn/kuwo/service/kwplayer/codec/IDecoder;

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "DecoderManager"

    invoke-static {v1, v0}, Lcn/kuwo/base/log/LogMgr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
