.class Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;
.super Ljava/lang/Object;
.source "LimitedConcurrencyExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final delegate:Ljava/util/concurrent/Executor;

.field private final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final semaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;I)V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x1

    if-lez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "concurrency must be positive."

    .line 39
    invoke-static {v1, v2}, Lcom/google/firebase/components/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;->delegate:Ljava/util/concurrent/Executor;

    .line 41
    new-instance p1, Ljava/util/concurrent/Semaphore;

    invoke-direct {p1, p2, v0}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object p1, p0, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;->semaphore:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method private decorate(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    .line 63
    new-instance v0, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private maybeEnqueueNext()V
    .locals 2

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 54
    iget-object v1, p0, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;->delegate:Ljava/util/concurrent/Executor;

    invoke-direct {p0, v0}, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;->decorate(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_1
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 47
    invoke-direct {p0}, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;->maybeEnqueueNext()V

    return-void
.end method

.method public synthetic lambda$decorate$0$com-google-firebase-concurrent-LimitedConcurrencyExecutor(Ljava/lang/Runnable;)V
    .locals 1

    .line 65
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object p1, p0, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 68
    invoke-direct {p0}, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;->maybeEnqueueNext()V

    return-void

    :catchall_0
    move-exception p1

    .line 67
    iget-object v0, p0, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 68
    invoke-direct {p0}, Lcom/google/firebase/concurrent/LimitedConcurrencyExecutor;->maybeEnqueueNext()V

    .line 69
    throw p1
.end method
