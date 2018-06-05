.class Lcn/kuwo/service/kwplayer/PlayManager$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/service/DownloadDelegate;


# instance fields
.field final synthetic this$0:Lcn/kuwo/service/kwplayer/PlayManager;


# direct methods
.method constructor <init>(Lcn/kuwo/service/kwplayer/PlayManager;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/PlayManager$6;->this$0:Lcn/kuwo/service/kwplayer/PlayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DownloadDelegate_Finish(ILcn/kuwo/service/DownloadDelegate$ErrorCode;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->a:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    if-ne p2, v0, :cond_0

    invoke-static {p3}, Lcn/kuwo/service/downloader/DownCacheMgr;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager$6;->this$0:Lcn/kuwo/service/kwplayer/PlayManager;

    invoke-static {v0, p3}, Lcn/kuwo/service/kwplayer/PlayManager;->access$802(Lcn/kuwo/service/kwplayer/PlayManager;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager$6;->this$0:Lcn/kuwo/service/kwplayer/PlayManager;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcn/kuwo/service/kwplayer/PlayManager;->access$902(Lcn/kuwo/service/kwplayer/PlayManager;I)I

    return-void
.end method

.method public DownloadDelegate_Progress(IIIF)V
    .locals 0

    return-void
.end method

.method public DownloadDelegate_Start(ILjava/lang/String;Ljava/lang/String;IIILcn/kuwo/service/DownloadDelegate$DataSrc;Lcn/kuwo/service/DownloadDelegate$HttpInfo;)V
    .locals 1

    invoke-static {p3}, Lcn/kuwo/service/downloader/DownCacheMgr;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/PlayManager$6;->this$0:Lcn/kuwo/service/kwplayer/PlayManager;

    invoke-static {v0, p3}, Lcn/kuwo/service/kwplayer/PlayManager;->access$802(Lcn/kuwo/service/kwplayer/PlayManager;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method
