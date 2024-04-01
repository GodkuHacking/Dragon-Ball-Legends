.class final Lcom/google/android/play/core/integrity/z;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.1.0-beta01"

# interfaces
.implements Lcom/google/android/play/core/integrity/IntegrityManager;


# instance fields
.field private final a:Lcom/google/android/play/core/integrity/ag;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/integrity/ag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/integrity/z;->a:Lcom/google/android/play/core/integrity/ag;

    return-void
.end method


# virtual methods
.method public final requestIntegrityToken(Lcom/google/android/play/core/integrity/IntegrityTokenRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/integrity/IntegrityTokenRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/play/core/integrity/IntegrityTokenResponse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/z;->a:Lcom/google/android/play/core/integrity/ag;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/integrity/ag;->b(Lcom/google/android/play/core/integrity/IntegrityTokenRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
