.class public Lcn/kuwo/base/bean/DownloadTask;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Lcn/kuwo/base/bean/Music;

.field public c:Lcn/kuwo/mod/download/DownloadState;

.field public d:F

.field public e:F

.field public f:Lcn/kuwo/service/DownloadProxy$Quality;

.field public g:I

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcn/kuwo/base/bean/DownloadTask;->d:F

    iput v1, p0, Lcn/kuwo/base/bean/DownloadTask;->e:F

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/base/bean/DownloadTask;->a:I

    iput v1, p0, Lcn/kuwo/base/bean/DownloadTask;->e:F

    iput v1, p0, Lcn/kuwo/base/bean/DownloadTask;->d:F

    return-void
.end method
