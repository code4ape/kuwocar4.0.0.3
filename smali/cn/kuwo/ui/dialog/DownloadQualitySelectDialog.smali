.class public Lcn/kuwo/ui/dialog/DownloadQualitySelectDialog;
.super Lcn/kuwo/ui/dialog/ListDialog;


# static fields
.field private static final QUALITY_AUTO:I = 0x0

.field private static final QUALITY_FF:I = 0x4

.field private static final QUALITY_H:I = 0x2

.field private static final QUALITY_P:I = 0x3

.field private static final QUALITY_S:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "\u4e0b\u8f7d\u97f3\u8d28"

    invoke-direct {p0, p1, v0}, Lcn/kuwo/ui/dialog/ListDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcn/kuwo/ui/dialog/ListDialog;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcn/kuwo/ui/dialog/DownloadQualitySelectDialog$1;

    invoke-direct {v0, p0}, Lcn/kuwo/ui/dialog/DownloadQualitySelectDialog$1;-><init>(Lcn/kuwo/ui/dialog/DownloadQualitySelectDialog;)V

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/dialog/DownloadQualitySelectDialog;->setOnItemClickListener(Lcn/kuwo/ui/dialog/ListDialog$OnItemClickListener;)V

    return-void
.end method

.method protected onDataPrepared()V
    .locals 8

    const v7, 0x7f09000a

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcn/kuwo/ui/dialog/DownloadQualitySelectDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090005

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;

    invoke-direct {v3}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->setName(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->setId(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090010

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(1-2M/\u9996)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;

    invoke-direct {v3}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->setName(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->setId(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f09000b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(4-5M/\u9996)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;

    invoke-direct {v3}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->setName(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->setId(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f09000e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(7-10M/\u9996)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;

    invoke-direct {v3}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->setName(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->setId(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcn/kuwo/mod/settings/KwSettingMgr;->a()Lcn/kuwo/mod/settings/KwSettingMgr;

    move-result-object v2

    const-string v3, "isLosslessDownload"

    invoke-virtual {v2, v3, v6}, Lcn/kuwo/mod/settings/KwSettingMgr;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f090009

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "(25-35M/\u9996)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;

    invoke-direct {v0}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->setName(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->setId(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0, v1}, Lcn/kuwo/ui/dialog/DownloadQualitySelectDialog;->setListItem(Ljava/util/List;)V

    const-string v0, ""

    const-string v2, "new_music_quality_when_download"

    invoke-static {v0, v2, v5}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcn/kuwo/ui/dialog/DownloadQualitySelectDialog;->id2Postion(Ljava/util/List;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/kuwo/ui/dialog/DownloadQualitySelectDialog;->setDufualtPos(I)V

    return-void
.end method
