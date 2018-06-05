.class Lcn/kuwo/mod/mobilead/AdConfDownloadRunner$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/mobilead/AdParamHandler;

.field final synthetic b:Lcn/kuwo/mod/mobilead/AdConfDownloadRunner;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/mobilead/AdConfDownloadRunner;Lcn/kuwo/mod/mobilead/AdParamHandler;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/mobilead/AdConfDownloadRunner$1;->b:Lcn/kuwo/mod/mobilead/AdConfDownloadRunner;

    iput-object p2, p0, Lcn/kuwo/mod/mobilead/AdConfDownloadRunner$1;->a:Lcn/kuwo/mod/mobilead/AdParamHandler;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->r()Lcn/kuwo/mod/mobilead/IAdMgr;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/mobilead/AdConfDownloadRunner$1;->a:Lcn/kuwo/mod/mobilead/AdParamHandler;

    iget-object v1, v1, Lcn/kuwo/mod/mobilead/AdParamHandler;->b:Lcn/kuwo/mod/mobilead/audioad/AudioAdConfInfo;

    invoke-interface {v0, v1}, Lcn/kuwo/mod/mobilead/IAdMgr;->a(Lcn/kuwo/mod/mobilead/audioad/AudioAdConfInfo;)V

    return-void
.end method
