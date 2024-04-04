.class final Lcom/google/firebase/concurrent/PausableExecutorImpl;
.super Ljava/lang/Object;
.source "PausableExecutorImpl.java"

# interfaces
.implements Lcom/google/firebase/concurrent/PausableExecutor;


# instance fields
.field private final delegate:Ljava/util/concurrent/Executor;

.field private volatile paused:Z

.field final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLjava/util/concurrent/Executor;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/concurrent/PausableExecutorImpl;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 28
    iput-boolean p1, p0, Lcom/google/firebase/concurrent/PausableExecutorImpl;->paused:Z

    .line 29
    iput-object p2, p0, Lcom/google/firebase/concurrent/PausableExecutorImpl;->delegate:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private maybeEnqueueNext()V
    .locals 2

    .line 39
    iget-boolean v0, p0, Lcom/google/firebase/concurrent/PausableExecutorImpl;->paused:Z

    if-eqz v0, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/concurrent/PausableExecutorImpl;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    :goto_0
    if-eqz v0, :cond_2

    .line 44
    iget-object v1, p0, Lcom/google/firebase/concurrent/PausableExecutorImpl;->delegate:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 45
    iget-boolean v0, p0, Lcom/google/firebase/concurrent/PausableExecutorImpl;->paused:Z

    if-nez v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/google/firebase/concurrent/PausableExecutorImpl;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/firebase/concurrent/PausableExecutorImpl;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 35
    invoke-direct {p0}, Lcom/google/firebase/concurrent/PausableExecutorImpl;->maybeEnqueueNext()V

    return-void
.end method

.method public isPaused()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/google/firebase/concurrent/PausableExecutorImpl;->paused:Z

    return v0
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/google/firebase/concurrent/PausableExecutorImpl;->paused:Z

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/google/firebase/concurrent/PausableExecutorImpl;->paused:Z

    .line 61
    invoke-direct {p0}, Lcom/google/firebase/concurrent/PausableExecutorImpl;->maybeEnqueueNext()V

    return-void
.end method
