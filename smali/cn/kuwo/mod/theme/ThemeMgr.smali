.class public Lcn/kuwo/mod/theme/ThemeMgr;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcn/kuwo/mod/theme/ThemeMgr;


# instance fields
.field private b:Lcn/kuwo/mod/theme/KwTheme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/kuwo/mod/theme/ThemeMgr;

    invoke-direct {v0}, Lcn/kuwo/mod/theme/ThemeMgr;-><init>()V

    sput-object v0, Lcn/kuwo/mod/theme/ThemeMgr;->a:Lcn/kuwo/mod/theme/ThemeMgr;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "\u827e\u8fe6\u53f7"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawable id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/kuwo/base/log/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static a()Lcn/kuwo/mod/theme/ThemeMgr;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/theme/ThemeMgr;->a:Lcn/kuwo/mod/theme/ThemeMgr;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcn/kuwo/mod/theme/KwTheme;

    invoke-direct {v0}, Lcn/kuwo/mod/theme/KwTheme;-><init>()V

    iput-object v0, p0, Lcn/kuwo/mod/theme/ThemeMgr;->b:Lcn/kuwo/mod/theme/KwTheme;

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "home_page.xmlml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcn/kuwo/mod/theme/ThemeMgr;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcn/kuwo/mod/theme/ThemeMgr;->b:Lcn/kuwo/mod/theme/KwTheme;

    invoke-virtual {v2, v1}, Lcn/kuwo/mod/theme/KwTheme;->c(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "home_play_bg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcn/kuwo/mod/theme/ThemeMgr;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcn/kuwo/mod/theme/ThemeMgr;->b:Lcn/kuwo/mod/theme/KwTheme;

    invoke-virtual {v2, v1}, Lcn/kuwo/mod/theme/KwTheme;->d(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start_diagram_bg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcn/kuwo/mod/theme/ThemeMgr;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcn/kuwo/mod/theme/ThemeMgr;->b:Lcn/kuwo/mod/theme/KwTheme;

    invoke-virtual {v2, v1}, Lcn/kuwo/mod/theme/KwTheme;->a(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start_diagram_icon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcn/kuwo/mod/theme/ThemeMgr;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcn/kuwo/mod/theme/ThemeMgr;->b:Lcn/kuwo/mod/theme/KwTheme;

    invoke-virtual {v2, v1}, Lcn/kuwo/mod/theme/KwTheme;->b(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "home_pagege.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/kuwo/mod/theme/ThemeMgr;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcn/kuwo/mod/theme/ThemeMgr;->b:Lcn/kuwo/mod/theme/KwTheme;

    invoke-virtual {v1, v0}, Lcn/kuwo/mod/theme/KwTheme;->e(I)V

    return-void
.end method

.method public b()Lcn/kuwo/mod/theme/KwTheme;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/mod/theme/ThemeMgr;->b:Lcn/kuwo/mod/theme/KwTheme;

    return-object v0
.end method
