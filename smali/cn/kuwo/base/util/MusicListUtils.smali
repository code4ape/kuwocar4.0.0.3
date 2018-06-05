.class public Lcn/kuwo/base/util/MusicListUtils;
.super Ljava/lang/Object;


# static fields
.field private static final NEW_LIST_TAG:Ljava/lang/String; = "<create new pl>"

.field private static checkedListRadio:Landroid/widget/RadioButton; = null

.field private static listRadios:Ljava/util/List; = null

.field private static final noSDTips:Ljava/lang/String; = "sd\u5361\u4e0d\u53ef\u7528"

.field private static final noSpaceTips:Ljava/lang/String; = "\u5269\u4f59\u7a7a\u95f4\u4e0d\u8db3\uff0c\u8bf7\u6e05\u7406\u540e\u518d\u8bd5"

.field private static prepareAddMusicList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToList(Lcn/kuwo/base/bean/Music;Lcn/kuwo/base/util/MusicListUtils$AddToListListener;Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0, p1, p2}, Lcn/kuwo/base/util/MusicListUtils;->addToList(Ljava/util/List;Lcn/kuwo/base/util/MusicListUtils$AddToListListener;Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;)V

    return-void
.end method

.method public static addToList(Ljava/util/List;Lcn/kuwo/base/util/MusicListUtils$AddToListListener;Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;)V
    .locals 0

    return-void
.end method

.method private static checkDownloadPath()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static checkSDCard()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcn/kuwo/base/util/SDCardUtils;->isAvaliable()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sd\u5361\u4e0d\u53ef\u7528"

    invoke-static {v1}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcn/kuwo/base/util/KwFileUtils;->isExternalSpaceAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u5269\u4f59\u7a7a\u95f4\u4e0d\u8db3\uff0c\u8bf7\u6e05\u7406\u540e\u518d\u8bd5"

    invoke-static {v1}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static clearList(Landroid/content/Context;Lcn/kuwo/base/bean/MusicList;Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;)V
    .locals 6

    const-string v1, "\u9177\u6211\u63d0\u793a"

    const-string v2, "\u662f\u5426\u6e05\u7a7a\u5217\u8868?"

    const-string v3, "\u6e05\u7a7a"

    const-string v4, "\u53d6\u6d88"

    new-instance v5, Lcn/kuwo/base/util/MusicListUtils$2;

    invoke-direct {v5, p1, p2}, Lcn/kuwo/base/util/MusicListUtils$2;-><init>(Lcn/kuwo/base/bean/MusicList;Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcn/kuwo/ui/dialog/DialogUtils;->showSimpleDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    return-void
.end method

.method public static createList(Lcn/kuwo/base/util/MusicListUtils$CreateListListener;)V
    .locals 0

    return-void
.end method

.method public static deleteList(Landroid/support/v4/app/FragmentActivity;Lcn/kuwo/base/bean/MusicList;)V
    .locals 0

    return-void
.end method

.method public static deleteMusics(Landroid/content/Context;Lcn/kuwo/base/bean/MusicList;Ljava/util/List;Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;)V
    .locals 6

    const-string v1, "\u9177\u6211\u63d0\u793a"

    const-string v2, "\u662f\u5426\u5220\u9664\u6b4c\u66f2?"

    const-string v3, "\u5220\u9664"

    const-string v4, "\u53d6\u6d88"

    new-instance v5, Lcn/kuwo/base/util/MusicListUtils$3;

    invoke-direct {v5, p1, p2, p3}, Lcn/kuwo/base/util/MusicListUtils$3;-><init>(Lcn/kuwo/base/bean/MusicList;Ljava/util/List;Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcn/kuwo/ui/dialog/DialogUtils;->showSimpleDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    return-void
.end method

.method public static deleteMv(Landroid/content/Context;Lcn/kuwo/base/bean/Music;Ljava/lang/String;Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;)V
    .locals 6

    const-string v1, "\u9177\u6211\u63d0\u793a"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u662f\u5426\u5220\u9664MV\u300a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcn/kuwo/base/bean/Music;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u300b?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u5220\u9664"

    const-string v4, "\u53d6\u6d88"

    new-instance v5, Lcn/kuwo/base/util/MusicListUtils$1;

    invoke-direct {v5, p1, p2, p3}, Lcn/kuwo/base/util/MusicListUtils$1;-><init>(Lcn/kuwo/base/bean/Music;Ljava/lang/String;Lcn/kuwo/base/util/MusicListUtils$OnOperationCompeleteListener;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcn/kuwo/ui/dialog/DialogUtils;->showSimpleDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    return-void
.end method

.method public static downloadMusic(Landroid/content/Context;Lcn/kuwo/base/bean/Music;)V
    .locals 1

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcn/kuwo/base/util/MusicListUtils;->downloadMusic(Landroid/content/Context;Lcn/kuwo/base/bean/Music;Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "\u6ca1\u6709\u8054\u7f51\uff0c\u6682\u65f6\u4e0d\u80fd\u7528\u54e6"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static downloadMusic(Landroid/content/Context;Lcn/kuwo/base/bean/Music;Z)V
    .locals 1

    invoke-static {}, Lcn/kuwo/base/util/MusicListUtils;->checkSDCard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcn/kuwo/base/util/MusicListUtils;->downloadMusicInner(Landroid/content/Context;Lcn/kuwo/base/bean/Music;Z)V

    :cond_0
    return-void
.end method

.method public static downloadMusic(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/kuwo/base/util/MusicListUtils;->downloadMusic(Ljava/util/List;Z)V

    return-void
.end method

.method public static downloadMusic(Ljava/util/List;Z)V
    .locals 1

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcn/kuwo/base/util/SDCardUtils;->isAvaliable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "sd\u5361\u4e0d\u53ef\u7528"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcn/kuwo/base/util/KwFileUtils;->isExternalSpaceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u5269\u4f59\u7a7a\u95f4\u4e0d\u8db3\uff0c\u8bf7\u6e05\u7406\u540e\u518d\u8bd5"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "\u6ca1\u6709\u8054\u7f51\uff0c\u6682\u65f6\u4e0d\u80fd\u7528\u54e6"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static downloadMusicInner(Landroid/content/Context;Lcn/kuwo/base/bean/Music;Z)V
    .locals 4

    const-string v0, ""

    const-string v1, "new_music_quality_when_download"

    invoke-static {}, Lcn/kuwo/mod/settings/SettingsDefualtValueUtls;->a()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    if-eqz p2, :cond_3

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcn/kuwo/base/bean/Music;->d()Lcn/kuwo/base/bean/NetResource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/kuwo/base/bean/Music;->j()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    :cond_0
    new-instance v0, Lcn/kuwo/base/util/MusicQualityUtils;

    invoke-direct {v0}, Lcn/kuwo/base/util/MusicQualityUtils;-><init>()V

    invoke-virtual {v0, p1}, Lcn/kuwo/base/util/MusicQualityUtils;->fetchMusicQuality(Lcn/kuwo/base/bean/Music;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {p0, p1}, Lcn/kuwo/ui/dialog/DialogUtils;->showDownloadDialog(Landroid/content/Context;Lcn/kuwo/base/bean/Music;)Landroid/app/Dialog;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcn/kuwo/base/util/MusicListUtils;->checkDownloadPath()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, p2, v0}, Lcn/kuwo/base/util/MusicListUtils;->selQualityAndDownload(Lcn/kuwo/base/bean/Music;ZI)V

    goto :goto_0
.end method

.method public static favoriteSong(Lcn/kuwo/base/bean/Music;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-static {p0}, Lcn/kuwo/base/util/MusicListUtils;->isFavorite(Lcn/kuwo/base/bean/Music;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v0

    const-string v1, "\u6211\u559c\u6b22\u542c"

    invoke-interface {v0, v1, p0}, Lcn/kuwo/mod/list/IListMgr;->a(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I

    move-result v0

    if-ne v3, v0, :cond_0

    const-string v0, "\u559c\u6b22\u5931\u8d25"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, -0x2

    if-ne v1, v0, :cond_1

    const-string v0, "\u559c\u6b22\u5931\u8d25\uff0c\u5217\u8868\u5df2\u8fbe\u5230\u4e0a\u9650"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "\u6b4c\u66f2\u6210\u529f\u6dfb\u52a0\u81f3\u6211\u559c\u6b22\u542c\u5217\u8868"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog$OperationType;->d:Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog$OperationType;

    invoke-static {v0, p0, v4, v3}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog$OperationType;Lcn/kuwo/base/bean/Music;Lcn/kuwo/base/bean/MusicList;I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v1

    const-string v2, "\u6211\u559c\u6b22\u542c"

    invoke-interface {v1, v2, p0}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;Lcn/kuwo/base/bean/Music;)I

    move-result v1

    if-ne v0, v1, :cond_3

    const-string v0, "\u5df2\u53d6\u6d88\u559c\u6b22"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog$OperationType;->e:Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog$OperationType;

    invoke-static {v0, p0, v4, v3}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog$OperationType;Lcn/kuwo/base/bean/Music;Lcn/kuwo/base/bean/MusicList;I)V

    goto :goto_0

    :cond_3
    const-string v0, "\u53d6\u6d88\u559c\u6b22\u5931\u8d25"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isDownloadedOrLocal(Lcn/kuwo/base/bean/Music;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v2

    sget-object v3, Lcn/kuwo/base/bean/ListType;->b:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcn/kuwo/base/bean/MusicList;->b(Lcn/kuwo/base/bean/Music;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v2

    sget-object v3, Lcn/kuwo/base/bean/ListType;->g:Lcn/kuwo/base/bean/ListType;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/ListType;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcn/kuwo/base/bean/MusicList;->b(Lcn/kuwo/base/bean/Music;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method public static isFavorite(Lcn/kuwo/base/bean/Music;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->k()Lcn/kuwo/mod/list/IListMgr;

    move-result-object v1

    const-string v2, "\u6211\u559c\u6b22\u542c"

    invoke-interface {v1, v2}, Lcn/kuwo/mod/list/IListMgr;->c(Ljava/lang/String;)Lcn/kuwo/base/bean/MusicList;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    invoke-virtual {v1, p0}, Lcn/kuwo/base/bean/MusicList;->d(Lcn/kuwo/base/bean/Music;)I

    move-result v1

    if-eq v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static realDownload(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$Quality;)V
    .locals 2

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->f()Lcn/kuwo/mod/download/IDownloadMgr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Lcn/kuwo/mod/download/IDownloadMgr;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$Quality;Z)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u5f00\u59cb\u4e0b\u8f7d"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, -0x2

    if-ne v1, v0, :cond_1

    const-string v0, "\u6b4c\u66f2\u6587\u4ef6\u5df2\u4e0b\u8f7d"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "\u4e0b\u8f7d\u4efb\u52a1\u5df2\u5b58\u5728"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static renameList(Lcn/kuwo/base/bean/MusicList;)V
    .locals 0

    return-void
.end method

.method private static selQualityAndDownload(Lcn/kuwo/base/bean/Music;ZI)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcn/kuwo/base/bean/Music;->v:Lcn/kuwo/service/DownloadProxy$Quality;

    invoke-static {p0, v0}, Lcn/kuwo/base/util/MusicListUtils;->realDownload(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$Quality;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->a:Lcn/kuwo/service/DownloadProxy$Quality;

    packed-switch p2, :pswitch_data_0

    :goto_1
    invoke-static {p0, v0}, Lcn/kuwo/base/util/MusicListUtils;->realDownload(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$Quality;)V

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->b:Lcn/kuwo/service/DownloadProxy$Quality;

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->c:Lcn/kuwo/service/DownloadProxy$Quality;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->d:Lcn/kuwo/service/DownloadProxy$Quality;

    goto :goto_1

    :pswitch_3
    sget-object v0, Lcn/kuwo/service/DownloadProxy$Quality;->e:Lcn/kuwo/service/DownloadProxy$Quality;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static showNameErrorToast(Lcn/kuwo/mod/list/IListMgr$NameErrorType;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/kuwo/base/util/MusicListUtils$4;->$SwitchMap$cn$kuwo$mod$list$IListMgr$NameErrorType:[I

    invoke-virtual {p0}, Lcn/kuwo/mod/list/IListMgr$NameErrorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "\u8bf7\u8f93\u5165\u5217\u8868\u540d"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "\u5217\u8868\u540d\u4e0d\u80fd\u8d85\u8fc720\u4e2a\u6c49\u5b57"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "\u5217\u8868\u540d\u4e0d\u80fd\u5305\u542b\\/:*?\"<>|\u5b57\u7b26"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5217\u8868"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5df2\u5b58\u5728"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
