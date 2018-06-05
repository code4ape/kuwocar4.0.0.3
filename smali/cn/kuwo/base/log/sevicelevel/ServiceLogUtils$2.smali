.class synthetic Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils$2;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;->values()[Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils$2;->b:[I

    :try_start_0
    sget-object v0, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils$2;->b:[I

    sget-object v1, Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;->a:Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;

    invoke-virtual {v1}, Lcn/kuwo/base/log/sevicelevel/bean/PageLog$LogType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    invoke-static {}, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->values()[Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils$2;->a:[I

    :try_start_1
    sget-object v0, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils$2;->a:[I

    sget-object v1, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->e:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    invoke-virtual {v1}, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcn/kuwo/base/log/sevicelevel/ServiceLogUtils$2;->a:[I

    sget-object v1, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->c:Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;

    invoke-virtual {v1}, Lcn/kuwo/base/log/sevicelevel/bean/AppLog$LogType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
