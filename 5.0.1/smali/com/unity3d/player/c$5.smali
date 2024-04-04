.class final Lcom/unity3d/player/c$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/c;


# direct methods
.method constructor <init>(Lcom/unity3d/player/c;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/c$5;->a:Lcom/unity3d/player/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/c$5;->a:Lcom/unity3d/player/c;

    invoke-static {v0}, Lcom/unity3d/player/c;->h(Lcom/unity3d/player/c;)Lcom/unity3d/player/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/unity3d/player/e;->a(Ljava/lang/Object;)V

    return-void
.end method
