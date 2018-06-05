.class Lcn/kuwo/mod/mobilead/audioad/AudioAdUpdateRequestRunner$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcn/kuwo/mod/mobilead/audioad/AudioAdUpdateRequestRunner;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/mobilead/audioad/AudioAdUpdateRequestRunner;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdUpdateRequestRunner$2;->c:Lcn/kuwo/mod/mobilead/audioad/AudioAdUpdateRequestRunner;

    iput-object p2, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdUpdateRequestRunner$2;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdUpdateRequestRunner$2;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->q()Lcn/kuwo/mod/mobilead/audioad/IAudioAdMgr;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdUpdateRequestRunner$2;->a:Ljava/util/HashMap;

    iget-object v2, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdUpdateRequestRunner$2;->b:Ljava/util/HashMap;

    iget-object v3, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdUpdateRequestRunner$2;->c:Lcn/kuwo/mod/mobilead/audioad/AudioAdUpdateRequestRunner;

    invoke-static {v3}, Lcn/kuwo/mod/mobilead/audioad/AudioAdUpdateRequestRunner;->a(Lcn/kuwo/mod/mobilead/audioad/AudioAdUpdateRequestRunner;)Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcn/kuwo/mod/mobilead/audioad/IAudioAdMgr;->a(Ljava/util/HashMap;Ljava/util/HashMap;Z)V

    return-void
.end method
