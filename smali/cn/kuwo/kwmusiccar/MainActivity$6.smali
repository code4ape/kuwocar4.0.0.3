.class Lcn/kuwo/kwmusiccar/MainActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcn/kuwo/kwmusiccar/MainActivity;


# direct methods
.method constructor <init>(Lcn/kuwo/kwmusiccar/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/kwmusiccar/MainActivity$6;->this$0:Lcn/kuwo/kwmusiccar/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/MainActivity$6;->this$0:Lcn/kuwo/kwmusiccar/MainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/kuwo/kwmusiccar/MainActivity;->moveTaskToBack(Z)Z

    return-void
.end method
