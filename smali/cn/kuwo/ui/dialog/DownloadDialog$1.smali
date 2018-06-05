.class Lcn/kuwo/ui/dialog/DownloadDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/ui/dialog/ListDialog$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/dialog/DownloadDialog;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/dialog/DownloadDialog;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/dialog/DownloadDialog$1;->this$0:Lcn/kuwo/ui/dialog/DownloadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Ljava/util/List;I)V
    .locals 2

    iget-object v1, p0, Lcn/kuwo/ui/dialog/DownloadDialog$1;->this$0:Lcn/kuwo/ui/dialog/DownloadDialog;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;

    invoke-virtual {v0}, Lcn/kuwo/ui/adapter/ListDialogAdapter$ListDialogItem;->getId()I

    move-result v0

    invoke-static {v1, v0}, Lcn/kuwo/ui/dialog/DownloadDialog;->access$000(Lcn/kuwo/ui/dialog/DownloadDialog;I)V

    return-void
.end method
