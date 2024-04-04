.class final Lcom/google/android/play/core/integrity/aw;
.super Lcom/google/android/play/integrity/internal/j;
.source "com.google.android.play:integrity@@1.1.0-beta01"


# instance fields
.field final synthetic a:Lcom/google/android/play/core/integrity/ay;

.field private final b:Lcom/google/android/play/integrity/internal/q;

.field private final c:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/integrity/ay;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/integrity/aw;->a:Lcom/google/android/play/core/integrity/ay;

    invoke-direct {p0}, Lcom/google/android/play/integrity/internal/j;-><init>()V

    new-instance p1, Lcom/google/android/play/integrity/internal/q;

    const-string v0, "OnRequestIntegrityTokenCallback"

    .line 2
    invoke-direct {p1, v0}, Lcom/google/android/play/integrity/internal/q;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/play/core/integrity/aw;->b:Lcom/google/android/play/integrity/internal/q;

    iput-object p2, p0, Lcom/google/android/play/core/integrity/aw;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final b(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/aw;->a:Lcom/google/android/play/core/integrity/ay;

    iget-object v0, v0, Lcom/google/android/play/core/integrity/ay;->a:Lcom/google/android/play/integrity/internal/ac;

    iget-object v1, p0, Lcom/google/android/play/core/integrity/aw;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v1}, Lcom/google/android/play/integrity/internal/ac;->v(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object v0, p0, Lcom/google/android/play/core/integrity/aw;->b:Lcom/google/android/play/integrity/internal/q;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onRequestExpressIntegrityToken"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/integrity/internal/q;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, "error"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/play/core/integrity/aw;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    new-instance v1, Lcom/google/android/play/core/integrity/al;

    const/4 v2, 0x0

    .line 5
    invoke-direct {v1, v0, v2}, Lcom/google/android/play/core/integrity/al;-><init>(ILjava/lang/Throwable;)V

    .line 4
    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/integrity/aw;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/android/play/core/integrity/j;

    invoke-direct {v1}, Lcom/google/android/play/core/integrity/j;-><init>()V

    const-string v2, "token"

    .line 6
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/play/core/integrity/an;->a(Ljava/lang/String;)Lcom/google/android/play/core/integrity/an;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/play/core/integrity/an;->b()Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityToken;

    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/integrity/aw;->a:Lcom/google/android/play/core/integrity/ay;

    iget-object p1, p1, Lcom/google/android/play/core/integrity/ay;->a:Lcom/google/android/play/integrity/internal/ac;

    iget-object v0, p0, Lcom/google/android/play/core/integrity/aw;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, Lcom/google/android/play/integrity/internal/ac;->v(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p1, p0, Lcom/google/android/play/core/integrity/aw;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    new-instance v0, Lcom/google/android/play/core/integrity/al;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Incorrect callback is called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v2, -0x64

    invoke-direct {v0, v2, v1}, Lcom/google/android/play/core/integrity/al;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method
