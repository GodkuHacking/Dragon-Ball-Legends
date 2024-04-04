.class public Lcom/google/android/play/core/integrity/IntegrityManagerFactory;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.1.0-beta01"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/play/core/integrity/IntegrityManager;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/play/core/integrity/y;->a(Landroid/content/Context;)Lcom/google/android/play/core/integrity/s;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/play/core/integrity/s;->a()Lcom/google/android/play/core/integrity/IntegrityManager;

    move-result-object p0

    return-object p0
.end method

.method public static createStandard(Landroid/content/Context;)Lcom/google/android/play/core/integrity/StandardIntegrityManager;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/play/core/integrity/am;->a(Landroid/content/Context;)Lcom/google/android/play/core/integrity/w;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/play/core/integrity/w;->a()Lcom/google/android/play/core/integrity/StandardIntegrityManager;

    move-result-object p0

    return-object p0
.end method
