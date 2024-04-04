.class Lcom/unity3d/player/O;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/player/K;


# instance fields
.field final synthetic a:Lcom/unity3d/player/P;


# direct methods
.method constructor <init>(Lcom/unity3d/player/P;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/O;->a:Lcom/unity3d/player/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/O;->a:Lcom/unity3d/player/P;

    iget-object v0, v0, Lcom/unity3d/player/P;->h:Lcom/unity3d/player/U;

    invoke-static {v0}, Lcom/unity3d/player/U;->-$$Nest$fgete(Lcom/unity3d/player/U;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/unity3d/player/O;->a:Lcom/unity3d/player/P;

    iget-object v0, v0, Lcom/unity3d/player/P;->h:Lcom/unity3d/player/U;

    invoke-static {v0, p1}, Lcom/unity3d/player/U;->-$$Nest$fputg(Lcom/unity3d/player/U;I)V

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    invoke-static {v0}, Lcom/unity3d/player/U;->-$$Nest$fgeti(Lcom/unity3d/player/U;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/unity3d/player/N;

    invoke-direct {v1, p0}, Lcom/unity3d/player/N;-><init>(Lcom/unity3d/player/O;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/player/U;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/unity3d/player/O;->a:Lcom/unity3d/player/P;

    iget-object p1, p1, Lcom/unity3d/player/P;->h:Lcom/unity3d/player/U;

    invoke-static {p1}, Lcom/unity3d/player/U;->-$$Nest$fgetd(Lcom/unity3d/player/U;)Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_1
    iget-object p1, p0, Lcom/unity3d/player/O;->a:Lcom/unity3d/player/P;

    iget-object p1, p1, Lcom/unity3d/player/P;->h:Lcom/unity3d/player/U;

    invoke-static {p1}, Lcom/unity3d/player/U;->-$$Nest$fgete(Lcom/unity3d/player/U;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
