.class Lcn/kuwo/ui/dialog/DownloadQualitySelectDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/ui/dialog/ListDialog$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/dialog/DownloadQualitySelectDialog;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/dialog/DownloadQualitySelectDialog;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/dialog/DownloadQualitySelectDialog$1;->this$0:Lcn/kuwo/ui/dialog/DownloadQualitySelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Ljava/util/List;I)V
    .locals 4

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;

    const-string v1, ""

    const-string v2, "new_music_quality_when_download"

    invoke-virtual {v0}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->getId()I

    move-result v0

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;IZ)Z

    iget-object v0, p0, Lcn/kuwo/ui/dialog/DownloadQualitySelectDialog$1;->this$0:Lcn/kuwo/ui/dialog/DownloadQualitySelectDialog;

    invoke-virtual {v0}, Lcn/kuwo/ui/dialog/DownloadQualitySelectDialog;->dismiss()V

    return-void
.end method
