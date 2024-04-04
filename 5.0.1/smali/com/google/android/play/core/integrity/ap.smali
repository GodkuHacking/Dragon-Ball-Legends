.class final Lcom/google/android/play/core/integrity/ap;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.1.0-beta01"

# interfaces
.implements Lcom/google/android/play/core/integrity/StandardIntegrityManager;


# instance fields
.field private final a:Lcom/google/android/play/core/integrity/ay;

.field private final b:Lcom/google/android/play/core/integrity/bc;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/integrity/ay;Lcom/google/android/play/core/integrity/bc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/integrity/ap;->a:Lcom/google/android/play/core/integrity/ay;

    iput-object p2, p0, Lcom/google/android/play/core/integrity/ap;->b:Lcom/google/android/play/core/integrity/bc;

    return-void
.end method


# virtual methods
.method final synthetic a(Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;Ljava/lang/Long;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v1, p0, Lcom/google/android/play/core/integrity/ap;->b:Lcom/google/android/play/core/integrity/bc;

    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;->a()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-instance p1, Lcom/google/android/play/core/integrity/bb;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/play/core/integrity/bb;-><init>(Lcom/google/android/play/core/integrity/bc;JJ)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final prepareIntegrityToken(Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenProvider;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/ap;->a:Lcom/google/android/play/core/integrity/ay;

    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/integrity/ay;->d(J)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/integrity/ao;

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/integrity/ao;-><init>(Lcom/google/android/play/core/integrity/ap;Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
