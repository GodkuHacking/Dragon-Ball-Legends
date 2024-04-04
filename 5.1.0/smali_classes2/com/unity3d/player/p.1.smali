.class Lcom/unity3d/player/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field final synthetic a:Lcom/unity3d/player/s;


# direct methods
.method constructor <init>(Lcom/unity3d/player/s;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/p;->a:Lcom/unity3d/player/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 11

    invoke-static {}, Lcom/unity3d/player/s;->-$$Nest$sfgetD()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/unity3d/player/p;->a:Lcom/unity3d/player/s;

    invoke-static {v1}, Lcom/unity3d/player/s;->-$$Nest$fgeta(Lcom/unity3d/player/s;)Lcom/unity3d/player/a/a;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    aget-object v2, v0, v2

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    aget-object v2, v0, v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v10

    move-object v4, v1

    check-cast v4, Lcom/unity3d/player/Camera2Wrapper;

    invoke-virtual/range {v4 .. v10}, Lcom/unity3d/player/Camera2Wrapper;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    const-string v1, "Camera2: Wrong image format."

    invoke-static {v0, v1}, Lcom/unity3d/player/u;->Log(ILjava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/unity3d/player/p;->a:Lcom/unity3d/player/s;

    invoke-static {v0}, Lcom/unity3d/player/s;->-$$Nest$fgetp(Lcom/unity3d/player/s;)Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/p;->a:Lcom/unity3d/player/s;

    invoke-static {v0, p1}, Lcom/unity3d/player/s;->-$$Nest$fputp(Lcom/unity3d/player/s;Landroid/media/Image;)V

    :cond_2
    invoke-static {}, Lcom/unity3d/player/s;->-$$Nest$sfgetD()Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_3
    return-void
.end method
