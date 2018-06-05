.class Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3$1;->a:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3$1;->a:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;

    iget-object v0, v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;->e:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    iget-object v1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3$1;->a:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;

    iget-object v1, v1, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;->c:Lcn/kuwo/base/bean/DownloadTask;

    invoke-static {v0, v1}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->a(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;Lcn/kuwo/base/bean/DownloadTask;)V

    iget-object v0, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3$1;->a:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;

    iget-object v0, v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$3;->e:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;->b(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;)V

    return-void
.end method
