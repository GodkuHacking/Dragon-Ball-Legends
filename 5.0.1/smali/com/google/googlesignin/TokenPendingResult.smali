.class public Lcom/google/googlesignin/TokenPendingResult;
.super Lcom/google/android/gms/common/api/PendingResult;
.source "TokenPendingResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/PendingResult<",
        "Lcom/google/googlesignin/TokenResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TokenPendingResult"


# instance fields
.field private latch:Ljava/util/concurrent/CountDownLatch;

.field private final requestHandle:J

.field private result:Lcom/google/googlesignin/TokenResult;

.field private resultCallback:Lcom/google/android/gms/common/api/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultCallback<",
            "-",
            "Lcom/google/googlesignin/TokenResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlesignin/TokenPendingResult;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 40
    iput-wide p1, p0, Lcom/google/googlesignin/TokenPendingResult;->requestHandle:J

    .line 41
    new-instance v0, Lcom/google/googlesignin/TokenResult;

    invoke-direct {v0}, Lcom/google/googlesignin/TokenResult;-><init>()V

    iput-object v0, p0, Lcom/google/googlesignin/TokenPendingResult;->result:Lcom/google/googlesignin/TokenResult;

    .line 42
    invoke-virtual {v0, p1, p2}, Lcom/google/googlesignin/TokenResult;->setHandle(J)V

    return-void
.end method

.method private declared-synchronized getCallback()Lcom/google/android/gms/common/api/ResultCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/ResultCallback<",
            "-",
            "Lcom/google/googlesignin/TokenResult;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/google/googlesignin/TokenPendingResult;->resultCallback:Lcom/google/android/gms/common/api/ResultCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getResult()Lcom/google/googlesignin/TokenResult;
    .locals 1

    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/google/googlesignin/TokenPendingResult;->result:Lcom/google/googlesignin/TokenResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback<",
            "-",
            "Lcom/google/googlesignin/TokenResult;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 107
    :try_start_0
    iput-object p1, p0, Lcom/google/googlesignin/TokenPendingResult;->resultCallback:Lcom/google/android/gms/common/api/ResultCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public bridge synthetic await()Lcom/google/android/gms/common/api/Result;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/google/googlesignin/TokenPendingResult;->await()Lcom/google/googlesignin/TokenResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/googlesignin/TokenPendingResult;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/googlesignin/TokenResult;

    move-result-object p1

    return-object p1
.end method

.method public await()Lcom/google/googlesignin/TokenResult;
    .locals 2

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/google/googlesignin/TokenPendingResult;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    const/16 v1, 0xe

    .line 51
    invoke-virtual {p0, v0, v1}, Lcom/google/googlesignin/TokenPendingResult;->setResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;I)V

    .line 54
    :goto_0
    invoke-direct {p0}, Lcom/google/googlesignin/TokenPendingResult;->getResult()Lcom/google/googlesignin/TokenResult;

    move-result-object v0

    return-object v0
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Lcom/google/googlesignin/TokenResult;
    .locals 2

    const/4 v0, 0x0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/google/googlesignin/TokenPendingResult;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0xf

    .line 61
    invoke-virtual {p0, v0, p1}, Lcom/google/googlesignin/TokenPendingResult;->setResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p1, 0xe

    .line 64
    invoke-virtual {p0, v0, p1}, Lcom/google/googlesignin/TokenPendingResult;->setResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;I)V

    .line 66
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/googlesignin/TokenPendingResult;->getResult()Lcom/google/googlesignin/TokenResult;

    move-result-object p1

    return-object p1
.end method

.method public cancel()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x10

    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/google/googlesignin/TokenPendingResult;->setResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;I)V

    .line 72
    iget-object v0, p0, Lcom/google/googlesignin/TokenPendingResult;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public isCanceled()Z
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/google/googlesignin/TokenPendingResult;->getResult()Lcom/google/googlesignin/TokenResult;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlesignin/TokenPendingResult;->getResult()Lcom/google/googlesignin/TokenResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlesignin/TokenResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized setResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;I)V
    .locals 1

    monitor-enter p0

    .line 122
    :try_start_0
    new-instance v0, Lcom/google/googlesignin/TokenResult;

    invoke-direct {v0, p1, p2}, Lcom/google/googlesignin/TokenResult;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;I)V

    iput-object v0, p0, Lcom/google/googlesignin/TokenPendingResult;->result:Lcom/google/googlesignin/TokenResult;

    .line 123
    iget-wide p1, p0, Lcom/google/googlesignin/TokenPendingResult;->requestHandle:J

    invoke-virtual {v0, p1, p2}, Lcom/google/googlesignin/TokenResult;->setHandle(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback<",
            "-",
            "Lcom/google/googlesignin/TokenResult;",
            ">;)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/google/googlesignin/TokenPendingResult;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/google/googlesignin/TokenPendingResult;->getResult()Lcom/google/googlesignin/TokenResult;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/ResultCallback;->onResult(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/googlesignin/TokenPendingResult;->setCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :goto_0
    return-void
.end method

.method public setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback<",
            "-",
            "Lcom/google/googlesignin/TokenResult;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/google/googlesignin/TokenPendingResult;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1, p2, p3, p4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0xf

    .line 97
    invoke-virtual {p0, v0, p2}, Lcom/google/googlesignin/TokenPendingResult;->setResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p2, 0xe

    .line 100
    invoke-virtual {p0, v0, p2}, Lcom/google/googlesignin/TokenPendingResult;->setResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;I)V

    .line 103
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/googlesignin/TokenPendingResult;->getResult()Lcom/google/googlesignin/TokenResult;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/common/api/ResultCallback;->onResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public setStatus(I)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/google/googlesignin/TokenPendingResult;->result:Lcom/google/googlesignin/TokenResult;

    invoke-virtual {v0, p1}, Lcom/google/googlesignin/TokenResult;->setStatus(I)V

    .line 137
    iget-object p1, p0, Lcom/google/googlesignin/TokenPendingResult;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 138
    invoke-direct {p0}, Lcom/google/googlesignin/TokenPendingResult;->getCallback()Lcom/google/android/gms/common/api/ResultCallback;

    move-result-object p1

    .line 139
    invoke-direct {p0}, Lcom/google/googlesignin/TokenPendingResult;->getResult()Lcom/google/googlesignin/TokenResult;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Calling onResult for callback. result: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TokenPendingResult"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0}, Lcom/google/googlesignin/TokenPendingResult;->getCallback()Lcom/google/android/gms/common/api/ResultCallback;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/ResultCallback;->onResult(Lcom/google/android/gms/common/api/Result;)V

    :cond_0
    return-void
.end method
