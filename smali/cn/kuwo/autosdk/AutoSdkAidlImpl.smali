.class public Lcn/kuwo/autosdk/AutoSdkAidlImpl;
.super Lcn/kuwo/autosdk/IAutoSdkAidlInterface$Stub;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/autosdk/IAutoSdkAidlInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    invoke-static {}, Lcn/kuwo/service/kwplayer/PlayManager;->getInstance()Lcn/kuwo/service/kwplayer/PlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/kwplayer/PlayManager;->getStatus()Lcn/kuwo/service/PlayProxy$Status;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/service/PlayProxy$Status;->ordinal()I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    invoke-static {}, Lcn/kuwo/kwmusiccar/KwCarPlay;->getMainActivityStatus()I

    move-result v0

    return v0
.end method
