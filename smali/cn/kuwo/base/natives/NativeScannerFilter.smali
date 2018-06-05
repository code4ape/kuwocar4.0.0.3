.class public Lcn/kuwo/base/natives/NativeScannerFilter;
.super Ljava/lang/Object;


# instance fields
.field protected mFormats:Ljava/util/Collection;

.field protected mIgnoreDirs:Ljava/util/Collection;

.field protected mIgnoreFiles:Ljava/util/Collection;

.field protected mIsCheckDuration:Z

.field protected mIsIgnoreHiddenFiles:Z

.field protected mIsSkipMinFile:Z

.field protected mMinFileSize:I

.field protected mMinSongDuration:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/natives/NativeScannerFilter;->mIgnoreDirs:Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/natives/NativeScannerFilter;->mIgnoreFiles:Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/kuwo/base/natives/NativeScannerFilter;->mFormats:Ljava/util/Collection;

    iput-boolean v1, p0, Lcn/kuwo/base/natives/NativeScannerFilter;->mIsIgnoreHiddenFiles:Z

    iput-boolean v1, p0, Lcn/kuwo/base/natives/NativeScannerFilter;->mIsSkipMinFile:Z

    const v0, 0x19000

    iput v0, p0, Lcn/kuwo/base/natives/NativeScannerFilter;->mMinFileSize:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/base/natives/NativeScannerFilter;->mIsCheckDuration:Z

    const/16 v0, 0x14

    iput v0, p0, Lcn/kuwo/base/natives/NativeScannerFilter;->mMinSongDuration:I

    return-void
.end method


# virtual methods
.method public getIgnoreDirs()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/natives/NativeScannerFilter;->mIgnoreDirs:Ljava/util/Collection;

    return-object v0
.end method

.method public getIgnoreFiles()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/natives/NativeScannerFilter;->mIgnoreFiles:Ljava/util/Collection;

    return-object v0
.end method

.method public getMinFileSize()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/natives/NativeScannerFilter;->mMinFileSize:I

    return v0
.end method

.method public getMinSongDuration()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/natives/NativeScannerFilter;->mMinSongDuration:I

    return v0
.end method

.method public getmFormats()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/natives/NativeScannerFilter;->mFormats:Ljava/util/Collection;

    return-object v0
.end method

.method public isCheckDuration()Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/base/natives/NativeScannerFilter;->mIsCheckDuration:Z

    return v0
.end method

.method public isIgnoreHiddenFiles()Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/base/natives/NativeScannerFilter;->mIsIgnoreHiddenFiles:Z

    return v0
.end method

.method public isSkipMinFile()Z
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/base/natives/NativeScannerFilter;->mIsSkipMinFile:Z

    return v0
.end method

.method public setIgnoreDirs(Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/natives/NativeScannerFilter;->mIgnoreDirs:Ljava/util/Collection;

    return-void
.end method

.method public setIgnoreFiles(Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/natives/NativeScannerFilter;->mIgnoreFiles:Ljava/util/Collection;

    return-void
.end method

.method public setIsCheckDuration(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/base/natives/NativeScannerFilter;->mIsCheckDuration:Z

    return-void
.end method

.method public setIsIgnoreHiddenFiles(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/base/natives/NativeScannerFilter;->mIsIgnoreHiddenFiles:Z

    return-void
.end method

.method public setIsSkipMinFile(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/kuwo/base/natives/NativeScannerFilter;->mIsSkipMinFile:Z

    return-void
.end method

.method public setMinFileSize(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/natives/NativeScannerFilter;->mMinFileSize:I

    return-void
.end method

.method public setMinSongDuration(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/natives/NativeScannerFilter;->mMinSongDuration:I

    return-void
.end method

.method public setmFormats(Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/natives/NativeScannerFilter;->mFormats:Ljava/util/Collection;

    return-void
.end method
