.class Lcom/unity3d/player/H;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic a:Lcom/unity3d/player/I;


# direct methods
.method constructor <init>(Lcom/unity3d/player/I;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/H;->a:Lcom/unity3d/player/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p2, p0, Lcom/unity3d/player/H;->a:Lcom/unity3d/player/I;

    invoke-static {p2}, Lcom/unity3d/player/I;->-$$Nest$fgetb(Lcom/unity3d/player/I;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p2

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Lcom/unity3d/player/UnityPlayer;->updateGLDisplay(ILandroid/view/Surface;)V

    iget-object p1, p0, Lcom/unity3d/player/H;->a:Lcom/unity3d/player/I;

    invoke-static {p1}, Lcom/unity3d/player/I;->-$$Nest$fgetb(Lcom/unity3d/player/I;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->sendSurfaceChangedEvent()V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/H;->a:Lcom/unity3d/player/I;

    invoke-static {v0}, Lcom/unity3d/player/I;->-$$Nest$fgetb(Lcom/unity3d/player/I;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->updateGLDisplay(ILandroid/view/Surface;)V

    iget-object p1, p0, Lcom/unity3d/player/H;->a:Lcom/unity3d/player/I;

    invoke-static {p1}, Lcom/unity3d/player/I;->-$$Nest$fgetc(Lcom/unity3d/player/I;)Lcom/unity3d/player/w;

    move-result-object v0

    invoke-static {p1}, Lcom/unity3d/player/I;->-$$Nest$fgetb(Lcom/unity3d/player/I;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    .line 1
    iget-object v1, v0, Lcom/unity3d/player/w;->b:Lcom/unity3d/player/v;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/unity3d/player/w;->b:Lcom/unity3d/player/v;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v0, Lcom/unity3d/player/w;->b:Lcom/unity3d/player/v;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    iget-object p1, p0, Lcom/unity3d/player/H;->a:Lcom/unity3d/player/I;

    invoke-static {p1}, Lcom/unity3d/player/I;->-$$Nest$fgetc(Lcom/unity3d/player/I;)Lcom/unity3d/player/w;

    move-result-object v0

    invoke-static {p1}, Lcom/unity3d/player/I;->-$$Nest$fgeta(Lcom/unity3d/player/I;)Lcom/unity3d/player/a;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget-boolean v1, Lcom/unity3d/player/PlatformSupport;->NOUGAT_SUPPORT:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/unity3d/player/w;->a:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/unity3d/player/w;->b:Lcom/unity3d/player/v;

    if-nez v1, :cond_0

    new-instance v1, Lcom/unity3d/player/v;

    iget-object v2, v0, Lcom/unity3d/player/w;->a:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/unity3d/player/v;-><init>(Lcom/unity3d/player/w;Landroid/content/Context;)V

    iput-object v1, v0, Lcom/unity3d/player/w;->b:Lcom/unity3d/player/v;

    :cond_0
    iget-object v0, v0, Lcom/unity3d/player/w;->b:Lcom/unity3d/player/v;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/unity3d/player/v;->a:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p1, v1, v0, v2}, Landroid/view/PixelCopy;->request(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/unity3d/player/H;->a:Lcom/unity3d/player/I;

    invoke-static {p1}, Lcom/unity3d/player/I;->-$$Nest$fgetb(Lcom/unity3d/player/I;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/player/UnityPlayer;->updateGLDisplay(ILandroid/view/Surface;)V

    return-void
.end method
