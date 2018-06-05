.class public Lcn/kuwo/mod/audioeffect/AudioEffectParam;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Lcn/kuwo/mod/audioeffect/EqualizerItem;

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x64

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcn/kuwo/mod/audioeffect/AudioEffectParam;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/mod/audioeffect/AudioEffectParam;->b:Lcn/kuwo/mod/audioeffect/EqualizerItem;

    iput v1, p0, Lcn/kuwo/mod/audioeffect/AudioEffectParam;->c:I

    iput v1, p0, Lcn/kuwo/mod/audioeffect/AudioEffectParam;->d:I

    iput v2, p0, Lcn/kuwo/mod/audioeffect/AudioEffectParam;->e:I

    iput v2, p0, Lcn/kuwo/mod/audioeffect/AudioEffectParam;->f:I

    return-void
.end method
