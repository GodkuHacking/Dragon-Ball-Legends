.class Lcom/unity3d/player/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field final synthetic a:Lcom/unity3d/player/s;


# direct methods
.method constructor <init>(Lcom/unity3d/player/s;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/q;->a:Lcom/unity3d/player/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/q;->a:Lcom/unity3d/player/s;

    invoke-static {v0}, Lcom/unity3d/player/s;->-$$Nest$fgeta(Lcom/unity3d/player/s;)Lcom/unity3d/player/a/a;

    move-result-object v0

    check-cast v0, Lcom/unity3d/player/Camera2Wrapper;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/Camera2Wrapper;->a(Ljava/lang/Object;)V

    return-void
.end method
