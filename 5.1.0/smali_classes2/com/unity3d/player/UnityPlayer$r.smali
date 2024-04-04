.class Lcom/unity3d/player/UnityPlayer$r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->setMainSurfaceViewAspectRatio(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;F)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$r;->b:Lcom/unity3d/player/UnityPlayer;

    iput p2, p0, Lcom/unity3d/player/UnityPlayer$r;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$r;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->-$$Nest$fgetmGlView(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/I;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/player/UnityPlayer$r;->a:F

    invoke-virtual {v0, v1}, Lcom/unity3d/player/I;->a(F)V

    return-void
.end method
