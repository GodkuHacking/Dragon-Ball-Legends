.class final Lcom/google/android/play/core/integrity/j;
.super Lcom/google/android/play/core/integrity/an;
.source "com.google.android.play:integrity@@1.1.0-beta01"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/integrity/an;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/google/android/play/core/integrity/an;
    .locals 1

    const-string v0, "Null token"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/integrity/j;->a:Ljava/lang/String;

    return-object p0
.end method

.method final b()Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityToken;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/j;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/play/core/integrity/l;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/play/core/integrity/l;-><init>(Ljava/lang/String;Lcom/google/android/play/core/integrity/k;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties: token"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
