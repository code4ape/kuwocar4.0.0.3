.class public interface abstract Lcn/kuwo/core/observers/IUserInfoMgrObserver;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/core/messagemgr/IObserverBase;


# virtual methods
.method public abstract IUserInfoMgrObserver_OnLogin(ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract IUserInfoMgrObserver_OnLogout(ZLjava/lang/String;I)V
.end method

.method public abstract IUserInfoMgrObserver_OnReg(ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract IUserInfoMgrObserver_OnSendRegSms(ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract IUserInfoMgrObserver_OnUserStatusChange(ZLjava/lang/String;)V
.end method
