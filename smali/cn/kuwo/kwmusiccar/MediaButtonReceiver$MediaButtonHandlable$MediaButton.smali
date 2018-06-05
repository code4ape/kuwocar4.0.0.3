.class public final enum Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

.field public static final enum Next:Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

.field public static final enum Pause:Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

.field public static final enum Play:Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

.field public static final enum PlayPause:Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

.field public static final enum Pre:Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

    const-string v1, "Play"

    invoke-direct {v0, v1, v2}, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;->Play:Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

    new-instance v0, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

    const-string v1, "Pause"

    invoke-direct {v0, v1, v3}, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;->Pause:Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

    new-instance v0, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

    const-string v1, "PlayPause"

    invoke-direct {v0, v1, v4}, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;->PlayPause:Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

    new-instance v0, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

    const-string v1, "Next"

    invoke-direct {v0, v1, v5}, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;->Next:Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

    new-instance v0, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

    const-string v1, "Pre"

    invoke-direct {v0, v1, v6}, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;->Pre:Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

    sget-object v1, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;->Play:Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

    aput-object v1, v0, v2

    sget-object v1, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;->Pause:Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

    aput-object v1, v0, v3

    sget-object v1, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;->PlayPause:Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

    aput-object v1, v0, v4

    sget-object v1, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;->Next:Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

    aput-object v1, v0, v5

    sget-object v1, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;->Pre:Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

    aput-object v1, v0, v6

    sput-object v0, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;->$VALUES:[Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;
    .locals 1

    const-class v0, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

    return-object v0
.end method

.method public static values()[Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;
    .locals 1

    sget-object v0, Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;->$VALUES:[Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

    invoke-virtual {v0}, [Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/kuwo/kwmusiccar/MediaButtonReceiver$MediaButtonHandlable$MediaButton;

    return-object v0
.end method
