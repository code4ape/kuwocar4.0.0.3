.class Lcn/kuwo/ui/fragment/MvFragment$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/MvFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/MvFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/MvFragment$8;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFail(Lcn/kuwo/base/bean/Music;)V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$8;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    const-string v1, "\u52a0\u8f7d\u5931\u8d25"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcn/kuwo/ui/fragment/MvFragment;->access$600(Lcn/kuwo/ui/fragment/MvFragment;Ljava/lang/String;I)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$8;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/kuwo/ui/fragment/MvFragment;->access$1302(Lcn/kuwo/ui/fragment/MvFragment;Z)Z

    return-void
.end method

.method public onLoadSuccess(Lcn/kuwo/base/bean/Music;Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$8;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MvFragment;->access$900(Lcn/kuwo/ui/fragment/MvFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$8;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment$8;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v1}, Lcn/kuwo/ui/fragment/MvFragment;->access$1000(Lcn/kuwo/ui/fragment/MvFragment;)I

    move-result v1

    invoke-static {v0, p1, p2, v1}, Lcn/kuwo/ui/fragment/MvFragment;->access$1100(Lcn/kuwo/ui/fragment/MvFragment;Lcn/kuwo/base/bean/Music;Landroid/net/Uri;I)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$8;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/kuwo/ui/fragment/MvFragment;->access$902(Lcn/kuwo/ui/fragment/MvFragment;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$8;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v0, p1, p2}, Lcn/kuwo/ui/fragment/MvFragment;->access$1200(Lcn/kuwo/ui/fragment/MvFragment;Lcn/kuwo/base/bean/Music;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onLoading(Lcn/kuwo/base/bean/Music;)V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$8;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d\u3002\u3002\u3002"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/kuwo/ui/fragment/MvFragment;->access$600(Lcn/kuwo/ui/fragment/MvFragment;Ljava/lang/String;I)V

    return-void
.end method
