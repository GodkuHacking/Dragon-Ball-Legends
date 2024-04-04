.class final Lcom/google/android/play/core/integrity/y;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.1.0-beta01"


# static fields
.field private static a:Lcom/google/android/play/core/integrity/s;


# direct methods
.method static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/play/core/integrity/s;
    .locals 3

    const-class v0, Lcom/google/android/play/core/integrity/y;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/play/core/integrity/y;->a:Lcom/google/android/play/core/integrity/s;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/play/core/integrity/q;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/play/core/integrity/q;-><init>(Lcom/google/android/play/core/integrity/p;)V

    invoke-static {p0}, Lcom/google/android/play/integrity/internal/ae;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/android/play/core/integrity/q;->a(Landroid/content/Context;)Lcom/google/android/play/core/integrity/q;

    .line 3
    invoke-interface {v1}, Lcom/google/android/play/core/integrity/x;->b()Lcom/google/android/play/core/integrity/s;

    move-result-object p0

    sput-object p0, Lcom/google/android/play/core/integrity/y;->a:Lcom/google/android/play/core/integrity/s;

    :cond_0
    sget-object p0, Lcom/google/android/play/core/integrity/y;->a:Lcom/google/android/play/core/integrity/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
