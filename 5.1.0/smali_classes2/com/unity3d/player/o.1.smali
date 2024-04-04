.class Lcom/unity3d/player/o;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;


# instance fields
.field final synthetic a:Lcom/unity3d/player/s;


# direct methods
.method constructor <init>(Lcom/unity3d/player/s;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/o;->a:Lcom/unity3d/player/s;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    invoke-static {}, Lcom/unity3d/player/s;->-$$Nest$sfgetD()Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    const/4 v0, 0x5

    const-string v1, "Camera2: CameraDevice disconnected."

    invoke-static {v0, v1}, Lcom/unity3d/player/u;->Log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/unity3d/player/o;->a:Lcom/unity3d/player/s;

    invoke-static {v0, p1}, Lcom/unity3d/player/s;->-$$Nest$ma(Lcom/unity3d/player/s;Landroid/hardware/camera2/CameraDevice;)V

    invoke-static {}, Lcom/unity3d/player/s;->-$$Nest$sfgetD()Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera2: Error opeining CameraDevice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x6

    invoke-static {v0, p2}, Lcom/unity3d/player/u;->Log(ILjava/lang/String;)V

    iget-object p2, p0, Lcom/unity3d/player/o;->a:Lcom/unity3d/player/s;

    invoke-static {p2, p1}, Lcom/unity3d/player/s;->-$$Nest$ma(Lcom/unity3d/player/s;Landroid/hardware/camera2/CameraDevice;)V

    invoke-static {}, Lcom/unity3d/player/s;->-$$Nest$sfgetD()Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/o;->a:Lcom/unity3d/player/s;

    invoke-static {v0, p1}, Lcom/unity3d/player/s;->-$$Nest$fputb(Lcom/unity3d/player/s;Landroid/hardware/camera2/CameraDevice;)V

    invoke-static {}, Lcom/unity3d/player/s;->-$$Nest$sfgetD()Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
