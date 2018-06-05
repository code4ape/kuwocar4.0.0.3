.class public abstract Lcn/kuwo/core/messagemgr/MessageManager$Runner;
.super Lcn/kuwo/core/messagemgr/MessageManager$Caller;


# instance fields
.field protected callVersion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Caller;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;-><init>()V

    iput p1, p0, Lcn/kuwo/core/messagemgr/MessageManager$Runner;->callVersion:I

    return-void
.end method


# virtual methods
.method public abstract call()V
.end method

.method public final run()V
    .locals 0

    invoke-virtual {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;->call()V

    invoke-virtual {p0}, Lcn/kuwo/core/messagemgr/MessageManager$Runner;->notifyFinish()V

    return-void
.end method
