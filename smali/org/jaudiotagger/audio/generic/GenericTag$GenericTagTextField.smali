.class Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jaudiotagger/tag/TagTextField;


# instance fields
.field private content:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field final synthetic this$0:Lorg/jaudiotagger/audio/generic/GenericTag;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/audio/generic/GenericTag;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;->this$0:Lorg/jaudiotagger/audio/generic/GenericTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;->id:Ljava/lang/String;

    iput-object p3, p0, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copyContent(Lorg/jaudiotagger/tag/TagField;)V
    .locals 1

    instance-of v0, p1, Lorg/jaudiotagger/tag/TagTextField;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/jaudiotagger/tag/TagTextField;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;->content:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    const-string v0, "ISO-8859-1"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getRawContent()[B
    .locals 2

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;->content:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;->content:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jaudiotagger/audio/generic/Utils;->getDefaultBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public isBinary(Z)V
    .locals 0

    return-void
.end method

.method public isBinary()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCommon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;->content:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;->content:Ljava/lang/String;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
