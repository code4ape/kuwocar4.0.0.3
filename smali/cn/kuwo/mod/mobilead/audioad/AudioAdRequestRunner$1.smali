.class Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/kuwo/service/DownloadDelegate;


# instance fields
.field final synthetic a:Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;


# direct methods
.method constructor <init>(Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner$1;->a:Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DownloadDelegate_Finish(ILcn/kuwo/service/DownloadDelegate$ErrorCode;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcn/kuwo/service/DownloadDelegate$ErrorCode;->a:Lcn/kuwo/service/DownloadDelegate$ErrorCode;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner$1;->a:Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;

    invoke-static {v0}, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->a(Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;)Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcn/kuwo/mod/mobilead/audioad/SongAdInfo;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner$1;->a:Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;

    invoke-static {v0}, Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;->b(Lcn/kuwo/mod/mobilead/audioad/AudioAdRequestRunner;)V

    :cond_0
    return-void
.end method

.method public DownloadDelegate_Progress(IIIF)V
    .locals 0

    return-void
.end method

.method public DownloadDelegate_Start(ILjava/lang/String;Ljava/lang/String;IIILcn/kuwo/service/DownloadDelegate$DataSrc;Lcn/kuwo/service/DownloadDelegate$HttpInfo;)V
    .locals 0

    return-void
.end method
