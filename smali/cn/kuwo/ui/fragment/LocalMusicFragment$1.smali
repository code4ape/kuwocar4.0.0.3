.class Lcn/kuwo/ui/fragment/LocalMusicFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/core/observers/IDownloadMgrObserver;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/LocalMusicFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/LocalMusicFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment$1;->this$0:Lcn/kuwo/ui/fragment/LocalMusicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IDownloadObserver_OnListChanged(I)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/fragment/LocalMusicFragment$1;->this$0:Lcn/kuwo/ui/fragment/LocalMusicFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/LocalMusicFragment;->access$000(Lcn/kuwo/ui/fragment/LocalMusicFragment;)V

    return-void
.end method

.method public IDownloadObserver_OnProgressChanged(Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 0

    return-void
.end method

.method public IDownloadObserver_OnStateChanged(Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 0

    return-void
.end method
