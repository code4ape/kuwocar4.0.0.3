.class final enum Lcn/kuwo/service/downloader/DownloadCore$Step;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcn/kuwo/service/downloader/DownloadCore$Step;

.field public static final enum b:Lcn/kuwo/service/downloader/DownloadCore$Step;

.field public static final enum c:Lcn/kuwo/service/downloader/DownloadCore$Step;

.field public static final enum d:Lcn/kuwo/service/downloader/DownloadCore$Step;

.field public static final enum e:Lcn/kuwo/service/downloader/DownloadCore$Step;

.field public static final enum f:Lcn/kuwo/service/downloader/DownloadCore$Step;

.field public static final enum g:Lcn/kuwo/service/downloader/DownloadCore$Step;

.field public static final enum h:Lcn/kuwo/service/downloader/DownloadCore$Step;

.field public static final enum i:Lcn/kuwo/service/downloader/DownloadCore$Step;

.field private static final synthetic j:[Lcn/kuwo/service/downloader/DownloadCore$Step;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcn/kuwo/service/downloader/DownloadCore$Step;

    const-string v1, "FIND_FINISHED_FILE"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/service/downloader/DownloadCore$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->a:Lcn/kuwo/service/downloader/DownloadCore$Step;

    new-instance v0, Lcn/kuwo/service/downloader/DownloadCore$Step;

    const-string v1, "FIND_PART_FILE"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/service/downloader/DownloadCore$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->b:Lcn/kuwo/service/downloader/DownloadCore$Step;

    new-instance v0, Lcn/kuwo/service/downloader/DownloadCore$Step;

    const-string v1, "ANTISTEALING"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/service/downloader/DownloadCore$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->c:Lcn/kuwo/service/downloader/DownloadCore$Step;

    new-instance v0, Lcn/kuwo/service/downloader/DownloadCore$Step;

    const-string v1, "REALDOWNLOAD"

    invoke-direct {v0, v1, v6}, Lcn/kuwo/service/downloader/DownloadCore$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->d:Lcn/kuwo/service/downloader/DownloadCore$Step;

    new-instance v0, Lcn/kuwo/service/downloader/DownloadCore$Step;

    const-string v1, "DOWNFINISH"

    invoke-direct {v0, v1, v7}, Lcn/kuwo/service/downloader/DownloadCore$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->e:Lcn/kuwo/service/downloader/DownloadCore$Step;

    new-instance v0, Lcn/kuwo/service/downloader/DownloadCore$Step;

    const-string v1, "NOTIFYSUCCESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/kuwo/service/downloader/DownloadCore$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->f:Lcn/kuwo/service/downloader/DownloadCore$Step;

    new-instance v0, Lcn/kuwo/service/downloader/DownloadCore$Step;

    const-string v1, "FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcn/kuwo/service/downloader/DownloadCore$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->g:Lcn/kuwo/service/downloader/DownloadCore$Step;

    new-instance v0, Lcn/kuwo/service/downloader/DownloadCore$Step;

    const-string v1, "WAITING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcn/kuwo/service/downloader/DownloadCore$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->h:Lcn/kuwo/service/downloader/DownloadCore$Step;

    new-instance v0, Lcn/kuwo/service/downloader/DownloadCore$Step;

    const-string v1, "AUTOSTOP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcn/kuwo/service/downloader/DownloadCore$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->i:Lcn/kuwo/service/downloader/DownloadCore$Step;

    const/16 v0, 0x9

    new-array v0, v0, [Lcn/kuwo/service/downloader/DownloadCore$Step;

    sget-object v1, Lcn/kuwo/service/downloader/DownloadCore$Step;->a:Lcn/kuwo/service/downloader/DownloadCore$Step;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/service/downloader/DownloadCore$Step;->b:Lcn/kuwo/service/downloader/DownloadCore$Step;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/service/downloader/DownloadCore$Step;->c:Lcn/kuwo/service/downloader/DownloadCore$Step;

    aput-object v1, v0, v5

    sget-object v1, Lcn/kuwo/service/downloader/DownloadCore$Step;->d:Lcn/kuwo/service/downloader/DownloadCore$Step;

    aput-object v1, v0, v6

    sget-object v1, Lcn/kuwo/service/downloader/DownloadCore$Step;->e:Lcn/kuwo/service/downloader/DownloadCore$Step;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/kuwo/service/downloader/DownloadCore$Step;->f:Lcn/kuwo/service/downloader/DownloadCore$Step;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcn/kuwo/service/downloader/DownloadCore$Step;->g:Lcn/kuwo/service/downloader/DownloadCore$Step;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcn/kuwo/service/downloader/DownloadCore$Step;->h:Lcn/kuwo/service/downloader/DownloadCore$Step;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcn/kuwo/service/downloader/DownloadCore$Step;->i:Lcn/kuwo/service/downloader/DownloadCore$Step;

    aput-object v2, v0, v1

    sput-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->j:[Lcn/kuwo/service/downloader/DownloadCore$Step;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/service/downloader/DownloadCore$Step;
    .locals 1

    const-class v0, Lcn/kuwo/service/downloader/DownloadCore$Step;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/service/downloader/DownloadCore$Step;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/service/downloader/DownloadCore$Step;
    .locals 1

    sget-object v0, Lcn/kuwo/service/downloader/DownloadCore$Step;->j:[Lcn/kuwo/service/downloader/DownloadCore$Step;

    invoke-virtual {v0}, [Lcn/kuwo/service/downloader/DownloadCore$Step;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/service/downloader/DownloadCore$Step;

    return-object v0
.end method
