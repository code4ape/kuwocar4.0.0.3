.class Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool$3;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic this$1:Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;


# direct methods
.method constructor <init>(Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool$3;->this$1:Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 7

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool$3;->this$1:Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;

    iget-object v0, v0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;->this$0:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    invoke-static {v0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->access$100(Lcn/kuwo/service/kwplayer/NetPlayCtrl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool$3;->this$1:Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;

    iget-object v6, v0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;->this$0:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    sget-object v0, Lcn/kuwo/service/DownloadProxy$DownGroup;->a:Lcn/kuwo/service/DownloadProxy$DownGroup;

    invoke-static {v0}, Lcn/kuwo/service/downloader/DownloadMgr;->a(Lcn/kuwo/service/DownloadProxy$DownGroup;)Lcn/kuwo/service/downloader/DownloadMgr;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool$3;->this$1:Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;

    iget-object v1, v1, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;->this$0:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    invoke-static {v1}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->access$300(Lcn/kuwo/service/kwplayer/NetPlayCtrl;)Lcn/kuwo/base/bean/Music;

    move-result-object v1

    sget-object v2, Lcn/kuwo/service/DownloadProxy$DownType;->c:Lcn/kuwo/service/DownloadProxy$DownType;

    iget-object v3, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool$3;->this$1:Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;

    iget-object v3, v3, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;->this$0:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    invoke-static {v3}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->access$400(Lcn/kuwo/service/kwplayer/NetPlayCtrl;)Lcn/kuwo/service/DownloadProxy$Quality;

    move-result-object v3

    iget-object v4, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool$3;->this$1:Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;

    iget-object v4, v4, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;->this$0:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    iget-object v5, p0, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool$3;->this$1:Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;

    iget-object v5, v5, Lcn/kuwo/service/kwplayer/NetPlayCtrl$NetWorkStateChangeTool;->this$0:Lcn/kuwo/service/kwplayer/NetPlayCtrl;

    iget-object v5, v5, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->msgHandler:Lcn/kuwo/core/messagemgr/ThreadMessageHandler;

    invoke-virtual {v5}, Lcn/kuwo/core/messagemgr/ThreadMessageHandler;->a()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcn/kuwo/service/downloader/DownloadMgr;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$DownType;Lcn/kuwo/service/DownloadProxy$Quality;Lcn/kuwo/service/DownloadDelegate;Landroid/os/Handler;)I

    move-result v0

    invoke-static {v6, v0}, Lcn/kuwo/service/kwplayer/NetPlayCtrl;->access$202(Lcn/kuwo/service/kwplayer/NetPlayCtrl;I)I

    :cond_0
    return-void
.end method
