.class public Lcn/kuwo/base/bean/quku/SectionInfo;
.super Lcn/kuwo/base/bean/quku/BaseQukuItemList;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:C

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:J

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v0, "section"

    invoke-direct {p0, v0}, Lcn/kuwo/base/bean/quku/BaseQukuItemList;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcn/kuwo/base/bean/quku/SectionInfo;->c:Ljava/lang/String;

    iput-object v2, p0, Lcn/kuwo/base/bean/quku/SectionInfo;->d:Ljava/lang/String;

    iput-object v2, p0, Lcn/kuwo/base/bean/quku/SectionInfo;->f:Ljava/lang/String;

    iput-char v1, p0, Lcn/kuwo/base/bean/quku/SectionInfo;->g:C

    const/4 v0, -0x1

    iput v0, p0, Lcn/kuwo/base/bean/quku/SectionInfo;->h:I

    iput v1, p0, Lcn/kuwo/base/bean/quku/SectionInfo;->i:I

    iput v1, p0, Lcn/kuwo/base/bean/quku/SectionInfo;->j:I

    iput-object v2, p0, Lcn/kuwo/base/bean/quku/SectionInfo;->k:Ljava/lang/String;

    iput-object v2, p0, Lcn/kuwo/base/bean/quku/SectionInfo;->l:Ljava/lang/String;

    iput-boolean v1, p0, Lcn/kuwo/base/bean/quku/SectionInfo;->m:Z

    iput-object v2, p0, Lcn/kuwo/base/bean/quku/SectionInfo;->n:Ljava/lang/String;

    iput-object v2, p0, Lcn/kuwo/base/bean/quku/SectionInfo;->o:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/kuwo/base/bean/quku/SectionInfo;->p:J

    iput-object v2, p0, Lcn/kuwo/base/bean/quku/SectionInfo;->q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/bean/quku/SectionInfo;->i:I

    return v0
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcn/kuwo/base/bean/quku/SectionInfo;->i:I

    return-void
.end method

.method public setCount(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/base/bean/quku/SectionInfo;->i:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    iput v0, p0, Lcn/kuwo/base/bean/quku/SectionInfo;->i:I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/base/bean/quku/SectionInfo;->d:Ljava/lang/String;

    return-void
.end method
