.class public Lcn/kuwo/base/util/QualityUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkLocalFileNeedQuality(Lcn/kuwo/base/bean/Music;)Lcn/kuwo/service/DownloadProxy$Quality;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lcn/kuwo/base/util/QualityUtils;->getPlayQuality()Lcn/kuwo/service/DownloadProxy$Quality;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->a:Lcn/kuwo/service/DownloadProxy$Quality;

    goto :goto_0
.end method

.method public static getConfigQuality()I
    .locals 3

    const-string v0, ""

    const-string v1, "music_quality_when_play"

    invoke-static {}, Lcn/kuwo/mod/settings/SettingsDefualtValueUtls;->a()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMusicNowPlayingQuality(Lcn/kuwo/base/bean/Music;)I
    .locals 3

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->r:Ljava/lang/String;

    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    invoke-virtual {v0}, Lcn/kuwo/service/DownloadProxy$Quality;->ordinal()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, ""

    const-string v1, "music_quality_when_play"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {}, Lcn/kuwo/base/bean/MusicQuality;->values()[Lcn/kuwo/base/bean/MusicQuality;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcn/kuwo/base/bean/Music;->b(Lcn/kuwo/base/bean/MusicQuality;)Lcn/kuwo/base/bean/NetResource;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcn/kuwo/base/bean/NetResource;->a:Lcn/kuwo/base/bean/MusicQuality;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/MusicQuality;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getPlayMusicQuality()Lcn/kuwo/base/bean/MusicQuality;
    .locals 2

    invoke-static {}, Lcn/kuwo/base/util/QualityUtils;->getConfigQuality()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    invoke-static {}, Lcn/kuwo/base/bean/MusicQuality;->values()[Lcn/kuwo/base/bean/MusicQuality;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getPlayQuality()Lcn/kuwo/service/DownloadProxy$Quality;
    .locals 1

    invoke-static {}, Lcn/kuwo/base/util/QualityUtils;->getPlayMusicQuality()Lcn/kuwo/base/bean/MusicQuality;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/QualityUtils;->musicQualityToDownloadQuality(Lcn/kuwo/base/bean/MusicQuality;)Lcn/kuwo/service/DownloadProxy$Quality;

    move-result-object v0

    return-object v0
.end method

.method public static musicQualityToDownloadQuality(Lcn/kuwo/base/bean/MusicQuality;)Lcn/kuwo/service/DownloadProxy$Quality;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcn/kuwo/base/bean/MusicQuality;->d:Lcn/kuwo/base/bean/MusicQuality;

    if-ne p0, v1, :cond_2

    sget-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->e:Lcn/kuwo/service/DownloadProxy$Quality;

    goto :goto_0

    :cond_2
    sget-object v1, Lcn/kuwo/base/bean/MusicQuality;->c:Lcn/kuwo/base/bean/MusicQuality;

    if-ne p0, v1, :cond_3

    sget-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->d:Lcn/kuwo/service/DownloadProxy$Quality;

    goto :goto_0

    :cond_3
    sget-object v1, Lcn/kuwo/base/bean/MusicQuality;->b:Lcn/kuwo/base/bean/MusicQuality;

    if-ne p0, v1, :cond_4

    sget-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->c:Lcn/kuwo/service/DownloadProxy$Quality;

    goto :goto_0

    :cond_4
    sget-object v1, Lcn/kuwo/base/bean/MusicQuality;->a:Lcn/kuwo/base/bean/MusicQuality;

    if-ne p0, v1, :cond_0

    sget-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->b:Lcn/kuwo/service/DownloadProxy$Quality;

    goto :goto_0
.end method

.method public static resetQuality()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcn/kuwo/base/util/QualityUtils;->getConfigQuality()I

    move-result v0

    sget-object v1, Lcn/kuwo/service/DownloadProxy$Quality;->c:Lcn/kuwo/service/DownloadProxy$Quality;

    invoke-virtual {v1}, Lcn/kuwo/service/DownloadProxy$Quality;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    const-string v0, ""

    const-string v1, "music_quality_when_play"

    invoke-static {v0, v1, v2, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;IZ)Z

    :cond_0
    return-void
.end method

.method public static savePlayQuality(I)V
    .locals 3

    const-string v0, ""

    const-string v1, "music_quality_when_play"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;IZ)Z

    return-void
.end method
