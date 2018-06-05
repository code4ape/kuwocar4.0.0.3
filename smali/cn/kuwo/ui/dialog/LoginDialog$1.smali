.class Lcn/kuwo/ui/dialog/LoginDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/dialog/LoginDialog;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/dialog/LoginDialog;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/dialog/LoginDialog$1;->this$0:Lcn/kuwo/ui/dialog/LoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcn/kuwo/ui/dialog/LoginDialog$1;->this$0:Lcn/kuwo/ui/dialog/LoginDialog;

    invoke-static {v1}, Lcn/kuwo/ui/dialog/LoginDialog;->access$000(Lcn/kuwo/ui/dialog/LoginDialog;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
