.class Lcn/kuwo/mod/mobilead/audioad/AudioAdUpdateRequestRunner$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/mobilead/audioad/AudioAdUpdateRequestRunner;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/mobilead/audioad/AudioAdUpdateRequestRunner;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdUpdateRequestRunner$1;->a:Lcn/kuwo/mod/mobilead/audioad/AudioAdUpdateRequestRunner;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->q()Lcn/kuwo/mod/mobilead/audioad/IAudioAdMgr;

    move-result-object v0

    const-string v1, "data null"

    invoke-interface {v0, v1}, Lcn/kuwo/mod/mobilead/audioad/IAudioAdMgr;->b(Ljava/lang/String;)V

    return-void
.end method
