.class public Lcom/baidu/mapapi/map/WearMapView$AnimationTask;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/map/WearMapView;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/WearMapView;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;->a:Lcom/baidu/mapapi/map/WearMapView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;->a:Lcom/baidu/mapapi/map/WearMapView;

    iget-object v1, v1, Lcom/baidu/mapapi/map/WearMapView;->mTimerHandler:Lcom/baidu/mapapi/map/WearMapView$b;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/WearMapView$b;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
