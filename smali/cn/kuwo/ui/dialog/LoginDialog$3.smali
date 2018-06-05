.class Lcn/kuwo/ui/dialog/LoginDialog$3;
.super Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/dialog/LoginDialog;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/dialog/LoginDialog;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/dialog/LoginDialog$3;->this$0:Lcn/kuwo/ui/dialog/LoginDialog;

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public IUserInfoMgrObserver_OnLogin(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/dialog/LoginDialog$3;->this$0:Lcn/kuwo/ui/dialog/LoginDialog;

    invoke-static {v0}, Lcn/kuwo/ui/dialog/LoginDialog;->access$100(Lcn/kuwo/ui/dialog/LoginDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/dialog/LoginDialog$3;->this$0:Lcn/kuwo/ui/dialog/LoginDialog;

    invoke-static {v0}, Lcn/kuwo/ui/dialog/LoginDialog;->access$100(Lcn/kuwo/ui/dialog/LoginDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/dialog/LoginDialog$3;->this$0:Lcn/kuwo/ui/dialog/LoginDialog;

    invoke-static {v0}, Lcn/kuwo/ui/dialog/LoginDialog;->access$100(Lcn/kuwo/ui/dialog/LoginDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcn/kuwo/ui/dialog/LoginDialog$3;->this$0:Lcn/kuwo/ui/dialog/LoginDialog;

    invoke-virtual {v0}, Lcn/kuwo/ui/dialog/LoginDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/ui/dialog/LoginDialog$3;->this$0:Lcn/kuwo/ui/dialog/LoginDialog;

    invoke-virtual {v0}, Lcn/kuwo/ui/dialog/LoginDialog;->dismiss()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {p2}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0
.end method
