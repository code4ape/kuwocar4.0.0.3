.class public Lcn/kuwo/mod/quku/QukuUtils;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Lcn/kuwo/mod/quku/QukuItem;

.field private static final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x7

    new-array v1, v1, [Lcn/kuwo/mod/quku/QukuItem;

    sget-object v2, Lcn/kuwo/mod/quku/QukuItem;->d:Lcn/kuwo/mod/quku/QukuItem;

    aput-object v2, v1, v0

    sget-object v2, Lcn/kuwo/mod/quku/QukuItem;->f:Lcn/kuwo/mod/quku/QukuItem;

    aput-object v2, v1, v6

    const/4 v2, 0x2

    sget-object v3, Lcn/kuwo/mod/quku/QukuItem;->g:Lcn/kuwo/mod/quku/QukuItem;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcn/kuwo/mod/quku/QukuItem;->h:Lcn/kuwo/mod/quku/QukuItem;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcn/kuwo/mod/quku/QukuItem;->i:Lcn/kuwo/mod/quku/QukuItem;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcn/kuwo/mod/quku/QukuItem;->j:Lcn/kuwo/mod/quku/QukuItem;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcn/kuwo/mod/quku/QukuItem;->k:Lcn/kuwo/mod/quku/QukuItem;

    aput-object v3, v1, v2

    sput-object v1, Lcn/kuwo/mod/quku/QukuUtils;->a:[Lcn/kuwo/mod/quku/QukuItem;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcn/kuwo/mod/quku/QukuUtils;->b:Ljava/util/List;

    :goto_0
    sget-object v1, Lcn/kuwo/mod/quku/QukuUtils;->a:[Lcn/kuwo/mod/quku/QukuItem;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    new-instance v1, Lcn/kuwo/base/bean/quku/BaseQukuItemList;

    invoke-direct {v1}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/kuwo/mod/quku/QukuUtils;->a:[Lcn/kuwo/mod/quku/QukuItem;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcn/kuwo/mod/quku/QukuItem;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->setId(Ljava/lang/String;)V

    sget-object v2, Lcn/kuwo/mod/quku/QukuUtils;->a:[Lcn/kuwo/mod/quku/QukuItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcn/kuwo/mod/quku/QukuItem;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->a(I)V

    sget-object v2, Lcn/kuwo/mod/quku/QukuUtils;->a:[Lcn/kuwo/mod/quku/QukuItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcn/kuwo/mod/quku/QukuItem;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->d(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->a(Z)V

    sget-object v2, Lcn/kuwo/mod/quku/QukuUtils;->a:[Lcn/kuwo/mod/quku/QukuItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcn/kuwo/mod/quku/QukuItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->setName(Ljava/lang/String;)V

    sget-object v2, Lcn/kuwo/mod/quku/QukuUtils;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Lcn/kuwo/mod/quku/QukuItem;)Lcn/kuwo/base/bean/quku/BaseQukuItemList;
    .locals 4

    new-instance v0, Lcn/kuwo/base/bean/quku/BaseQukuItemList;

    invoke-direct {v0}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/kuwo/mod/quku/QukuItem;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->setId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/kuwo/mod/quku/QukuItem;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->a(I)V

    invoke-virtual {p0}, Lcn/kuwo/mod/quku/QukuItem;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->d(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->a(Z)V

    invoke-virtual {p0}, Lcn/kuwo/mod/quku/QukuItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;->setName(Ljava/lang/String;)V

    return-object v0
.end method
