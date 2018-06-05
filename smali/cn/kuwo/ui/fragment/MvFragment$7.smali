.class Lcn/kuwo/ui/fragment/MvFragment$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/mod/playcontrol/MVAntistealing$MVAntistealingListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/MvFragment;

.field final synthetic val$music:Lcn/kuwo/base/bean/Music;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/MvFragment;Lcn/kuwo/base/bean/Music;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/MvFragment$7;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    iput-object p2, p0, Lcn/kuwo/ui/fragment/MvFragment$7;->val$music:Lcn/kuwo/base/bean/Music;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMVAntistealingFinished(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$7;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MvFragment;->access$800(Lcn/kuwo/ui/fragment/MvFragment;)Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment$7;->val$music:Lcn/kuwo/base/bean/Music;

    invoke-interface {v0, v1}, Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;->onLoadFail(Lcn/kuwo/base/bean/Music;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/ui/fragment/MvFragment$7;->this$0:Lcn/kuwo/ui/fragment/MvFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MvFragment;->access$800(Lcn/kuwo/ui/fragment/MvFragment;)Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/ui/fragment/MvFragment$7;->val$music:Lcn/kuwo/base/bean/Music;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/kuwo/ui/fragment/MvFragment$OnVideoLoadListener;->onLoadSuccess(Lcn/kuwo/base/bean/Music;Landroid/net/Uri;)V

    goto :goto_0
.end method
