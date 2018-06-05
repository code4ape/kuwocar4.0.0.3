.class Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/service/DownloadDelegate;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;->a:Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final DownloadDelegate_Finish(ILcn/kuwo/service/DownloadDelegate$ErrorCode;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$2;-><init>(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;ILcn/kuwo/service/DownloadDelegate$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method

.method public final DownloadDelegate_Progress(IIIF)V
    .locals 7

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v6

    new-instance v0, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$1;

    move-object v1, p0

    move v2, p1

    move v3, p3

    move v4, p4

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$1;-><init>(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;IIFI)V

    invoke-virtual {v6, v0}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method

.method public DownloadDelegate_Start(ILjava/lang/String;Ljava/lang/String;IIILcn/kuwo/service/DownloadDelegate$DataSrc;Lcn/kuwo/service/DownloadDelegate$HttpInfo;)V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    new-instance v1, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$3;

    invoke-direct {v1, p0, p1, p4}, Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6$3;-><init>(Lcn/kuwo/mod/mvdown/MVDownloadMgrImpl$6;II)V

    invoke-virtual {v0, v1}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    return-void
.end method
