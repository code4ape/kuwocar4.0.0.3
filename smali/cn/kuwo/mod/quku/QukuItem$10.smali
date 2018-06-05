.class final enum Lcn/kuwo/mod/quku/QukuItem$10;
.super Lcn/kuwo/mod/quku/QukuItem;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/kuwo/mod/quku/QukuItem;-><init>(Ljava/lang/String;ILcn/kuwo/mod/quku/QukuItem$1;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "5"

    return-object v0
.end method

.method public getId()J
    .locals 4

    const-string v0, "sec_quku_class_id"

    const-string v1, "\u4eba\u7fa4"

    const-wide/16 v2, 0xb

    invoke-static {v0, v1, v2, v3}, Lcn/kuwo/base/config/ConfMgr;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u4eba\u7fa4"

    return-object v0
.end method
