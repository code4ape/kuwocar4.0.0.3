.class public final enum Lcom/baidu/location/LocationClientOption$LocationMode;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/location/LocationClientOption$LocationMode;

.field public static final enum Battery_Saving:Lcom/baidu/location/LocationClientOption$LocationMode;

.field public static final enum Device_Sensors:Lcom/baidu/location/LocationClientOption$LocationMode;

.field public static final enum Hight_Accuracy:Lcom/baidu/location/LocationClientOption$LocationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/location/LocationClientOption$LocationMode;

    const-string v1, "Hight_Accuracy"

    invoke-direct {v0, v1, v2}, Lcom/baidu/location/LocationClientOption$LocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/location/LocationClientOption$LocationMode;->Hight_Accuracy:Lcom/baidu/location/LocationClientOption$LocationMode;

    new-instance v0, Lcom/baidu/location/LocationClientOption$LocationMode;

    const-string v1, "Battery_Saving"

    invoke-direct {v0, v1, v3}, Lcom/baidu/location/LocationClientOption$LocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/location/LocationClientOption$LocationMode;->Battery_Saving:Lcom/baidu/location/LocationClientOption$LocationMode;

    new-instance v0, Lcom/baidu/location/LocationClientOption$LocationMode;

    const-string v1, "Device_Sensors"

    invoke-direct {v0, v1, v4}, Lcom/baidu/location/LocationClientOption$LocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/location/LocationClientOption$LocationMode;->Device_Sensors:Lcom/baidu/location/LocationClientOption$LocationMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/location/LocationClientOption$LocationMode;

    sget-object v1, Lcom/baidu/location/LocationClientOption$LocationMode;->Hight_Accuracy:Lcom/baidu/location/LocationClientOption$LocationMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/location/LocationClientOption$LocationMode;->Battery_Saving:Lcom/baidu/location/LocationClientOption$LocationMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/location/LocationClientOption$LocationMode;->Device_Sensors:Lcom/baidu/location/LocationClientOption$LocationMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/location/LocationClientOption$LocationMode;->$VALUES:[Lcom/baidu/location/LocationClientOption$LocationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/location/LocationClientOption$LocationMode;
    .locals 1

    const-class v0, Lcom/baidu/location/LocationClientOption$LocationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/LocationClientOption$LocationMode;

    return-object v0
.end method

.method public static values()[Lcom/baidu/location/LocationClientOption$LocationMode;
    .locals 1

    sget-object v0, Lcom/baidu/location/LocationClientOption$LocationMode;->$VALUES:[Lcom/baidu/location/LocationClientOption$LocationMode;

    invoke-virtual {v0}, [Lcom/baidu/location/LocationClientOption$LocationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/location/LocationClientOption$LocationMode;

    return-object v0
.end method
