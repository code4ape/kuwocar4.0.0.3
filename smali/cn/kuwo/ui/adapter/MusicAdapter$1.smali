.class Lcn/kuwo/ui/adapter/MusicAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/adapter/MusicAdapter;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/adapter/MusicAdapter;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/adapter/MusicAdapter$1;->this$0:Lcn/kuwo/ui/adapter/MusicAdapter;

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

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcn/kuwo/ui/adapter/MusicAdapter$1;->this$0:Lcn/kuwo/ui/adapter/MusicAdapter;

    invoke-static {v1}, Lcn/kuwo/ui/adapter/MusicAdapter;->access$800(Lcn/kuwo/ui/adapter/MusicAdapter;)Lcn/kuwo/ui/adapter/MusicAdapter$OnItemDeleteListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/ui/adapter/MusicAdapter$1;->this$0:Lcn/kuwo/ui/adapter/MusicAdapter;

    invoke-static {v1}, Lcn/kuwo/ui/adapter/MusicAdapter;->access$800(Lcn/kuwo/ui/adapter/MusicAdapter;)Lcn/kuwo/ui/adapter/MusicAdapter$OnItemDeleteListener;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/ui/adapter/MusicAdapter$1;->this$0:Lcn/kuwo/ui/adapter/MusicAdapter;

    invoke-interface {v1, v2, v0}, Lcn/kuwo/ui/adapter/MusicAdapter$OnItemDeleteListener;->onItemDelete(Lcn/kuwo/ui/adapter/MusicAdapter;I)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcn/kuwo/ui/adapter/MusicAdapter$1;->this$0:Lcn/kuwo/ui/adapter/MusicAdapter;

    invoke-static {v1}, Lcn/kuwo/ui/adapter/MusicAdapter;->access$900(Lcn/kuwo/ui/adapter/MusicAdapter;)Lcn/kuwo/ui/adapter/MusicAdapter$OnItemLikeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/ui/adapter/MusicAdapter$1;->this$0:Lcn/kuwo/ui/adapter/MusicAdapter;

    invoke-static {v1}, Lcn/kuwo/ui/adapter/MusicAdapter;->access$900(Lcn/kuwo/ui/adapter/MusicAdapter;)Lcn/kuwo/ui/adapter/MusicAdapter$OnItemLikeListener;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/ui/adapter/MusicAdapter$1;->this$0:Lcn/kuwo/ui/adapter/MusicAdapter;

    invoke-interface {v1, v2, v0}, Lcn/kuwo/ui/adapter/MusicAdapter$OnItemLikeListener;->onItemLike(Lcn/kuwo/ui/adapter/MusicAdapter;I)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcn/kuwo/ui/adapter/MusicAdapter$1;->this$0:Lcn/kuwo/ui/adapter/MusicAdapter;

    invoke-static {v1}, Lcn/kuwo/ui/adapter/MusicAdapter;->access$1000(Lcn/kuwo/ui/adapter/MusicAdapter;)Lcn/kuwo/ui/adapter/MusicAdapter$OnPlaySingleListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/ui/adapter/MusicAdapter$1;->this$0:Lcn/kuwo/ui/adapter/MusicAdapter;

    invoke-static {v1}, Lcn/kuwo/ui/adapter/MusicAdapter;->access$1000(Lcn/kuwo/ui/adapter/MusicAdapter;)Lcn/kuwo/ui/adapter/MusicAdapter$OnPlaySingleListener;

    move-result-object v1

    iget-object v2, p0, Lcn/kuwo/ui/adapter/MusicAdapter$1;->this$0:Lcn/kuwo/ui/adapter/MusicAdapter;

    invoke-interface {v1, v2, v0}, Lcn/kuwo/ui/adapter/MusicAdapter$OnPlaySingleListener;->onPlaySingle(Lcn/kuwo/ui/adapter/MusicAdapter;I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0059
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
