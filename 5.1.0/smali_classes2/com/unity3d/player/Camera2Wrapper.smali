.class public Lcom/unity3d/player/Camera2Wrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/player/a/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/unity3d/player/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/s;

    iput-object p1, p0, Lcom/unity3d/player/Camera2Wrapper;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/unity3d/player/Camera2Wrapper;->initCamera2Jni()V

    return-void
.end method

.method private final native deinitCamera2Jni()V
.end method

.method private final native initCamera2Jni()V
.end method

.method private final native nativeFrameReady(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V
.end method

.method private final native nativeSurfaceTextureReady(Ljava/lang/Object;)V
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/Camera2Wrapper;->deinitCamera2Jni()V

    invoke-virtual {p0}, Lcom/unity3d/player/Camera2Wrapper;->closeCamera2()V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/player/Camera2Wrapper;->nativeSurfaceTextureReady(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/unity3d/player/Camera2Wrapper;->nativeFrameReady(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V

    return-void
.end method

.method protected closeCamera2()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/player/s;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/s;

    return-void
.end method

.method protected getCamera2Count()I
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/unity3d/player/s;->a(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method protected getCamera2FocalLengthEquivalent(I)I
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/unity3d/player/s;->a(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method protected getCamera2Resolutions(I)[I
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/unity3d/player/s;->b(Landroid/content/Context;I)[I

    move-result-object p1

    return-object p1
.end method

.method protected getCamera2SensorOrientation(I)I
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/unity3d/player/s;->c(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method protected getFrameSizeCamera2()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/player/s;->b()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    return-object v0
.end method

.method protected initializeCamera2(IIIIILandroid/view/Surface;)Z
    .locals 9

    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/s;

    if-nez v0, :cond_0

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/unity3d/player/s;

    invoke-direct {v1, p0}, Lcom/unity3d/player/s;-><init>(Lcom/unity3d/player/a/a;)V

    iput-object v1, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/s;

    iget-object v2, p0, Lcom/unity3d/player/Camera2Wrapper;->a:Landroid/content/Context;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/unity3d/player/s;->a(Landroid/content/Context;IIIIILandroid/view/Surface;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected isCamera2AutoFocusPointSupported(I)Z
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/unity3d/player/s;->d(Landroid/content/Context;I)Z

    move-result p1

    return p1
.end method

.method protected isCamera2FrontFacing(I)Z
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/unity3d/player/s;->e(Landroid/content/Context;I)Z

    move-result p1

    return p1
.end method

.method protected pauseCamera2()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/player/s;->c()V

    :cond_0
    return-void
.end method

.method protected setAutoFocusPoint(FF)Z
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/unity3d/player/s;->a(FF)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected startCamera2()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/player/s;->g()V

    :cond_0
    return-void
.end method

.method protected stopCamera2()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/player/s;->h()V

    :cond_0
    return-void
.end method
