.class synthetic Lcn/kuwo/ui/fragment/MvFragment$12;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $SwitchMap$cn$kuwo$mod$download$DownloadState:[I

.field static final synthetic $SwitchMap$cn$kuwo$mod$playcontrol$MVAntistealing$Quality:[I

.field static final synthetic $SwitchMap$cn$kuwo$service$DownloadProxy$Quality:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->values()[Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/kuwo/ui/fragment/MvFragment$12;->$SwitchMap$cn$kuwo$mod$playcontrol$MVAntistealing$Quality:[I

    :try_start_0
    sget-object v0, Lcn/kuwo/ui/fragment/MvFragment$12;->$SwitchMap$cn$kuwo$mod$playcontrol$MVAntistealing$Quality:[I

    sget-object v1, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->b:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    invoke-virtual {v1}, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v0, Lcn/kuwo/ui/fragment/MvFragment$12;->$SwitchMap$cn$kuwo$mod$playcontrol$MVAntistealing$Quality:[I

    sget-object v1, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->a:Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;

    invoke-virtual {v1}, Lcn/kuwo/mod/playcontrol/MVAntistealing$Quality;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    invoke-static {}, Lcn/kuwo/service/DownloadProxy$Quality;->values()[Lcn/kuwo/service/DownloadProxy$Quality;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/kuwo/ui/fragment/MvFragment$12;->$SwitchMap$cn$kuwo$service$DownloadProxy$Quality:[I

    :try_start_2
    sget-object v0, Lcn/kuwo/ui/fragment/MvFragment$12;->$SwitchMap$cn$kuwo$service$DownloadProxy$Quality:[I

    sget-object v1, Lcn/kuwo/service/DownloadProxy$Quality;->g:Lcn/kuwo/service/DownloadProxy$Quality;

    invoke-virtual {v1}, Lcn/kuwo/service/DownloadProxy$Quality;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v0, Lcn/kuwo/ui/fragment/MvFragment$12;->$SwitchMap$cn$kuwo$service$DownloadProxy$Quality:[I

    sget-object v1, Lcn/kuwo/service/DownloadProxy$Quality;->f:Lcn/kuwo/service/DownloadProxy$Quality;

    invoke-virtual {v1}, Lcn/kuwo/service/DownloadProxy$Quality;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    invoke-static {}, Lcn/kuwo/mod/download/DownloadState;->values()[Lcn/kuwo/mod/download/DownloadState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/kuwo/ui/fragment/MvFragment$12;->$SwitchMap$cn$kuwo$mod$download$DownloadState:[I

    :try_start_4
    sget-object v0, Lcn/kuwo/ui/fragment/MvFragment$12;->$SwitchMap$cn$kuwo$mod$download$DownloadState:[I

    sget-object v1, Lcn/kuwo/mod/download/DownloadState;->c:Lcn/kuwo/mod/download/DownloadState;

    invoke-virtual {v1}, Lcn/kuwo/mod/download/DownloadState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v0, Lcn/kuwo/ui/fragment/MvFragment$12;->$SwitchMap$cn$kuwo$mod$download$DownloadState:[I

    sget-object v1, Lcn/kuwo/mod/download/DownloadState;->e:Lcn/kuwo/mod/download/DownloadState;

    invoke-virtual {v1}, Lcn/kuwo/mod/download/DownloadState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v0, Lcn/kuwo/ui/fragment/MvFragment$12;->$SwitchMap$cn$kuwo$mod$download$DownloadState:[I

    sget-object v1, Lcn/kuwo/mod/download/DownloadState;->f:Lcn/kuwo/mod/download/DownloadState;

    invoke-virtual {v1}, Lcn/kuwo/mod/download/DownloadState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v0, Lcn/kuwo/ui/fragment/MvFragment$12;->$SwitchMap$cn$kuwo$mod$download$DownloadState:[I

    sget-object v1, Lcn/kuwo/mod/download/DownloadState;->d:Lcn/kuwo/mod/download/DownloadState;

    invoke-virtual {v1}, Lcn/kuwo/mod/download/DownloadState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_0
.end method
