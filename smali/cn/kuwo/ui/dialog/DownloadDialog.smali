.class public Lcn/kuwo/ui/dialog/DownloadDialog;
.super Lcn/kuwo/ui/dialog/ListDialog;


# static fields
.field private static final QUALITYS:[Lcn/kuwo/service/DownloadProxy$Quality;

.field private static final QUALITY_FF:I = 0x4

.field private static final QUALITY_H:I = 0x2

.field private static final QUALITY_P:I = 0x3

.field private static final QUALITY_S:I = 0x1


# instance fields
.field private curMusic:Lcn/kuwo/base/bean/Music;

.field private isSingleDownload:Z

.field private musics:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/kuwo/service/DownloadProxy$Quality;

    const/4 v1, 0x0

    sget-object v2, Lcn/kuwo/service/DownloadProxy$Quality;->a:Lcn/kuwo/service/DownloadProxy$Quality;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcn/kuwo/service/DownloadProxy$Quality;->b:Lcn/kuwo/service/DownloadProxy$Quality;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcn/kuwo/service/DownloadProxy$Quality;->c:Lcn/kuwo/service/DownloadProxy$Quality;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcn/kuwo/service/DownloadProxy$Quality;->d:Lcn/kuwo/service/DownloadProxy$Quality;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcn/kuwo/service/DownloadProxy$Quality;->e:Lcn/kuwo/service/DownloadProxy$Quality;

    aput-object v2, v0, v1

    sput-object v0, Lcn/kuwo/ui/dialog/DownloadDialog;->QUALITYS:[Lcn/kuwo/service/DownloadProxy$Quality;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "\u4e0b\u8f7d\u9009\u62e9"

    invoke-direct {p0, p1, v0}, Lcn/kuwo/ui/dialog/ListDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/ui/dialog/DownloadDialog;->isSingleDownload:Z

    return-void
.end method

.method static synthetic access$000(Lcn/kuwo/ui/dialog/DownloadDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/ui/dialog/DownloadDialog;->download(I)V

    return-void
.end method

.method private download(I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcn/kuwo/base/util/NetworkStateUtil;->isAvaliable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/kuwo/ui/dialog/DownloadDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcn/kuwo/base/util/DirUtils;->getDirectory(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/base/util/SDCardUtils;->isAvaliable()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcn/kuwo/ui/dialog/DownloadDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/kuwo/ui/dialog/DownloadDialog;->dismiss()V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcn/kuwo/base/util/KwFileUtils;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcn/kuwo/ui/dialog/DownloadDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/kuwo/ui/dialog/DownloadDialog;->dismiss()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->f()Lcn/kuwo/mod/download/IDownloadMgr;

    move-result-object v0

    iget-boolean v1, p0, Lcn/kuwo/ui/dialog/DownloadDialog;->isSingleDownload:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcn/kuwo/ui/dialog/DownloadDialog;->curMusic:Lcn/kuwo/base/bean/Music;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_4

    sget-object v2, Lcn/kuwo/ui/dialog/DownloadDialog;->QUALITYS:[Lcn/kuwo/service/DownloadProxy$Quality;

    aget-object v2, v2, p1

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcn/kuwo/mod/download/IDownloadMgr;->a(Lcn/kuwo/base/bean/Music;Lcn/kuwo/service/DownloadProxy$Quality;Z)I

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog$OperationType;->f:Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog$OperationType;

    sget-object v2, Lcn/kuwo/ui/dialog/DownloadDialog;->QUALITYS:[Lcn/kuwo/service/DownloadProxy$Quality;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcn/kuwo/service/DownloadProxy$Quality;->ordinal()I

    move-result v2

    invoke-static {v0, v1, v4, v2}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog$OperationType;Lcn/kuwo/base/bean/Music;Lcn/kuwo/base/bean/MusicList;I)V

    const-string v0, "\u5f00\u59cb\u4e0b\u8f7d"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcn/kuwo/ui/dialog/DownloadDialog;->dismiss()V

    goto :goto_0

    :cond_5
    const/4 v1, -0x2

    if-ne v1, v0, :cond_6

    const-string v0, "\u6b4c\u66f2\u6587\u4ef6\u5df2\u4e0b\u8f7d"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v0, "\u4e0b\u8f7d\u4efb\u52a1\u5df2\u5b58\u5728"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcn/kuwo/ui/dialog/DownloadDialog;->musics:Ljava/util/List;

    sget-object v2, Lcn/kuwo/ui/dialog/DownloadDialog;->QUALITYS:[Lcn/kuwo/service/DownloadProxy$Quality;

    aget-object v2, v2, p1

    invoke-interface {v0, v1, v2}, Lcn/kuwo/mod/download/IDownloadMgr;->a(Ljava/util/List;Lcn/kuwo/service/DownloadProxy$Quality;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "\u5f00\u59cb\u4e0b\u8f7d"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    sget-object v0, Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog$OperationType;->f:Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog$OperationType;

    iget-object v1, p0, Lcn/kuwo/ui/dialog/DownloadDialog;->musics:Ljava/util/List;

    sget-object v2, Lcn/kuwo/ui/dialog/DownloadDialog;->QUALITYS:[Lcn/kuwo/service/DownloadProxy$Quality;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcn/kuwo/service/DownloadProxy$Quality;->ordinal()I

    move-result v2

    invoke-static {v0, v1, v4, v2}, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils;->a(Lcn/kuwo/base/log/sevicelevel/bean/MusicOperationLog$OperationType;Ljava/util/List;Lcn/kuwo/base/bean/MusicList;I)V

    goto :goto_1

    :cond_8
    const-string v0, "\u6b4c\u66f2\u6587\u4ef6\u5df2\u4e0b\u8f7d"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcn/kuwo/ui/dialog/ListDialog;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcn/kuwo/ui/dialog/DownloadDialog$1;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/dialog/DownloadDialog$1;-><init>(Lcn/kuwo/ui/dialog/DownloadDialog;)V

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/dialog/DownloadDialog;->setOnItemClickListener(Lcn/kuwo/ui/dialog/ListDialog$OnItemClickListener;)V

    return-void
.end method

.method protected onDataPrepared()V
    .locals 15

    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/high16 v10, 0x49800000    # 1048576.0f

    invoke-virtual {p0}, Lcn/kuwo/ui/dialog/DownloadDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v2, p0, Lcn/kuwo/ui/dialog/DownloadDialog;->isSingleDownload:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcn/kuwo/ui/dialog/DownloadDialog;->curMusic:Lcn/kuwo/base/bean/Music;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v3, Lcn/kuwo/base/bean/MusicQuality;->a:Lcn/kuwo/base/bean/MusicQuality;

    invoke-virtual {v2, v3}, Lcn/kuwo/base/bean/Music;->a(Lcn/kuwo/base/bean/MusicQuality;)Lcn/kuwo/base/bean/NetResource;

    move-result-object v3

    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "0.00"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_1

    iget-object v5, v3, Lcn/kuwo/base/bean/NetResource;->c:Lcn/kuwo/base/bean/MusicFormat;

    if-eqz v5, :cond_1

    sget-object v5, Lcn/kuwo/base/bean/MusicFormat;->a:Lcn/kuwo/base/bean/MusicFormat;

    iget-object v6, v3, Lcn/kuwo/base/bean/NetResource;->c:Lcn/kuwo/base/bean/MusicFormat;

    invoke-virtual {v5, v6}, Lcn/kuwo/base/bean/MusicFormat;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;

    invoke-direct {v5}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v3, Lcn/kuwo/base/bean/NetResource;->d:I

    int-to-float v7, v7

    div-float/2addr v7, v10

    float-to-double v8, v7

    invoke-virtual {v4, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f090010

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Mb"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, v3, Lcn/kuwo/base/bean/NetResource;->c:Lcn/kuwo/base/bean/MusicFormat;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/MusicFormat;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "]"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->setName(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->setId(I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v3, Lcn/kuwo/base/bean/MusicQuality;->b:Lcn/kuwo/base/bean/MusicQuality;

    invoke-virtual {v2, v3}, Lcn/kuwo/base/bean/Music;->a(Lcn/kuwo/base/bean/MusicQuality;)Lcn/kuwo/base/bean/NetResource;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v5, v3, Lcn/kuwo/base/bean/NetResource;->c:Lcn/kuwo/base/bean/MusicFormat;

    if-eqz v5, :cond_2

    sget-object v5, Lcn/kuwo/base/bean/MusicFormat;->a:Lcn/kuwo/base/bean/MusicFormat;

    iget-object v6, v3, Lcn/kuwo/base/bean/NetResource;->c:Lcn/kuwo/base/bean/MusicFormat;

    invoke-virtual {v5, v6}, Lcn/kuwo/base/bean/MusicFormat;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget v5, v3, Lcn/kuwo/base/bean/NetResource;->d:I

    int-to-float v5, v5

    div-float/2addr v5, v10

    float-to-double v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f09000b

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "Mb"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v3, Lcn/kuwo/base/bean/NetResource;->c:Lcn/kuwo/base/bean/MusicFormat;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/MusicFormat;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;

    invoke-direct {v3}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;-><init>()V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->setName(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->setId(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v3, Lcn/kuwo/base/bean/MusicQuality;->c:Lcn/kuwo/base/bean/MusicQuality;

    invoke-virtual {v2, v3}, Lcn/kuwo/base/bean/Music;->a(Lcn/kuwo/base/bean/MusicQuality;)Lcn/kuwo/base/bean/NetResource;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v5, v3, Lcn/kuwo/base/bean/NetResource;->c:Lcn/kuwo/base/bean/MusicFormat;

    if-eqz v5, :cond_3

    sget-object v5, Lcn/kuwo/base/bean/MusicFormat;->a:Lcn/kuwo/base/bean/MusicFormat;

    iget-object v6, v3, Lcn/kuwo/base/bean/NetResource;->c:Lcn/kuwo/base/bean/MusicFormat;

    invoke-virtual {v5, v6}, Lcn/kuwo/base/bean/MusicFormat;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget v5, v3, Lcn/kuwo/base/bean/NetResource;->d:I

    int-to-float v5, v5

    div-float/2addr v5, v10

    float-to-double v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f09000e

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "Mb"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v3, Lcn/kuwo/base/bean/NetResource;->c:Lcn/kuwo/base/bean/MusicFormat;

    invoke-virtual {v3}, Lcn/kuwo/base/bean/MusicFormat;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;

    invoke-direct {v3}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;-><init>()V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->setName(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->setId(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, Lcn/kuwo/mod/settings/KwSettingMgr;->a()Lcn/kuwo/mod/settings/KwSettingMgr;

    move-result-object v3

    const-string v5, "isLosslessDownload"

    invoke-virtual {v3, v5, v11}, Lcn/kuwo/mod/settings/KwSettingMgr;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcn/kuwo/base/bean/MusicQuality;->d:Lcn/kuwo/base/bean/MusicQuality;

    invoke-virtual {v2, v3}, Lcn/kuwo/base/bean/Music;->a(Lcn/kuwo/base/bean/MusicQuality;)Lcn/kuwo/base/bean/NetResource;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, v2, Lcn/kuwo/base/bean/NetResource;->c:Lcn/kuwo/base/bean/MusicFormat;

    if-eqz v3, :cond_4

    sget-object v3, Lcn/kuwo/base/bean/MusicFormat;->a:Lcn/kuwo/base/bean/MusicFormat;

    iget-object v5, v2, Lcn/kuwo/base/bean/NetResource;->c:Lcn/kuwo/base/bean/MusicFormat;

    invoke-virtual {v3, v5}, Lcn/kuwo/base/bean/MusicFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, v2, Lcn/kuwo/base/bean/NetResource;->d:I

    int-to-float v3, v3

    div-float/2addr v3, v10

    float-to-double v6, v3

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f090009

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Mb"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v2, Lcn/kuwo/base/bean/NetResource;->c:Lcn/kuwo/base/bean/MusicFormat;

    invoke-virtual {v2}, Lcn/kuwo/base/bean/MusicFormat;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;

    invoke-direct {v0}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->setId(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "\u97f3\u8d28\u83b7\u53d6\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090010

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;

    invoke-direct {v3}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->setName(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->setId(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f09000b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;

    invoke-direct {v3}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->setName(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->setId(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f09000a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f09000e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;

    invoke-direct {v3}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->setName(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->setId(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcn/kuwo/mod/settings/KwSettingMgr;->a()Lcn/kuwo/mod/settings/KwSettingMgr;

    move-result-object v2

    const-string v3, "isLosslessDownload"

    invoke-virtual {v2, v3, v11}, Lcn/kuwo/mod/settings/KwSettingMgr;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f09000a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f090009

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;

    invoke-direct {v0}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->setId(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {p0, v1}, Lcn/kuwo/ui/dialog/DownloadDialog;->setListItem(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public setMusic(Lcn/kuwo/base/bean/Music;)V
    .locals 1

    iput-object p1, p0, Lcn/kuwo/ui/dialog/DownloadDialog;->curMusic:Lcn/kuwo/base/bean/Music;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/ui/dialog/DownloadDialog;->isSingleDownload:Z

    return-void
.end method

.method public setMusics(Ljava/util/List;)V
    .locals 1

    iput-object p1, p0, Lcn/kuwo/ui/dialog/DownloadDialog;->musics:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/ui/dialog/DownloadDialog;->isSingleDownload:Z

    return-void
.end method
