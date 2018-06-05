.class public Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;
.super Ljava/lang/Object;


# instance fields
.field private detail:Ljava/lang/String;

.field private id:I

.field private name:Ljava/lang/String;

.field private resBackgroundId:I

.field private resIconId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;->id:I

    iput-object p2, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;->name:Ljava/lang/String;

    iput-object p3, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;->detail:Ljava/lang/String;

    iput p4, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;->resBackgroundId:I

    iput p5, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;->resIconId:I

    return-void
.end method


# virtual methods
.method public getDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResBackgroundId()I
    .locals 1

    iget v0, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;->resBackgroundId:I

    return v0
.end method

.method public getResIconId()I
    .locals 1

    iget v0, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;->resIconId:I

    return v0
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;->detail:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;->name:Ljava/lang/String;

    return-void
.end method

.method public setResBackgroundId(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;->resBackgroundId:I

    return-void
.end method

.method public setResIconId(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/ui/adapter/SoundEffectAdapter$SoundEffect;->resIconId:I

    return-void
.end method
