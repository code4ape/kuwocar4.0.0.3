.class synthetic Lcn/kuwo/base/util/UrlManagerUtils$1;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $SwitchMap$cn$kuwo$mod$quku$OnlineType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcn/kuwo/mod/quku/OnlineType;->values()[Lcn/kuwo/mod/quku/OnlineType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/kuwo/base/util/UrlManagerUtils$1;->$SwitchMap$cn$kuwo$mod$quku$OnlineType:[I

    :try_start_0
    sget-object v0, Lcn/kuwo/base/util/UrlManagerUtils$1;->$SwitchMap$cn$kuwo$mod$quku$OnlineType:[I

    sget-object v1, Lcn/kuwo/mod/quku/OnlineType;->b:Lcn/kuwo/mod/quku/OnlineType;

    invoke-virtual {v1}, Lcn/kuwo/mod/quku/OnlineType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v0, Lcn/kuwo/base/util/UrlManagerUtils$1;->$SwitchMap$cn$kuwo$mod$quku$OnlineType:[I

    sget-object v1, Lcn/kuwo/mod/quku/OnlineType;->a:Lcn/kuwo/mod/quku/OnlineType;

    invoke-virtual {v1}, Lcn/kuwo/mod/quku/OnlineType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v0, Lcn/kuwo/base/util/UrlManagerUtils$1;->$SwitchMap$cn$kuwo$mod$quku$OnlineType:[I

    sget-object v1, Lcn/kuwo/mod/quku/OnlineType;->c:Lcn/kuwo/mod/quku/OnlineType;

    invoke-virtual {v1}, Lcn/kuwo/mod/quku/OnlineType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v0, Lcn/kuwo/base/util/UrlManagerUtils$1;->$SwitchMap$cn$kuwo$mod$quku$OnlineType:[I

    sget-object v1, Lcn/kuwo/mod/quku/OnlineType;->f:Lcn/kuwo/mod/quku/OnlineType;

    invoke-virtual {v1}, Lcn/kuwo/mod/quku/OnlineType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v0, Lcn/kuwo/base/util/UrlManagerUtils$1;->$SwitchMap$cn$kuwo$mod$quku$OnlineType:[I

    sget-object v1, Lcn/kuwo/mod/quku/OnlineType;->d:Lcn/kuwo/mod/quku/OnlineType;

    invoke-virtual {v1}, Lcn/kuwo/mod/quku/OnlineType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v0, Lcn/kuwo/base/util/UrlManagerUtils$1;->$SwitchMap$cn$kuwo$mod$quku$OnlineType:[I

    sget-object v1, Lcn/kuwo/mod/quku/OnlineType;->n:Lcn/kuwo/mod/quku/OnlineType;

    invoke-virtual {v1}, Lcn/kuwo/mod/quku/OnlineType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v0, Lcn/kuwo/base/util/UrlManagerUtils$1;->$SwitchMap$cn$kuwo$mod$quku$OnlineType:[I

    sget-object v1, Lcn/kuwo/mod/quku/OnlineType;->m:Lcn/kuwo/mod/quku/OnlineType;

    invoke-virtual {v1}, Lcn/kuwo/mod/quku/OnlineType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v0, Lcn/kuwo/base/util/UrlManagerUtils$1;->$SwitchMap$cn$kuwo$mod$quku$OnlineType:[I

    sget-object v1, Lcn/kuwo/mod/quku/OnlineType;->e:Lcn/kuwo/mod/quku/OnlineType;

    invoke-virtual {v1}, Lcn/kuwo/mod/quku/OnlineType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

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
