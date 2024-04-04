.class final Lcom/google/android/play/core/integrity/s;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.1.0-beta01"


# instance fields
.field private final a:Lcom/google/android/play/core/integrity/s;

.field private final b:Lcom/google/android/play/integrity/internal/al;

.field private final c:Lcom/google/android/play/integrity/internal/al;

.field private final d:Lcom/google/android/play/integrity/internal/al;

.field private final e:Lcom/google/android/play/integrity/internal/al;


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/integrity/r;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/play/core/integrity/s;->a:Lcom/google/android/play/core/integrity/s;

    invoke-static {p1}, Lcom/google/android/play/integrity/internal/aj;->b(Ljava/lang/Object;)Lcom/google/android/play/integrity/internal/ai;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/integrity/s;->b:Lcom/google/android/play/integrity/internal/al;

    invoke-static {}, Lcom/google/android/play/core/integrity/ab;->a()Lcom/google/android/play/core/integrity/ac;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/android/play/integrity/internal/ah;->b(Lcom/google/android/play/integrity/internal/al;)Lcom/google/android/play/integrity/internal/al;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/integrity/s;->c:Lcom/google/android/play/integrity/internal/al;

    iget-object p2, p0, Lcom/google/android/play/core/integrity/s;->b:Lcom/google/android/play/integrity/internal/al;

    new-instance v0, Lcom/google/android/play/core/integrity/ai;

    invoke-direct {v0, p2, p1}, Lcom/google/android/play/core/integrity/ai;-><init>(Lcom/google/android/play/integrity/internal/al;Lcom/google/android/play/integrity/internal/al;)V

    .line 3
    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ah;->b(Lcom/google/android/play/integrity/internal/al;)Lcom/google/android/play/integrity/internal/al;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/integrity/s;->d:Lcom/google/android/play/integrity/internal/al;

    new-instance p2, Lcom/google/android/play/core/integrity/aa;

    invoke-direct {p2, p1}, Lcom/google/android/play/core/integrity/aa;-><init>(Lcom/google/android/play/integrity/internal/al;)V

    .line 4
    invoke-static {p2}, Lcom/google/android/play/integrity/internal/ah;->b(Lcom/google/android/play/integrity/internal/al;)Lcom/google/android/play/integrity/internal/al;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/integrity/s;->e:Lcom/google/android/play/integrity/internal/al;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/play/core/integrity/IntegrityManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/s;->e:Lcom/google/android/play/integrity/internal/al;

    invoke-interface {v0}, Lcom/google/android/play/integrity/internal/al;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/integrity/IntegrityManager;

    return-object v0
.end method
