.class final Lcom/google/android/play/integrity/internal/z;
.super Lcom/google/android/play/integrity/internal/r;
.source "com.google.android.play:integrity@@1.1.0-beta01"


# instance fields
.field final synthetic a:Lcom/google/android/play/integrity/internal/ab;


# direct methods
.method constructor <init>(Lcom/google/android/play/integrity/internal/ab;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/integrity/internal/z;->a:Lcom/google/android/play/integrity/internal/ab;

    invoke-direct {p0}, Lcom/google/android/play/integrity/internal/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/integrity/internal/z;->a:Lcom/google/android/play/integrity/internal/ab;

    iget-object v0, v0, Lcom/google/android/play/integrity/internal/ab;->a:Lcom/google/android/play/integrity/internal/ac;

    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ac;->s(Lcom/google/android/play/integrity/internal/ac;)V

    iget-object v0, p0, Lcom/google/android/play/integrity/internal/z;->a:Lcom/google/android/play/integrity/internal/ab;

    iget-object v0, v0, Lcom/google/android/play/integrity/internal/ab;->a:Lcom/google/android/play/integrity/internal/ac;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/play/integrity/internal/ac;->n(Lcom/google/android/play/integrity/internal/ac;Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/play/integrity/internal/z;->a:Lcom/google/android/play/integrity/internal/ab;

    iget-object v0, v0, Lcom/google/android/play/integrity/internal/ab;->a:Lcom/google/android/play/integrity/internal/ac;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/play/integrity/internal/ac;->m(Lcom/google/android/play/integrity/internal/ac;Z)V

    return-void
.end method
