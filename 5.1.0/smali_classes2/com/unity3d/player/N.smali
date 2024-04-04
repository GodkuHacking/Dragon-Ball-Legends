.class Lcom/unity3d/player/N;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/unity3d/player/O;


# direct methods
.method constructor <init>(Lcom/unity3d/player/O;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/N;->a:Lcom/unity3d/player/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/N;->a:Lcom/unity3d/player/O;

    iget-object v0, v0, Lcom/unity3d/player/O;->a:Lcom/unity3d/player/P;

    iget-object v0, v0, Lcom/unity3d/player/P;->h:Lcom/unity3d/player/U;

    invoke-static {v0}, Lcom/unity3d/player/U;->-$$Nest$ma(Lcom/unity3d/player/U;)V

    iget-object v0, p0, Lcom/unity3d/player/N;->a:Lcom/unity3d/player/O;

    iget-object v0, v0, Lcom/unity3d/player/O;->a:Lcom/unity3d/player/P;

    iget-object v0, v0, Lcom/unity3d/player/P;->h:Lcom/unity3d/player/U;

    invoke-static {v0}, Lcom/unity3d/player/U;->-$$Nest$fgeta(Lcom/unity3d/player/U;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    return-void
.end method
