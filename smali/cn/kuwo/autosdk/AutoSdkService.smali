.class public Lcn/kuwo/autosdk/AutoSdkService;
.super Landroid/app/Service;


# instance fields
.field private a:Lcn/kuwo/autosdk/AutoSdkAidlImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcn/kuwo/autosdk/AutoSdkAidlImpl;

    invoke-direct {v0}, Lcn/kuwo/autosdk/AutoSdkAidlImpl;-><init>()V

    iput-object v0, p0, Lcn/kuwo/autosdk/AutoSdkService;->a:Lcn/kuwo/autosdk/AutoSdkAidlImpl;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/autosdk/AutoSdkService;->a:Lcn/kuwo/autosdk/AutoSdkAidlImpl;

    return-object v0
.end method
