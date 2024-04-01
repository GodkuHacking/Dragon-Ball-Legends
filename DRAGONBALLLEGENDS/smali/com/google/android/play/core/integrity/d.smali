.class final Lcom/google/android/play/core/integrity/d;
.super Lcom/google/android/play/core/integrity/aj;
.source "com.google.android.play:integrity@@1.1.0-beta01"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/integrity/aj;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/google/android/play/core/integrity/aj;
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/integrity/d;->a:Ljava/lang/String;

    return-object p0
.end method

.method final b()Lcom/google/android/play/core/integrity/IntegrityTokenResponse;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/play/core/integrity/f;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/play/core/integrity/f;-><init>(Ljava/lang/String;Lcom/google/android/play/core/integrity/e;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties: token"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
