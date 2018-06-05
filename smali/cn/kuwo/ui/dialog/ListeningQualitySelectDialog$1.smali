.class Lcn/kuwo/ui/dialog/ListeningQualitySelectDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/ui/dialog/ListDialog$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/dialog/ListeningQualitySelectDialog;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/dialog/ListeningQualitySelectDialog;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/dialog/ListeningQualitySelectDialog$1;->this$0:Lcn/kuwo/ui/dialog/ListeningQualitySelectDialog;

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

    const-string v2, "music_quality_when_play"

    invoke-virtual {v0}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->getId()I

    move-result v0

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;IZ)Z

    iget-object v0, p0, Lcn/kuwo/ui/dialog/ListeningQualitySelectDialog$1;->this$0:Lcn/kuwo/ui/dialog/ListeningQualitySelectDialog;

    invoke-virtual {v0}, Lcn/kuwo/ui/dialog/ListeningQualitySelectDialog;->dismiss()V

    return-void
.end method
