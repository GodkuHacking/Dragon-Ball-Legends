.class final Lcom/google/android/play/core/integrity/ae;
.super Lcom/google/android/play/integrity/internal/r;
.source "com.google.android.play:integrity@@1.1.0-beta01"


# instance fields
.field final synthetic a:[B

.field final synthetic b:Ljava/lang/Long;

.field final synthetic c:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic d:Lcom/google/android/play/core/integrity/IntegrityTokenRequest;

.field final synthetic e:Lcom/google/android/play/core/integrity/ag;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/integrity/ag;Lcom/google/android/gms/tasks/TaskCompletionSource;[BLjava/lang/Long;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/play/core/integrity/IntegrityTokenRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/integrity/ae;->e:Lcom/google/android/play/core/integrity/ag;

    iput-object p3, p0, Lcom/google/android/play/core/integrity/ae;->a:[B

    iput-object p4, p0, Lcom/google/android/play/core/integrity/ae;->b:Ljava/lang/Long;

    iput-object p5, p0, Lcom/google/android/play/core/integrity/ae;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p6, p0, Lcom/google/android/play/core/integrity/ae;->d:Lcom/google/android/play/core/integrity/IntegrityTokenRequest;

    invoke-direct {p0, p2}, Lcom/google/android/play/integrity/internal/r;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/android/play/integrity/internal/ad;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/play/core/integrity/IntegrityServiceException;

    const/16 v1, -0x9

    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/integrity/IntegrityServiceException;-><init>(ILjava/lang/Throwable;)V

    invoke-super {p0, v0}, Lcom/google/android/play/integrity/internal/r;->a(Ljava/lang/Exception;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/play/integrity/internal/r;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method protected final b()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/integrity/ae;->e:Lcom/google/android/play/core/integrity/ag;

    iget-object v0, v0, Lcom/google/android/play/core/integrity/ag;->a:Lcom/google/android/play/integrity/internal/ac;

    invoke-virtual {v0}, Lcom/google/android/play/integrity/internal/ac;->e()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/integrity/internal/n;

    iget-object v1, p0, Lcom/google/android/play/core/integrity/ae;->e:Lcom/google/android/play/core/integrity/ag;

    iget-object v2, p0, Lcom/google/android/play/core/integrity/ae;->a:[B

    iget-object v3, p0, Lcom/google/android/play/core/integrity/ae;->b:Ljava/lang/Long;

    .line 2
    invoke-static {v1, v2, v3}, Lcom/google/android/play/core/integrity/ag;->a(Lcom/google/android/play/core/integrity/ag;[BLjava/lang/Long;)Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/google/android/play/core/integrity/af;

    iget-object v3, p0, Lcom/google/android/play/core/integrity/ae;->e:Lcom/google/android/play/core/integrity/ag;

    iget-object v4, p0, Lcom/google/android/play/core/integrity/ae;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v2, v3, v4}, Lcom/google/android/play/core/integrity/af;-><init>(Lcom/google/android/play/core/integrity/ag;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 3
    invoke-interface {v0, v1, v2}, Lcom/google/android/play/integrity/internal/n;->c(Landroid/os/Bundle;Lcom/google/android/play/integrity/internal/p;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/play/core/integrity/ae;->e:Lcom/google/android/play/core/integrity/ag;

    invoke-static {v1}, Lcom/google/android/play/core/integrity/ag;->c(Lcom/google/android/play/core/integrity/ag;)Lcom/google/android/play/integrity/internal/q;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/play/core/integrity/ae;->d:Lcom/google/android/play/core/integrity/IntegrityTokenRequest;

    aput-object v4, v2, v3

    const-string v3, "requestIntegrityToken(%s)"

    .line 4
    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/integrity/internal/q;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/google/android/play/core/integrity/ae;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 5
    new-instance v2, Lcom/google/android/play/core/integrity/IntegrityServiceException;

    const/16 v3, -0x64

    invoke-direct {v2, v3, v0}, Lcom/google/android/play/core/integrity/IntegrityServiceException;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method
