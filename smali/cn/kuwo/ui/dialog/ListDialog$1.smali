.class Lcn/kuwo/ui/dialog/ListDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/ui/adapter/BaseKuwoAdapter$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/dialog/ListDialog;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/dialog/ListDialog;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/dialog/ListDialog$1;->this$0:Lcn/kuwo/ui/dialog/ListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcn/kuwo/ui/adapter/BaseKuwoAdapter;I)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/ui/dialog/ListDialog$1;->this$0:Lcn/kuwo/ui/dialog/ListDialog;

    invoke-static {v0}, Lcn/kuwo/ui/dialog/ListDialog;->access$000(Lcn/kuwo/ui/dialog/ListDialog;)Lcn/kuwo/ui/dialog/ListDialog$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/dialog/ListDialog$1;->this$0:Lcn/kuwo/ui/dialog/ListDialog;

    invoke-static {v0}, Lcn/kuwo/ui/dialog/ListDialog;->access$000(Lcn/kuwo/ui/dialog/ListDialog;)Lcn/kuwo/ui/dialog/ListDialog$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/dialog/ListDialog$1;->this$0:Lcn/kuwo/ui/dialog/ListDialog;

    invoke-static {v1}, Lcn/kuwo/ui/dialog/ListDialog;->access$100(Lcn/kuwo/ui/dialog/ListDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcn/kuwo/ui/dialog/ListDialog$OnItemClickListener;->onItemClick(Ljava/util/List;I)V

    :cond_0
    return-void
.end method
