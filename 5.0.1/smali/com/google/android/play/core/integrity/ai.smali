.class public final Lcom/google/android/play/core/integrity/ai;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.1.0-beta01"

# interfaces
.implements Lcom/google/android/play/integrity/internal/ai;


# instance fields
.field private final a:Lcom/google/android/play/integrity/internal/al;

.field private final b:Lcom/google/android/play/integrity/internal/al;


# direct methods
.method public constructor <init>(Lcom/google/android/play/integrity/internal/al;Lcom/google/android/play/integrity/internal/al;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/integrity/ai;->a:Lcom/google/android/play/integrity/internal/al;

    iput-object p2, p0, Lcom/google/android/play/core/integrity/ai;->b:Lcom/google/android/play/integrity/internal/al;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/ai;->a:Lcom/google/android/play/integrity/internal/al;

    invoke-interface {v0}, Lcom/google/android/play/integrity/internal/al;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/integrity/ai;->b:Lcom/google/android/play/integrity/internal/al;

    invoke-interface {v1}, Lcom/google/android/play/integrity/internal/al;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/integrity/internal/q;

    new-instance v2, Lcom/google/android/play/core/integrity/ag;

    check-cast v0, Landroid/content/Context;

    .line 2
    invoke-direct {v2, v0, v1}, Lcom/google/android/play/core/integrity/ag;-><init>(Landroid/content/Context;Lcom/google/android/play/integrity/internal/q;)V

    return-object v2
.end method