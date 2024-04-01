.class final Lcom/google/android/play/integrity/internal/y;
.super Lcom/google/android/play/integrity/internal/r;
.source "com.google.android.play:integrity@@1.1.0-beta01"


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Lcom/google/android/play/integrity/internal/ab;


# direct methods
.method constructor <init>(Lcom/google/android/play/integrity/internal/ab;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/integrity/internal/y;->b:Lcom/google/android/play/integrity/internal/ab;

    iput-object p2, p0, Lcom/google/android/play/integrity/internal/y;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Lcom/google/android/play/integrity/internal/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/integrity/internal/y;->b:Lcom/google/android/play/integrity/internal/ab;

    iget-object v0, v0, Lcom/google/android/play/integrity/internal/ab;->a:Lcom/google/android/play/integrity/internal/ac;

    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ac;->g(Lcom/google/android/play/integrity/internal/ac;)Lcom/google/android/play/integrity/internal/x;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/integrity/internal/y;->a:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/google/android/play/integrity/internal/x;->a(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IInterface;

    invoke-static {v0, v1}, Lcom/google/android/play/integrity/internal/ac;->n(Lcom/google/android/play/integrity/internal/ac;Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/play/integrity/internal/y;->b:Lcom/google/android/play/integrity/internal/ab;

    iget-object v0, v0, Lcom/google/android/play/integrity/internal/ab;->a:Lcom/google/android/play/integrity/internal/ac;

    .line 2
    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ac;->r(Lcom/google/android/play/integrity/internal/ac;)V

    iget-object v0, p0, Lcom/google/android/play/integrity/internal/y;->b:Lcom/google/android/play/integrity/internal/ab;

    iget-object v0, v0, Lcom/google/android/play/integrity/internal/ab;->a:Lcom/google/android/play/integrity/internal/ac;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/play/integrity/internal/ac;->m(Lcom/google/android/play/integrity/internal/ac;Z)V

    iget-object v0, p0, Lcom/google/android/play/integrity/internal/y;->b:Lcom/google/android/play/integrity/internal/ab;

    iget-object v0, v0, Lcom/google/android/play/integrity/internal/ab;->a:Lcom/google/android/play/integrity/internal/ac;

    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ac;->i(Lcom/google/android/play/integrity/internal/ac;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 5
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/integrity/internal/y;->b:Lcom/google/android/play/integrity/internal/ab;

    iget-object v0, v0, Lcom/google/android/play/integrity/internal/ab;->a:Lcom/google/android/play/integrity/internal/ac;

    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ac;->i(Lcom/google/android/play/integrity/internal/ac;)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
