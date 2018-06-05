.class public final enum Lcn/kuwo/mod/download/DownloadState;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/mod/download/DownloadState;

.field public static final enum b:Lcn/kuwo/mod/download/DownloadState;

.field public static final enum c:Lcn/kuwo/mod/download/DownloadState;

.field public static final enum d:Lcn/kuwo/mod/download/DownloadState;

.field public static final enum e:Lcn/kuwo/mod/download/DownloadState;

.field public static final enum f:Lcn/kuwo/mod/download/DownloadState;

.field private static final synthetic g:[Lcn/kuwo/mod/download/DownloadState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcn/kuwo/mod/download/DownloadState;

    const-string v1, "Waiting"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/mod/download/DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/download/DownloadState;->a:Lcn/kuwo/mod/download/DownloadState;

    new-instance v0, Lcn/kuwo/mod/download/DownloadState;

    const-string v1, "Preparing"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/mod/download/DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/download/DownloadState;->b:Lcn/kuwo/mod/download/DownloadState;

    new-instance v0, Lcn/kuwo/mod/download/DownloadState;

    const-string v1, "Downloading"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/mod/download/DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/download/DownloadState;->c:Lcn/kuwo/mod/download/DownloadState;

    new-instance v0, Lcn/kuwo/mod/download/DownloadState;

    const-string v1, "Paused"

    invoke-direct {v0, v1, v6}, Lcn/kuwo/mod/download/DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/download/DownloadState;->d:Lcn/kuwo/mod/download/DownloadState;

    new-instance v0, Lcn/kuwo/mod/download/DownloadState;

    const-string v1, "Finished"

    invoke-direct {v0, v1, v7}, Lcn/kuwo/mod/download/DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/download/DownloadState;->e:Lcn/kuwo/mod/download/DownloadState;

    new-instance v0, Lcn/kuwo/mod/download/DownloadState;

    const-string v1, "Failed"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/kuwo/mod/download/DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/mod/download/DownloadState;->f:Lcn/kuwo/mod/download/DownloadState;

    const/4 v0, 0x6

    new-array v0, v0, [Lcn/kuwo/mod/download/DownloadState;

    sget-object v1, Lcn/kuwo/mod/download/DownloadState;->a:Lcn/kuwo/mod/download/DownloadState;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/mod/download/DownloadState;->b:Lcn/kuwo/mod/download/DownloadState;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/mod/download/DownloadState;->c:Lcn/kuwo/mod/download/DownloadState;

    aput-object v1, v0, v5

    sget-object v1, Lcn/kuwo/mod/download/DownloadState;->d:Lcn/kuwo/mod/download/DownloadState;

    aput-object v1, v0, v6

    sget-object v1, Lcn/kuwo/mod/download/DownloadState;->e:Lcn/kuwo/mod/download/DownloadState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/kuwo/mod/download/DownloadState;->f:Lcn/kuwo/mod/download/DownloadState;

    aput-object v2, v0, v1

    sput-object v0, Lcn/kuwo/mod/download/DownloadState;->g:[Lcn/kuwo/mod/download/DownloadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/mod/download/DownloadState;
    .locals 1

    const-class v0, Lcn/kuwo/mod/download/DownloadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/mod/download/DownloadState;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/mod/download/DownloadState;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/download/DownloadState;->g:[Lcn/kuwo/mod/download/DownloadState;

    invoke-virtual {v0}, [Lcn/kuwo/mod/download/DownloadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/mod/download/DownloadState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/kuwo/mod/download/DownloadState$1;->a:[I

    invoke-virtual {p0}, Lcn/kuwo/mod/download/DownloadState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "\u672a\u77e5\u72b6\u6001"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "\u7b49\u5f85\u4e0b\u8f7d"

    goto :goto_0

    :pswitch_1
    const-string v0, "\u4e0b\u8f7d\u4e2d"

    goto :goto_0

    :pswitch_2
    const-string v0, "\u6682\u505c\u4e0b\u8f7d"

    goto :goto_0

    :pswitch_3
    const-string v0, "\u4e0b\u8f7d\u5b8c\u6210"

    goto :goto_0

    :pswitch_4
    const-string v0, "\u4e0b\u8f7d\u5931\u8d25"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
