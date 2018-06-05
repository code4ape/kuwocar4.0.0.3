.class Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl$1;
.super Lcn/kuwo/core/observers/ext/PlayControlObserver;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl$1;->a:Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/PlayControlObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public IPlayControlObserver_Play(Lcn/kuwo/base/bean/Music;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcn/kuwo/base/util/KwDate;

    invoke-direct {v0}, Lcn/kuwo/base/util/KwDate;-><init>()V

    const-string v1, ""

    const-string v2, "time_play_music"

    const-string v3, " "

    invoke-static {v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcn/kuwo/base/util/KwDate;->today()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    const-string v2, "time_play_music"

    invoke-static {v1, v2, v0, v4}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl$1;->a:Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->a(Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl$1;->a:Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;

    invoke-static {v0, v4}, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->a(Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;I)I

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl$1;->a:Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->a(Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;Z)V

    :cond_1
    return-void
.end method

.method public IPlayControlObserver_ReadyPlay(Lcn/kuwo/base/bean/Music;)V
    .locals 2

    const-string v0, "yaj"

    const-string v1, "IPlayControlObserver_RealPlay queryAuId"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl$1;->a:Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;

    invoke-static {v0}, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->b(Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl$1;->a:Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->b(Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;Z)Z

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl$1;->a:Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->a(Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;Z)V

    :cond_0
    return-void
.end method

.method public IPlayControlObserver_RealPlay(Lcn/kuwo/base/bean/Music;)V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->d()Lcn/kuwo/mod/playcontrol/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/playcontrol/IPlayControl;->e()Lcn/kuwo/base/bean/Music;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, v0, Lcn/kuwo/base/bean/Music;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl$1;->a:Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/mobilead/audioad/AudioAdMgrImpl;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
