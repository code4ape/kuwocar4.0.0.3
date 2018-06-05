.class public Lcn/kuwo/base/util/HttpUtils$RequestParams;
.super Ljava/lang/Object;


# instance fields
.field public charset:Ljava/lang/String;

.field public volatile inStream:Ljava/io/InputStream;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "utf-8"

    iput-object v0, p0, Lcn/kuwo/base/util/HttpUtils$RequestParams;->charset:Ljava/lang/String;

    iput-object p1, p0, Lcn/kuwo/base/util/HttpUtils$RequestParams;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "utf-8"

    iput-object v0, p0, Lcn/kuwo/base/util/HttpUtils$RequestParams;->charset:Ljava/lang/String;

    iput-object p1, p0, Lcn/kuwo/base/util/HttpUtils$RequestParams;->url:Ljava/lang/String;

    iput-object p2, p0, Lcn/kuwo/base/util/HttpUtils$RequestParams;->charset:Ljava/lang/String;

    return-void
.end method
