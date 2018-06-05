.class Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner$2;->a:Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->q()Lcn/kuwo/mod/mobilead/audioad/IAudioAdMgr;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner$2;->a:Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;

    invoke-static {v1}, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->a(Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;)Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/kuwo/mod/mobilead/audioad/IAudioAdMgr;->a(Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;)V

    return-void
.end method
