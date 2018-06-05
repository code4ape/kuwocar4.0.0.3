.class Lcn/kuwo/ui/PlayController$7;
.super Lcn/kuwo/core/observers/ext/LyricsObserver;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/PlayController;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/PlayController;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/PlayController$7;->this$0:Lcn/kuwo/ui/PlayController;

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/LyricsObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public ILyricObserver_HeadPic(Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcn/kuwo/core/observers/ext/LyricsObserver;->ILyricObserver_HeadPic(Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcn/kuwo/ui/PlayController$7;->this$0:Lcn/kuwo/ui/PlayController;

    invoke-static {v0, p2}, Lcn/kuwo/ui/PlayController;->access$400(Lcn/kuwo/ui/PlayController;Landroid/graphics/Bitmap;)V

    return-void
.end method
