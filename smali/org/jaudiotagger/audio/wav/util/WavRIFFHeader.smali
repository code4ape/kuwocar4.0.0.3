.class public Lorg/jaudiotagger/audio/wav/util/WavRIFFHeader;
.super Ljava/lang/Object;


# instance fields
.field private isValid:Z


# direct methods
.method public constructor <init>([B)V
    .locals 4

    const/4 v3, 0x4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lorg/jaudiotagger/audio/wav/util/WavRIFFHeader;->isValid:Z

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, v1, v3}, Ljava/lang/String;-><init>([BII)V

    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x8

    invoke-direct {v1, p1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    const-string v2, "RIFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WAVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jaudiotagger/audio/wav/util/WavRIFFHeader;->isValid:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jaudiotagger/audio/wav/util/WavRIFFHeader;->isValid:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "RIFF-WAVE Header:\n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Is valid?: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jaudiotagger/audio/wav/util/WavRIFFHeader;->isValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
