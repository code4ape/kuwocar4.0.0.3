.class final Lcn/kuwo/kwmusiccar/KwCarPlay$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/core/observers/ILocalMgrObserver;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ILocalMgrObserver_OnFinished(IIILjava/util/Collection;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/kuwo/kwmusiccar/KwCarPlay;->access$602(Z)Z

    return-void
.end method

.method public ILocalMgrObserver_OnListChanged(Ljava/util/Collection;)V
    .locals 0

    return-void
.end method

.method public ILocalMgrObserver_OnProgress(IIILjava/lang/String;)V
    .locals 0

    return-void
.end method
