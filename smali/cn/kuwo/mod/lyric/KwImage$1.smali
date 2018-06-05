.class Lcn/kuwo/mod/lyric/KwImage$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field final synthetic a:Lcn/kuwo/base/bean/Music;

.field final synthetic b:I

.field final synthetic c:Lcn/kuwo/mod/lyric/KwImage;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/lyric/KwImage;Lcn/kuwo/base/bean/Music;I)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/lyric/KwImage$1;->c:Lcn/kuwo/mod/lyric/KwImage;

    iput-object p2, p0, Lcn/kuwo/mod/lyric/KwImage$1;->a:Lcn/kuwo/base/bean/Music;

    iput p3, p0, Lcn/kuwo/mod/lyric/KwImage$1;->b:I

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/mod/lyric/KwImage$1;->ob:Lcn/kuwo/core/messagemgr/IObserverBase;

    check-cast v0, Lcn/kuwo/core/observers/IBigBackgroundDownloadObserver;

    iget-object v1, p0, Lcn/kuwo/mod/lyric/KwImage$1;->a:Lcn/kuwo/base/bean/Music;

    iget v2, p0, Lcn/kuwo/mod/lyric/KwImage$1;->b:I

    invoke-interface {v0, v1, v2}, Lcn/kuwo/core/observers/IBigBackgroundDownloadObserver;->a(Lcn/kuwo/base/bean/Music;I)V

    return-void
.end method
