.class Lcn/kuwo/kwmusiccar/WelcomeActivity$1;
.super Lcn/kuwo/core/messagemgr/MessageManager$Runner;


# instance fields
.field final synthetic this$0:Lcn/kuwo/kwmusiccar/WelcomeActivity;


# direct methods
.method constructor <init>(Lcn/kuwo/kwmusiccar/WelcomeActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity$1;->this$0:Lcn/kuwo/kwmusiccar/WelcomeActivity;

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    sget-wide v0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->currentWTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->currentWTime:J

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcn/kuwo/kwmusiccar/WelcomeActivity;->currentWTime:J

    sub-long/2addr v0, v2

    sget-boolean v2, Lcn/kuwo/kwmusiccar/WelcomeActivity;->initFinished:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    :cond_1
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    const/16 v1, 0x12c

    iget-object v2, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity$1;->this$0:Lcn/kuwo/kwmusiccar/WelcomeActivity;

    invoke-static {v2}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->access$000(Lcn/kuwo/kwmusiccar/WelcomeActivity;)Lcn/kuwo/core/messagemgr/MessageManager$Runner;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->a(ILcn/kuwo/core/messagemgr/MessageManager$Runner;)V

    const-string v0, "serviceinit"

    const-string v1, "\u670d\u52a1\u8fd8\u6ca1\u521d\u59cb\u5316\u5b8c\u6210"

    invoke-static {v0, v1}, Lcn/kuwo/base/log/LogMgr;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/kuwo/service/MainService;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    sput-boolean v0, Lcn/kuwo/kwmusiccar/WelcomeActivity;->initFinished:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    iget-object v2, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity$1;->this$0:Lcn/kuwo/kwmusiccar/WelcomeActivity;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/IObserverBase;)V

    iget-object v0, p0, Lcn/kuwo/kwmusiccar/WelcomeActivity$1;->this$0:Lcn/kuwo/kwmusiccar/WelcomeActivity;

    const-class v1, Lcn/kuwo/kwmusiccar/MainActivity;

    invoke-static {v0, v1}, Lcn/kuwo/kwmusiccar/WelcomeActivity;->access$100(Lcn/kuwo/kwmusiccar/WelcomeActivity;Ljava/lang/Class;)V

    invoke-static {}, Lcn/kuwo/core/messagemgr/MessageManager;->a()Lcn/kuwo/core/messagemgr/MessageManager;

    move-result-object v0

    sget-object v1, Lcn/kuwo/core/messagemgr/MessageID;->b:Lcn/kuwo/core/messagemgr/MessageID;

    new-instance v2, Lcn/kuwo/kwmusiccar/WelcomeActivity$1$1;

    invoke-direct {v2, p0}, Lcn/kuwo/kwmusiccar/WelcomeActivity$1$1;-><init>(Lcn/kuwo/kwmusiccar/WelcomeActivity$1;)V

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/core/messagemgr/MessageManager;->b(Lcn/kuwo/core/messagemgr/MessageID;Lcn/kuwo/core/messagemgr/MessageManager$Caller;)V

    goto :goto_0
.end method
