.class public final Lcom/squareup/leakcanary/LeakCanary;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static a(Landroid/app/Application;)Lcom/squareup/leakcanary/RefWatcher;
    .locals 1

    sget-object v0, Lcom/squareup/leakcanary/RefWatcher;->a:Lcom/squareup/leakcanary/RefWatcher;

    return-object v0
.end method
