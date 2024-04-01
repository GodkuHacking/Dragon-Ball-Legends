.class final Lcom/google/android/play/core/integrity/ay;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.1.0-beta01"


# instance fields
.field final a:Lcom/google/android/play/integrity/internal/ac;

.field private final b:Lcom/google/android/play/integrity/internal/q;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/play/integrity/internal/q;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/integrity/ay;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/play/core/integrity/ay;->b:Lcom/google/android/play/integrity/internal/q;

    .line 2
    invoke-static {p1}, Lcom/google/android/play/integrity/internal/ag;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Phonesky is not installed."

    .line 3
    invoke-virtual {p2, v0, p1}, Lcom/google/android/play/integrity/internal/q;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/play/core/integrity/ay;->a:Lcom/google/android/play/integrity/internal/ac;

    return-void

    .line 4
    :cond_0
    new-instance v7, Lcom/google/android/play/integrity/internal/ac;

    sget-object v4, Lcom/google/android/play/core/integrity/az;->a:Landroid/content/Intent;

    sget-object v5, Lcom/google/android/play/core/integrity/at;->a:Lcom/google/android/play/core/integrity/at;

    const/4 v6, 0x0

    const-string v3, "ExpressIntegrityService"

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/google/android/play/integrity/internal/ac;-><init>(Landroid/content/Context;Lcom/google/android/play/integrity/internal/q;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/play/integrity/internal/x;Lcom/google/android/play/integrity/internal/w;)V

    iput-object v7, p0, Lcom/google/android/play/core/integrity/ay;->a:Lcom/google/android/play/integrity/internal/ac;

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/play/core/integrity/ay;Ljava/lang/String;JJ)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/google/android/play/core/integrity/ay;->c:Ljava/lang/String;

    const-string v1, "package.name"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "cloud.prj"

    .line 3
    invoke-virtual {v0, p0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "nonce"

    .line 4
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "warm.up.sid"

    .line 5
    invoke-virtual {v0, p0, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method static bridge synthetic b(Lcom/google/android/play/core/integrity/ay;J)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/google/android/play/core/integrity/ay;->c:Ljava/lang/String;

    const-string v1, "package.name"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "cloud.prj"

    .line 3
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance p0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 p1, 0x4

    .line 5
    invoke-static {p1, p0}, Lcom/google/android/play/integrity/internal/d;->b(ILjava/util/List;)V

    new-instance p1, Ljava/util/ArrayList;

    .line 6
    invoke-static {p0}, Lcom/google/android/play/integrity/internal/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p0, "event_timestamps"

    .line 7
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method static bridge synthetic e(Lcom/google/android/play/core/integrity/ay;)Lcom/google/android/play/integrity/internal/q;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/integrity/ay;->b:Lcom/google/android/play/integrity/internal/q;

    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;JJ)Lcom/google/android/gms/tasks/Task;
    .locals 13

    move-object v9, p0

    .line 1
    iget-object v0, v9, Lcom/google/android/play/core/integrity/ay;->a:Lcom/google/android/play/integrity/internal/ac;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/play/core/integrity/al;

    const/4 v1, -0x2

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/integrity/al;-><init>(ILjava/lang/Throwable;)V

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, v9, Lcom/google/android/play/core/integrity/ay;->b:Lcom/google/android/play/integrity/internal/q;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "requestExpressIntegrityToken(%s)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/integrity/internal/q;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4
    new-instance v10, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v10}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iget-object v11, v9, Lcom/google/android/play/core/integrity/ay;->a:Lcom/google/android/play/integrity/internal/ac;

    new-instance v12, Lcom/google/android/play/core/integrity/av;

    move-object v0, v12

    move-object v1, p0

    move-object v2, v10

    move-object v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/play/core/integrity/av;-><init>(Lcom/google/android/play/core/integrity/ay;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;JJLcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 5
    invoke-virtual {v11, v12, v10}, Lcom/google/android/play/integrity/internal/ac;->t(Lcom/google/android/play/integrity/internal/r;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 6
    invoke-virtual {v10}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final d(J)Lcom/google/android/gms/tasks/Task;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/ay;->a:Lcom/google/android/play/integrity/internal/ac;

    if-nez v0, :cond_0

    new-instance p1, Lcom/google/android/play/core/integrity/al;

    const/4 p2, -0x2

    const/4 v0, 0x0

    .line 2
    invoke-direct {p1, p2, v0}, Lcom/google/android/play/core/integrity/al;-><init>(ILjava/lang/Throwable;)V

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/integrity/ay;->b:Lcom/google/android/play/integrity/internal/q;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "warmUpIntegrityToken(%s)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/integrity/internal/q;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/integrity/ay;->a:Lcom/google/android/play/integrity/internal/ac;

    new-instance v2, Lcom/google/android/play/core/integrity/au;

    move-object v3, v2

    move-object v4, p0

    move-object v5, v0

    move-wide v6, p1

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/play/core/integrity/au;-><init>(Lcom/google/android/play/core/integrity/ay;Lcom/google/android/gms/tasks/TaskCompletionSource;JLcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 5
    invoke-virtual {v1, v2, v0}, Lcom/google/android/play/integrity/internal/ac;->t(Lcom/google/android/play/integrity/internal/r;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
