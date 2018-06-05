.class Lcn/kuwo/mod/quku/OnlineTask$OnlineThread$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/quku/QukuRequestState;

.field final synthetic b:[B

.field final synthetic c:Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;Lcn/kuwo/mod/quku/QukuRequestState;[B)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread$1;->c:Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;

    iput-object p2, p0, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread$1;->a:Lcn/kuwo/mod/quku/QukuRequestState;

    iput-object p3, p0, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread$1;->b:[B

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    iget-object v0, p0, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread$1;->c:Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;

    invoke-static {v0}, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;->a(Lcn/kuwo/mod/quku/OnlineTask$OnlineThread;)Lcn/kuwo/mod/quku/OnRequestListener;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread$1;->a:Lcn/kuwo/mod/quku/QukuRequestState;

    iget-object v2, p0, Lcn/kuwo/mod/quku/OnlineTask$OnlineThread$1;->b:[B

    invoke-interface {v0, v1, v2}, Lcn/kuwo/mod/quku/OnRequestListener;->onRequest(Lcn/kuwo/mod/quku/QukuRequestState;[B)V

    return-void
.end method
