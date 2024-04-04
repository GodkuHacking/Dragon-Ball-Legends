.class final Lcom/google/android/play/core/integrity/w;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.1.0-beta01"


# instance fields
.field private final a:Lcom/google/android/play/core/integrity/w;

.field private final b:Lcom/google/android/play/integrity/internal/al;

.field private final c:Lcom/google/android/play/integrity/internal/al;

.field private final d:Lcom/google/android/play/integrity/internal/al;

.field private final e:Lcom/google/android/play/integrity/internal/al;

.field private final f:Lcom/google/android/play/integrity/internal/al;


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/integrity/v;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/play/core/integrity/w;->a:Lcom/google/android/play/core/integrity/w;

    invoke-static {p1}, Lcom/google/android/play/integrity/internal/aj;->b(Ljava/lang/Object;)Lcom/google/android/play/integrity/internal/ai;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/integrity/w;->b:Lcom/google/android/play/integrity/internal/al;

    invoke-static {}, Lcom/google/android/play/core/integrity/ar;->a()Lcom/google/android/play/core/integrity/as;

    move-result-object p2

    .line 2
    invoke-static {p2}, Lcom/google/android/play/integrity/internal/ah;->b(Lcom/google/android/play/integrity/internal/al;)Lcom/google/android/play/integrity/internal/al;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/play/core/integrity/w;->c:Lcom/google/android/play/integrity/internal/al;

    new-instance v0, Lcom/google/android/play/core/integrity/ba;

    invoke-direct {v0, p1, p2}, Lcom/google/android/play/core/integrity/ba;-><init>(Lcom/google/android/play/integrity/internal/al;Lcom/google/android/play/integrity/internal/al;)V

    .line 3
    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ah;->b(Lcom/google/android/play/integrity/internal/al;)Lcom/google/android/play/integrity/internal/al;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/integrity/w;->d:Lcom/google/android/play/integrity/internal/al;

    new-instance p2, Lcom/google/android/play/core/integrity/bd;

    invoke-direct {p2, p1}, Lcom/google/android/play/core/integrity/bd;-><init>(Lcom/google/android/play/integrity/internal/al;)V

    .line 4
    invoke-static {p2}, Lcom/google/android/play/integrity/internal/ah;->b(Lcom/google/android/play/integrity/internal/al;)Lcom/google/android/play/integrity/internal/al;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/play/core/integrity/w;->e:Lcom/google/android/play/integrity/internal/al;

    new-instance v0, Lcom/google/android/play/core/integrity/aq;

    invoke-direct {v0, p1, p2}, Lcom/google/android/play/core/integrity/aq;-><init>(Lcom/google/android/play/integrity/internal/al;Lcom/google/android/play/integrity/internal/al;)V

    .line 5
    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ah;->b(Lcom/google/android/play/integrity/internal/al;)Lcom/google/android/play/integrity/internal/al;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/integrity/w;->f:Lcom/google/android/play/integrity/internal/al;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/play/core/integrity/StandardIntegrityManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/w;->f:Lcom/google/android/play/integrity/internal/al;

    invoke-interface {v0}, Lcom/google/android/play/integrity/internal/al;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/integrity/StandardIntegrityManager;

    return-object v0
.end method
