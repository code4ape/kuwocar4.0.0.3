.class Lcn/kuwo/ui/fragment/MineFragment$3;
.super Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/fragment/MineFragment;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/fragment/MineFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/fragment/MineFragment$3;->this$0:Lcn/kuwo/ui/fragment/MineFragment;

    invoke-direct {p0}, Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public IUserInfoMgrObserver_OnLogin(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;->IUserInfoMgrObserver_OnLogin(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MineFragment$3;->this$0:Lcn/kuwo/ui/fragment/MineFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MineFragment;->access$000(Lcn/kuwo/ui/fragment/MineFragment;)V

    return-void
.end method

.method public IUserInfoMgrObserver_OnLogout(ZLjava/lang/String;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;->IUserInfoMgrObserver_OnLogout(ZLjava/lang/String;I)V

    return-void
.end method

.method public IUserInfoMgrObserver_OnReg(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;->IUserInfoMgrObserver_OnReg(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MineFragment$3;->this$0:Lcn/kuwo/ui/fragment/MineFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MineFragment;->access$000(Lcn/kuwo/ui/fragment/MineFragment;)V

    return-void
.end method

.method public IUserInfoMgrObserver_OnSendRegSms(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;->IUserInfoMgrObserver_OnSendRegSms(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MineFragment$3;->this$0:Lcn/kuwo/ui/fragment/MineFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MineFragment;->access$000(Lcn/kuwo/ui/fragment/MineFragment;)V

    return-void
.end method

.method public IUserInfoMgrObserver_OnUserStatusChange(ZLjava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcn/kuwo/core/observers/ext/UserInfoMgrObserver;->IUserInfoMgrObserver_OnUserStatusChange(ZLjava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/ui/fragment/MineFragment$3;->this$0:Lcn/kuwo/ui/fragment/MineFragment;

    invoke-static {v0}, Lcn/kuwo/ui/fragment/MineFragment;->access$000(Lcn/kuwo/ui/fragment/MineFragment;)V

    return-void
.end method
