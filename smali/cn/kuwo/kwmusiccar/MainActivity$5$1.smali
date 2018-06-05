.class Lcn/kuwo/kwmusiccar/MainActivity$5$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic this$1:Lcn/kuwo/kwmusiccar/MainActivity$5;

.field final synthetic val$deleteMusics:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/kuwo/kwmusiccar/MainActivity$5;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/kwmusiccar/MainActivity$5$1;->this$1:Lcn/kuwo/kwmusiccar/MainActivity$5;

    iput-object p2, p0, Lcn/kuwo/kwmusiccar/MainActivity$5$1;->val$deleteMusics:Ljava/util/List;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u626b\u63cf\u5230"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/kwmusiccar/MainActivity$5$1;->val$deleteMusics:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u9996\u65e0\u6548\u6b4c\u66f2\uff0c\u5df2\u5220\u9664\uff01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/kuwo/base/util/ToastUtil;->showNormal(Ljava/lang/String;I)V

    return-void
.end method
