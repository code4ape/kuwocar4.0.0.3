.class final Lcn/kuwo/ui/JumpUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/mod/quku/OnRequestListener;


# instance fields
.field final synthetic val$onlineExtra:Lcn/kuwo/mod/quku/OnlineExtra;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/quku/OnlineExtra;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/ui/JumpUtils$1;->val$onlineExtra:Lcn/kuwo/mod/quku/OnlineExtra;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequest(Lcn/kuwo/mod/quku/QukuRequestState;[B)V
    .locals 4

    sget-object v0, Lcn/kuwo/ui/JumpUtils$2;->$SwitchMap$cn$kuwo$mod$quku$QukuRequestState:[I

    invoke-virtual {p1}, Lcn/kuwo/mod/quku/QukuRequestState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcn/kuwo/ui/JumpUtils$1;->val$onlineExtra:Lcn/kuwo/mod/quku/OnlineExtra;

    invoke-virtual {v0}, Lcn/kuwo/mod/quku/OnlineExtra;->d()Lcn/kuwo/mod/quku/OnlineType;

    move-result-object v0

    invoke-static {v0, p2}, Lcn/kuwo/mod/quku/ResultParser;->a(Lcn/kuwo/mod/quku/OnlineType;[B)Lcn/kuwo/base/bean/online/OnlineRootInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/kuwo/base/bean/online/OnlineRootInfo;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcn/kuwo/base/bean/online/OnlineRootInfo;->b()Lcn/kuwo/base/bean/online/BaseOnlineSection;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    const-string v0, "\u83b7\u53d6\u6570\u636e\u5931\u8d25"

    invoke-static {v0}, Lcn/kuwo/base/util/ToastUtil;->showDefault(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcn/kuwo/base/bean/online/OnlineRootInfo;->b()Lcn/kuwo/base/bean/online/BaseOnlineSection;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/base/bean/online/BaseOnlineSection;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/base/bean/quku/BaseQukuItem;

    instance-of v3, v0, Lcn/kuwo/base/bean/quku/MusicInfo;

    if-eqz v3, :cond_3

    check-cast v0, Lcn/kuwo/base/bean/quku/MusicInfo;

    invoke-virtual {v0}, Lcn/kuwo/base/bean/quku/MusicInfo;->b()Lcn/kuwo/base/bean/Music;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/ui/JumpUtils$1;->val$onlineExtra:Lcn/kuwo/mod/quku/OnlineExtra;

    invoke-virtual {v0}, Lcn/kuwo/mod/quku/OnlineExtra;->getId()J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-static {v1, v2, v3, v0}, Lcn/kuwo/base/util/PlayMusicHelper;->playOnlineMusic(Ljava/util/List;JI)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
