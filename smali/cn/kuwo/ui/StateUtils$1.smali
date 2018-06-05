.class Lcn/kuwo/ui/StateUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/StateUtils;

.field final synthetic val$onScreenClickListener:Lcn/kuwo/ui/StateUtils$OnScreenClickListener;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/StateUtils;Lcn/kuwo/ui/StateUtils$OnScreenClickListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/StateUtils$1;->this$0:Lcn/kuwo/ui/StateUtils;

    iput-object p2, p0, Lcn/kuwo/ui/StateUtils$1;->val$onScreenClickListener:Lcn/kuwo/ui/StateUtils$OnScreenClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils$1;->val$onScreenClickListener:Lcn/kuwo/ui/StateUtils$OnScreenClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/StateUtils$1;->val$onScreenClickListener:Lcn/kuwo/ui/StateUtils$OnScreenClickListener;

    invoke-interface {v0}, Lcn/kuwo/ui/StateUtils$OnScreenClickListener;->onScreenClick()V

    :cond_0
    return-void
.end method
