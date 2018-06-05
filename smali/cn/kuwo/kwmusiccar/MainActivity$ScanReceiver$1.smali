.class Lcn/kuwo/kwmusiccar/MainActivity$ScanReceiver$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic this$1:Lcn/kuwo/kwmusiccar/MainActivity$ScanReceiver;

.field final synthetic val$tempPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/kuwo/kwmusiccar/MainActivity$ScanReceiver;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/kwmusiccar/MainActivity$ScanReceiver$1;->this$1:Lcn/kuwo/kwmusiccar/MainActivity$ScanReceiver;

    iput-object p2, p0, Lcn/kuwo/kwmusiccar/MainActivity$ScanReceiver$1;->val$tempPath:Ljava/lang/String;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->g()Lcn/kuwo/mod/localmgr/ILocalMgr;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/mod/localmgr/ILocalMgr;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/kuwo/core/modulemgr/ModMgr;->g()Lcn/kuwo/mod/localmgr/ILocalMgr;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/kuwo/kwmusiccar/MainActivity$ScanReceiver$1;->val$tempPath:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Lcn/kuwo/mod/localmgr/ILocalMgr;->a(Ljava/util/List;Z)V

    :cond_0
    return-void
.end method
