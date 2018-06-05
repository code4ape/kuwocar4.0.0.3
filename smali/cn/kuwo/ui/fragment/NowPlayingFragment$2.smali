.class Lcn/kuwo/ui/fragment/NowPlayingFragment$2;
.super Lcn/kuwo/core/observers/ext/LyricsObserver;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/NowPlayingFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/NowPlayingFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment$2;->this$0:Lcn/kuwo/ui/fragment/NowPlayingFragment;

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/LyricsObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public ILyricObserver_HeadPic(Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcn/kuwo/core/observers/ext/LyricsObserver;->ILyricObserver_HeadPic(Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/NowPlayingFragment$2;->this$0:Lcn/kuwo/ui/fragment/NowPlayingFragment;

    invoke-static {v0, p2}, Lcn/kuwo/ui/fragment/NowPlayingFragment;->access$100(Lcn/kuwo/ui/fragment/NowPlayingFragment;Landroid/graphics/Bitmap;)V

    return-void
.end method
