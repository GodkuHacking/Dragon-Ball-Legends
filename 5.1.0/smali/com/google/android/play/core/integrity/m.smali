.class final Lcom/google/android/play/core/integrity/m;
.super Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest$Builder;
.source "com.google.android.play:integrity@@1.1.0-beta01"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;
    .locals 3

    new-instance v0, Lcom/google/android/play/core/integrity/o;

    iget-object v1, p0, Lcom/google/android/play/core/integrity/m;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/integrity/o;-><init>(Ljava/lang/String;Lcom/google/android/play/core/integrity/n;)V

    return-object v0
.end method

.method public final setRequestHash(Ljava/lang/String;)Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/integrity/m;->a:Ljava/lang/String;

    return-object p0
.end method
