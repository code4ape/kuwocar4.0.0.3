.class public Lcn/kuwo/mod/notification/NotificationMgrImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/core/observers/ILyricsObserver;
.implements Lcn/kuwo/mod/notification/INotificationMgr;


# instance fields
.field private a:Lcn/kuwo/mod/notification/manager/KwNotificationManager;

.field private b:Lcn/kuwo/core/observers/ext/PlayControlObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/mod/notification/NotificationMgrImpl;->a:Lcn/kuwo/mod/notification/manager/KwNotificationManager;

    new-instance v0, Lcn/kuwo/mod/notification/NotificationMgrImpl$1;

    invoke-direct {v0, p0}, Lcn/kuwo/mod/notification/NotificationMgrImpl$1;-><init>(Lcn/kuwo/mod/notification/NotificationMgrImpl;)V

    iput-object v0, p0, Lcn/kuwo/mod/notification/NotificationMgrImpl;->b:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    new-instance v0, Lcn/kuwo/mod/notification/manager/KwNotificationManager;

    invoke-direct {v0}, Lcn/kuwo/mod/notification/manager/KwNotificationManager;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/notification/NotificationMgrImpl;->a:Lcn/kuwo/mod/notification/manager/KwNotificationManager;

    return-void
.end method


# virtual methods
.method public ILyricObserver_BackgroundPic(Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Landroid/graphics/Bitmap;Z)V
    .locals 0

    return-void
.end method

.method public ILyricObserver_BackgroundPic_Changed(Landroid/graphics/Bitmap;ZZ)V
    .locals 0

    return-void
.end method

.method public ILyricObserver_HeadPic(Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->e()Lcn/kuwo/base/bean/Music;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcn/kuwo/mod/notification/NotificationMgrImpl;->a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;)V

    goto :goto_0
.end method

.method public ILyricObserver_Lyrics(Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Lcn/kuwo/mod/lyric/ILyrics;Lcn/kuwo/mod/lyric/ILyrics;Z)V
    .locals 0

    return-void
.end method

.method public ILyricObserver_SearchList(Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public a()V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/notification/NotificationMgrImpl;->b:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->c:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->a(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method public a(Landroid/app/Service;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/notification/NotificationMgrImpl;->a:Lcn/kuwo/mod/notification/manager/KwNotificationManager;

    invoke-virtual {v0, p1}, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a(Landroid/app/Service;)V

    return-void
.end method

.method public a(Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/notification/NotificationMgrImpl;->a:Lcn/kuwo/mod/notification/manager/KwNotificationManager;

    invoke-virtual {v0, p1}, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a(Lcn/kuwo/base/bean/DownloadTask;)V

    return-void
.end method

.method public a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/notification/NotificationMgrImpl;->a:Lcn/kuwo/mod/notification/manager/KwNotificationManager;

    invoke-virtual {v0, p1, p2}, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/notification/NotificationMgrImpl;->a:Lcn/kuwo/mod/notification/manager/KwNotificationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a(Lcn/kuwo/base/bean/Music;Ljava/lang/String;Lcn/kuwo/mod/lyric/LyricsDefine$DownloadStatus;)V

    return-void
.end method

.method public b()V
    .locals 3

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->d:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/mod/notification/NotificationMgrImpl;->b:Lcn/kuwo/core/observers/ext/PlayControlObserver;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->c:Lcn/kuwo/core/messagemgr/MessageID;

    invoke-virtual {v0, v1, p0}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    return-void
.end method

.method public b(Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/notification/NotificationMgrImpl;->a:Lcn/kuwo/mod/notification/manager/KwNotificationManager;

    invoke-virtual {v0, p1}, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->b(Lcn/kuwo/base/bean/DownloadTask;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/notification/NotificationMgrImpl;->a:Lcn/kuwo/mod/notification/manager/KwNotificationManager;

    invoke-virtual {v0}, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->a()V

    return-void
.end method

.method public c(Lcn/kuwo/base/bean/DownloadTask;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/notification/NotificationMgrImpl;->a:Lcn/kuwo/mod/notification/manager/KwNotificationManager;

    invoke-virtual {v0, p1}, Lcn/kuwo/mod/notification/manager/KwNotificationManager;->c(Lcn/kuwo/base/bean/DownloadTask;)V

    return-void
.end method
