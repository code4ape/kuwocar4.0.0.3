.class public Lcn/kuwo/service/downloader/strategies/StrategyCreator;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcn/kuwo/service/DownloadProxy$DownType;)Lcn/kuwo/service/downloader/strategies/IStrategy;
    .locals 2

    sget-object v0, Lcn/kuwo/service/downloader/strategies/StrategyCreator$1;->a:[I

    invoke-virtual {p0}, Lcn/kuwo/service/DownloadProxy$DownType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcn/kuwo/service/downloader/strategies/MusicStrategyBase;

    invoke-direct {v0}, Lcn/kuwo/service/downloader/strategies/MusicStrategyBase;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcn/kuwo/service/downloader/strategies/DownloadMusicStrategy;

    invoke-direct {v0}, Lcn/kuwo/service/downloader/strategies/DownloadMusicStrategy;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcn/kuwo/service/downloader/strategies/FileStrategyBase;

    invoke-direct {v0}, Lcn/kuwo/service/downloader/strategies/FileStrategyBase;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcn/kuwo/service/downloader/strategies/PlayMusicStrategy;

    invoke-direct {v0}, Lcn/kuwo/service/downloader/strategies/PlayMusicStrategy;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcn/kuwo/service/downloader/strategies/MusicStrategyBase;

    invoke-direct {v0}, Lcn/kuwo/service/downloader/strategies/MusicStrategyBase;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcn/kuwo/service/downloader/strategies/DownMVStrategy;

    invoke-direct {v0}, Lcn/kuwo/service/downloader/strategies/DownMVStrategy;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
