.class Lcn/kuwo/ui/PlayController$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/core/observers/ISkinManagerObserver;


# instance fields
.field final synthetic this$0:Lcn/kuwo/ui/PlayController;


# direct methods
.method constructor <init>(Lcn/kuwo/ui/PlayController;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/PlayController$8;->this$0:Lcn/kuwo/ui/PlayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ISkinManagerOb_AddSkin()V
    .locals 0

    return-void
.end method

.method public ISkinManagerOb_ChangeSkin()V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/ui/PlayController$8;->this$0:Lcn/kuwo/ui/PlayController;

    invoke-static {v0}, Lcn/kuwo/ui/PlayController;->access$500(Lcn/kuwo/ui/PlayController;)V

    return-void
.end method

.method public ISkinManagerOb_DeleteSkin()V
    .locals 0

    return-void
.end method
