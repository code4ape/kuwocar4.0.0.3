.class public Lcn/kuwo/base/bean/online/OnlineSectionItem;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcn/kuwo/base/bean/online/OnlineSectionItem;->a:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/base/bean/online/OnlineSectionItem;->b:Ljava/lang/String;

    return-object v0
.end method
