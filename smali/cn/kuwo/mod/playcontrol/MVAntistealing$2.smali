.class Lcn/kuwo/mod/playcontrol/MVAntistealing$2;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/kuwo/mod/playcontrol/MVAntistealing;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/playcontrol/MVAntistealing;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/playcontrol/MVAntistealing$2;->b:Lcn/kuwo/mod/playcontrol/MVAntistealing;

    iput-object p2, p0, Lcn/kuwo/mod/playcontrol/MVAntistealing$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/MVAntistealing$2;->b:Lcn/kuwo/mod/playcontrol/MVAntistealing;

    invoke-static {v0}, Lcn/kuwo/mod/playcontrol/MVAntistealing;->a(Lcn/kuwo/mod/playcontrol/MVAntistealing;)Lcn/kuwo/mod/playcontrol/MVAntistealing$MVAntistealingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/MVAntistealing$2;->b:Lcn/kuwo/mod/playcontrol/MVAntistealing;

    invoke-static {v0}, Lcn/kuwo/mod/playcontrol/MVAntistealing;->a(Lcn/kuwo/mod/playcontrol/MVAntistealing;)Lcn/kuwo/mod/playcontrol/MVAntistealing$MVAntistealingListener;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/MVAntistealing$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/kuwo/mod/playcontrol/MVAntistealing$MVAntistealingListener;->onMVAntistealingFinished(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
