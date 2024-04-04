.class public final Lcom/google/android/play/core/integrity/bd;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.1.0-beta01"

# interfaces
.implements Lcom/google/android/play/integrity/internal/ai;


# instance fields
.field private final a:Lcom/google/android/play/integrity/internal/al;


# direct methods
.method public constructor <init>(Lcom/google/android/play/integrity/internal/al;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/integrity/bd;->a:Lcom/google/android/play/integrity/internal/al;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/bd;->a:Lcom/google/android/play/integrity/internal/al;

    invoke-interface {v0}, Lcom/google/android/play/integrity/internal/al;->a()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/integrity/bc;

    .line 2
    check-cast v0, Lcom/google/android/play/core/integrity/ay;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/integrity/bc;-><init>(Lcom/google/android/play/core/integrity/ay;)V

    return-object v1
.end method
