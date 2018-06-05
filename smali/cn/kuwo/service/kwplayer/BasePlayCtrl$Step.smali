.class public final enum Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

.field public static final enum BUFFERING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

.field public static final enum COMPLETE:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

.field public static final enum ERROR:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

.field public static final enum PAUSED:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

.field public static final enum PLAYING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

.field public static final enum STOP:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

.field public static final enum WAITING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    const-string v1, "BUFFERING"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->BUFFERING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    new-instance v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->PLAYING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    new-instance v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->PAUSED:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    new-instance v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v6}, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->COMPLETE:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    new-instance v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v7}, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->ERROR:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    new-instance v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    const-string v1, "WAITING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->WAITING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    new-instance v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    const-string v1, "STOP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->STOP:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    const/4 v0, 0x7

    new-array v0, v0, [Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    sget-object v1, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->BUFFERING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->PLAYING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->PAUSED:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    aput-object v1, v0, v5

    sget-object v1, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->COMPLETE:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    aput-object v1, v0, v6

    sget-object v1, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->ERROR:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->WAITING:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->STOP:Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    aput-object v2, v0, v1

    sput-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->$VALUES:[Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;
    .locals 1

    const-class v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;
    .locals 1

    sget-object v0, Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->$VALUES:[Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    invoke-virtual {v0}, [Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/service/kwplayer/BasePlayCtrl$Step;

    return-object v0
.end method
