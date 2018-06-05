.class Lcn/kuwo/mod/download/DownloadMgrImpl$2;
.super Lcn/kuwo/core/observers/ext/AppObserver;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/download/DownloadMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/download/DownloadMgrImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/download/DownloadMgrImpl$2;->a:Lcn/kuwo/mod/download/DownloadMgrImpl;

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/AppObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public IAppObserver_NetworkStateChanged(ZZ)V
    .locals 3

    const-string v0, ""

    const-string v1, "audition_use_only_wifi_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/download/DownloadMgrImpl$2;->a:Lcn/kuwo/mod/download/DownloadMgrImpl;

    invoke-virtual {v0}, Lcn/kuwo/mod/download/DownloadMgrImpl;->d()Z

    :cond_0
    return-void
.end method
