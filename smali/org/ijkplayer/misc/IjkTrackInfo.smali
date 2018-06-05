.class public Lorg/ijkplayer/misc/IjkTrackInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ijkplayer/misc/ITrackInfo;


# instance fields
.field private mStreamMeta:Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;

.field private mTrackType:I


# direct methods
.method public constructor <init>(Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/ijkplayer/misc/IjkTrackInfo;->mTrackType:I

    iput-object p1, p0, Lorg/ijkplayer/misc/IjkTrackInfo;->mStreamMeta:Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;

    return-void
.end method


# virtual methods
.method public getFormat()Lorg/ijkplayer/misc/IMediaFormat;
    .locals 2

    new-instance v0, Lorg/ijkplayer/misc/IjkMediaFormat;

    iget-object v1, p0, Lorg/ijkplayer/misc/IjkTrackInfo;->mStreamMeta:Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;

    invoke-direct {v0, v1}, Lorg/ijkplayer/misc/IjkMediaFormat;-><init>(Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;)V

    return-object v0
.end method

.method public getInfoInline()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v1, p0, Lorg/ijkplayer/misc/IjkTrackInfo;->mTrackType:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v1, "VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ijkplayer/misc/IjkTrackInfo;->mStreamMeta:Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;

    invoke-virtual {v1}, Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;->getCodecShortNameInline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ijkplayer/misc/IjkTrackInfo;->mStreamMeta:Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;

    invoke-virtual {v1}, Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;->getBitrateInline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ijkplayer/misc/IjkTrackInfo;->mStreamMeta:Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;

    invoke-virtual {v1}, Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;->getResolutionInline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string v1, "AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ijkplayer/misc/IjkTrackInfo;->mStreamMeta:Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;

    invoke-virtual {v1}, Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;->getCodecShortNameInline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ijkplayer/misc/IjkTrackInfo;->mStreamMeta:Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;

    invoke-virtual {v1}, Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;->getBitrateInline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ijkplayer/misc/IjkTrackInfo;->mStreamMeta:Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;

    invoke-virtual {v1}, Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;->getSampleRateInline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string v1, "TIMEDTEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const-string v1, "SUBTITLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ijkplayer/misc/IjkTrackInfo;->mStreamMeta:Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ijkplayer/misc/IjkTrackInfo;->mStreamMeta:Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;

    iget-object v0, v0, Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;->mLanguage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "und"

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/ijkplayer/misc/IjkTrackInfo;->mStreamMeta:Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;

    iget-object v0, v0, Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;->mLanguage:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTrackType()I
    .locals 1

    iget v0, p0, Lorg/ijkplayer/misc/IjkTrackInfo;->mTrackType:I

    return v0
.end method

.method public setMediaMeta(Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;)V
    .locals 0

    iput-object p1, p0, Lorg/ijkplayer/misc/IjkTrackInfo;->mStreamMeta:Lorg/ijkplayer/IjkMediaMeta$IjkStreamMeta;

    return-void
.end method

.method public setTrackType(I)V
    .locals 0

    iput p1, p0, Lorg/ijkplayer/misc/IjkTrackInfo;->mTrackType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/ijkplayer/misc/IjkTrackInfo;->getInfoInline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
