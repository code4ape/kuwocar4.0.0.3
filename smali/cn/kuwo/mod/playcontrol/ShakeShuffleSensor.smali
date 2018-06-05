.class public Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static a:Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;


# instance fields
.field private b:Landroid/hardware/SensorManager;

.field private c:Z

.field private d:I

.field private e:J

.field private f:J

.field private g:F

.field private h:J

.field private i:Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor$OnShakeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;

    invoke-direct {v0}, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;-><init>()V

    sput-object v0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->a:Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->c:Z

    iput v0, p0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->d:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->g:F

    invoke-static {}, Lcn/kuwo/kwmusiccar/App;->getInstance()Lcn/kuwo/kwmusiccar/App;

    move-result-object v0

    invoke-virtual {v0}, Lcn/kuwo/kwmusiccar/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->b:Landroid/hardware/SensorManager;

    return-void
.end method

.method public static a()Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;
    .locals 1

    sget-object v0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->a:Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;

    return-object v0
.end method


# virtual methods
.method public a(Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor$OnShakeListener;)V
    .locals 0

    iput-object p1, p0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->i:Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor$OnShakeListener;

    return-void
.end method

.method public b()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x0

    iput v0, p0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->d:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->g:F

    iput-boolean v3, p0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->c:Z

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    if-eq v2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->f:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    iput v1, p0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->d:I

    :cond_2
    iget-wide v4, p0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->h:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x64

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->h:J

    sub-long v4, v2, v4

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v1

    iget v7, p0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->g:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x461c4000    # 10000.0f

    mul-float/2addr v7, v8

    long-to-float v4, v4

    div-float v4, v7, v4

    const/high16 v5, 0x43af0000    # 350.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    iget v4, p0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->d:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->d:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_4

    iget-wide v4, p0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->e:J

    sub-long v4, v2, v4

    const-wide/16 v8, 0x3e8

    cmp-long v4, v4, v8

    if-lez v4, :cond_4

    iput-wide v2, p0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->e:J

    iput v1, p0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->d:I

    iget-object v4, p0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->i:Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor$OnShakeListener;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->i:Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor$OnShakeListener;

    const/4 v5, 0x0

    cmpg-float v5, v6, v5

    if-gez v5, :cond_3

    move v0, v1

    :cond_3
    invoke-interface {v4, v0}, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor$OnShakeListener;->onShake(I)V

    :cond_4
    iput-wide v2, p0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->f:J

    :cond_5
    iput-wide v2, p0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->h:J

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    iput v0, p0, Lcn/kuwo/mod/playcontrol/ShakeShuffleSensor;->g:F

    goto :goto_0
.end method
