.class final Lcom/google/firebase/concurrent/PausableExecutorServiceImpl;
.super Ljava/lang/Object;
.source "PausableExecutorServiceImpl.java"

# interfaces
.implements Lcom/google/firebase/concurrent/PausableExecutorService;


# instance fields
.field private final delegateService:Ljava/util/concurrent/ExecutorService;

.field private final pausableDelegate:Lcom/google/firebase/concurrent/PausableExecutor;


# direct methods
.method constructor <init>(ZLjava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/google/firebase/concurrent/PausableExecutorServiceImpl;->delegateService:Ljava/util/concurrent/ExecutorService;

    .line 34
    new-instance v0, Lcom/google/firebase/concurrent/PausableExecutorImpl;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/concurrent/PausableExecutorImpl;-><init>(ZLjava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/google/firebase/concurrent/PausableExecutorServiceImpl;->pausableDelegate:Lcom/google/firebase/concurrent/PausableExecutor;

    return-void
.end method

.method static synthetic lambda$submit$0(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-object p1
.end method

.method static synthetic lambda$submit$1(Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/firebase/concurrent/PausableExecutorServiceImpl;->delegateService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/firebase/concurrent/PausableExecutorServiceImpl;->pausableDelegate:Lcom/google/firebase/concurrent/PausableExecutor;

    invoke-interface {v0, p1}, Lcom/google/firebase/concurrent/PausableExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/google/firebase/concurrent/PausableExecutorServiceImpl;->delegateService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/google/firebase/concurrent/PausableExecutorServiceImpl;->delegateService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/google/firebase/concurrent/PausableExecutorServiceImpl;->delegateService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/google/firebase/concurrent/PausableExecutorServiceImpl;->delegateService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ExecutorService;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isPaused()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/firebase/concurrent/PausableExecutorServiceImpl;->pausableDelegate:Lcom/google/firebase/concurrent/PausableExecutor;

    invoke-interface {v0}, Lcom/google/firebase/concurrent/PausableExecutor;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/firebase/concurrent/PausableExecutorServiceImpl;->delegateService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/google/firebase/concurrent/PausableExecutorServiceImpl;->delegateService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/firebase/concurrent/PausableExecutorServiceImpl;->pausableDelegate:Lcom/google/firebase/concurrent/PausableExecutor;

    invoke-interface {v0}, Lcom/google/firebase/concurrent/PausableExecutor;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/firebase/concurrent/PausableExecutorServiceImpl;->pausableDelegate:Lcom/google/firebase/concurrent/PausableExecutor;

    invoke-interface {v0}, Lcom/google/firebase/concurrent/PausableExecutor;->resume()V

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shutting down is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Shutting down is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/google/firebase/concurrent/PausableExecutorServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/google/firebase/concurrent/PausableExecutorServiceImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/google/firebase/concurrent/PausableExecutorServiceImpl;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 91
    new-instance v0, Lcom/google/firebase/concurrent/PausableExecutorServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/concurrent/PausableExecutorServiceImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/firebase/concurrent/PausableExecutorServiceImpl;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/google/firebase/concurrent/PausableExecutorServiceImpl;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method
