.class final Lcom/unity3d/player/o$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/player/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/o$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/o$1;


# direct methods
.method constructor <init>(Lcom/unity3d/player/o$1;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/o$1$1;->a:Lcom/unity3d/player/o$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/o$1$1;->a:Lcom/unity3d/player/o$1;

    iget-object v0, v0, Lcom/unity3d/player/o$1;->h:Lcom/unity3d/player/o;

    invoke-static {v0}, Lcom/unity3d/player/o;->d(Lcom/unity3d/player/o;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/unity3d/player/o$1$1;->a:Lcom/unity3d/player/o$1;

    iget-object v0, v0, Lcom/unity3d/player/o$1;->h:Lcom/unity3d/player/o;

    invoke-static {v0, p1}, Lcom/unity3d/player/o;->a(Lcom/unity3d/player/o;I)I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/o$1$1;->a:Lcom/unity3d/player/o$1;

    iget-object v0, v0, Lcom/unity3d/player/o$1;->h:Lcom/unity3d/player/o;

    invoke-static {v0}, Lcom/unity3d/player/o;->e(Lcom/unity3d/player/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/o$1$1;->a:Lcom/unity3d/player/o$1;

    iget-object v0, v0, Lcom/unity3d/player/o$1;->h:Lcom/unity3d/player/o;

    new-instance v1, Lcom/unity3d/player/o$1$1$1;

    invoke-direct {v1, p0}, Lcom/unity3d/player/o$1$1$1;-><init>(Lcom/unity3d/player/o$1$1;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/player/o;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/unity3d/player/o$1$1;->a:Lcom/unity3d/player/o$1;

    iget-object p1, p1, Lcom/unity3d/player/o$1;->h:Lcom/unity3d/player/o;

    invoke-static {p1}, Lcom/unity3d/player/o;->b(Lcom/unity3d/player/o;)Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_1
    iget-object p1, p0, Lcom/unity3d/player/o$1$1;->a:Lcom/unity3d/player/o$1;

    iget-object p1, p1, Lcom/unity3d/player/o$1;->h:Lcom/unity3d/player/o;

    invoke-static {p1}, Lcom/unity3d/player/o;->d(Lcom/unity3d/player/o;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
