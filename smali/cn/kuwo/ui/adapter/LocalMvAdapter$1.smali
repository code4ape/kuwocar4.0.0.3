.class Lcn/kuwo/ui/adapter/LocalMvAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/adapter/LocalMvAdapter;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/adapter/LocalMvAdapter;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/adapter/LocalMvAdapter$1;->this$0:Lcn/kuwo/ui/adapter/LocalMvAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v1, -0x1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/ui/adapter/LocalMvAdapter$1;->this$0:Lcn/kuwo/ui/adapter/LocalMvAdapter;

    invoke-static {v1}, Lcn/kuwo/ui/adapter/LocalMvAdapter;->access$400(Lcn/kuwo/ui/adapter/LocalMvAdapter;)Lcn/kuwo/ui/adapter/LocalMvAdapter$OnItemDeleteClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/ui/adapter/LocalMvAdapter$1;->this$0:Lcn/kuwo/ui/adapter/LocalMvAdapter;

    invoke-static {v1}, Lcn/kuwo/ui/adapter/LocalMvAdapter;->access$400(Lcn/kuwo/ui/adapter/LocalMvAdapter;)Lcn/kuwo/ui/adapter/LocalMvAdapter$OnItemDeleteClickListener;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/ui/adapter/LocalMvAdapter$1;->this$0:Lcn/kuwo/ui/adapter/LocalMvAdapter;

    invoke-interface {v1, v2, v0}, Lcn/kuwo/ui/adapter/LocalMvAdapter$OnItemDeleteClickListener;->onClick(Lcn/kuwo/ui/adapter/LocalMvAdapter;I)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method
