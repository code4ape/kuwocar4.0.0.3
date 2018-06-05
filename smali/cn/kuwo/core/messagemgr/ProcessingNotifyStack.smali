.class public Lcn/kuwo/core/messagemgr/ProcessingNotifyStack;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x0

    sput v0, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack;->a:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v1, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack;->b:Ljava/util/ArrayList;

    :goto_0
    if-ge v0, v3, :cond_0

    sget-object v1, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack;->b:Ljava/util/ArrayList;

    new-instance v2, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack$ProcessingItem;

    invoke-direct {v2}, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack$ProcessingItem;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

.method public static a(II)Lcn/kuwo/core/messagemgr/ProcessingNotifyStack$ProcessingItem;
    .locals 4

    sget v0, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack;->a:I

    sget-object v1, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack$ProcessingItem;

    invoke-direct {v0}, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack$ProcessingItem;-><init>()V

    sget-object v1, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "MessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u540c\u6b65\u901a\u77e5\u5d4c\u5957\u8fbe\u5230"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack;->a:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5c42"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput p0, v0, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack$ProcessingItem;->a:I

    const/4 v1, 0x0

    iput v1, v0, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack$ProcessingItem;->b:I

    iput p1, v0, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack$ProcessingItem;->c:I

    sget v1, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack;->a:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack;->a:I

    return-object v0

    :cond_0
    sget-object v0, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack;->b:Ljava/util/ArrayList;

    sget v1, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack$ProcessingItem;

    goto :goto_0
.end method

.method public static a()V
    .locals 1

    sget v0, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack;->a:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack;->a:I

    return-void
.end method

.method public static a(I)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v0, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack;->a:I

    if-ge v1, v0, :cond_1

    sget-object v0, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack$ProcessingItem;

    iget v2, v0, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack$ProcessingItem;->a:I

    if-ne v2, p0, :cond_0

    iget v2, v0, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack$ProcessingItem;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack$ProcessingItem;->c:I

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static b(II)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v0, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack;->a:I

    if-ge v1, v0, :cond_1

    sget-object v0, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack$ProcessingItem;

    iget v2, v0, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack$ProcessingItem;->a:I

    if-ne v2, p0, :cond_0

    iget v2, v0, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack$ProcessingItem;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack$ProcessingItem;->c:I

    iget v2, v0, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack$ProcessingItem;->b:I

    if-gt p1, v2, :cond_0

    iget v2, v0, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack$ProcessingItem;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcn/kuwo/core/messagemgr/ProcessingNotifyStack$ProcessingItem;->b:I

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method
