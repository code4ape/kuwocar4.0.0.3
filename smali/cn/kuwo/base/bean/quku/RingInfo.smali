.class public Lcn/kuwo/base/bean/quku/RingInfo;
.super Lcn/kuwo/base/bean/quku/BaseQukuItem;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ring"

    invoke-direct {p0, v0}, Lcn/kuwo/base/bean/quku/BaseQukuItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/RingInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/RingInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/quku/RingInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/RingInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/RingInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/RingInfo;->a:Ljava/lang/String;

    return-void
.end method
