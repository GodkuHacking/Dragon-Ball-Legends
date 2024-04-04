.class public final Lcom/google/android/gms/internal/games_v2/zzbl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/games_v2/zzav;


# instance fields
.field private final zza:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzc:Ljava/util/Queue;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zze:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzf:Landroid/app/Application;

.field private final zzg:Lcom/google/android/gms/games/internal/zzg;

.field private final zzh:Lcom/google/android/gms/internal/games_v2/zzbm;

.field private final zzi:Lcom/google/android/gms/games/internal/v2/resolution/zzb;


# direct methods
.method constructor <init>(Landroid/app/Application;Lcom/google/android/gms/games/internal/zzg;Lcom/google/android/gms/games/internal/v2/resolution/zzb;Lcom/google/android/gms/internal/games_v2/zzbm;[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzbi;->zza:Lcom/google/android/gms/internal/games_v2/zzbi;

    invoke-direct {p5, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p5, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzbh;->zza:Lcom/google/android/gms/internal/games_v2/zzbh;

    invoke-direct {p5, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p5, Ljava/util/ArrayDeque;

    .line 3
    invoke-direct {p5}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zzc:Ljava/util/Queue;

    new-instance p5, Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-direct {p5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p5, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-direct {p5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zzf:Landroid/app/Application;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zzg:Lcom/google/android/gms/games/internal/zzg;

    iput-object p3, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zzi:Lcom/google/android/gms/games/internal/v2/resolution/zzb;

    iput-object p4, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zzh:Lcom/google/android/gms/internal/games_v2/zzbm;

    return-void
.end method

.method private static zzj()Lcom/google/android/gms/common/api/ApiException;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method private static zzk(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/tasks/Task;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzbi;->zza:Lcom/google/android/gms/internal/games_v2/zzbi;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/games_v2/zzbi;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/games_v2/zzbi;->ordinal()I

    move-result p0

    if-eqz p0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    if-nez p1, :cond_0

    sget-object p0, Lcom/google/android/gms/games/AuthenticationResult;->zzb:Lcom/google/android/gms/games/AuthenticationResult;

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/gms/games/AuthenticationResult;->zza:Lcom/google/android/gms/games/AuthenticationResult;

    .line 9
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/games/AuthenticationResult;->zzb:Lcom/google/android/gms/games/AuthenticationResult;

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 11
    invoke-direct {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzfe;->zza()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzbb;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/games_v2/zzbb;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/games/AuthenticationResult;->zzb:Lcom/google/android/gms/games/AuthenticationResult;

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/android/gms/games/AuthenticationResult;->zza:Lcom/google/android/gms/games/AuthenticationResult;

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    .line 4
    :cond_5
    new-instance p0, Lcom/google/android/gms/common/api/ApiException;

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method private static zzl(Lcom/google/android/gms/internal/games_v2/zzff;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbl;->zzp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/games_v2/zzff;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/tasks/Task;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 4
    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/games_v2/zzbe;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/games_v2/zzbe;-><init>(Lcom/google/android/gms/internal/games_v2/zzff;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method private final zzm(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/games_v2/zzy;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Attempting authentication: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GamesApiManager"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/games_v2/zzez;->zza(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zzh:Lcom/google/android/gms/internal/games_v2/zzbm;

    .line 2
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/games_v2/zzbm;->zza(Lcom/google/android/gms/internal/games_v2/zzy;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/games_v2/zzba;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzba;-><init>(Lcom/google/android/gms/internal/games_v2/zzbl;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/games_v2/zzy;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private final zzn(Lcom/google/android/gms/tasks/TaskCompletionSource;ILandroid/app/PendingIntent;ZZ)V
    .locals 1

    const-string v0, "Must be called on the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const-string v0, "GamesApiManager"

    if-eqz p4, :cond_1

    if-eqz p3, :cond_1

    iget-object p4, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zzg:Lcom/google/android/gms/games/internal/zzg;

    .line 2
    invoke-virtual {p4}, Lcom/google/android/gms/games/internal/zzg;->zza()Landroid/app/Activity;

    move-result-object p4

    if-nez p4, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p4, p3}, Lcom/google/android/gms/games/internal/v2/resolution/zzb;->zzb(Landroid/app/Activity;Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p3

    .line 16
    sget-object p4, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    new-instance p5, Lcom/google/android/gms/internal/games_v2/zzaz;

    invoke-direct {p5, p0, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzaz;-><init>(Lcom/google/android/gms/internal/games_v2/zzbl;Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    invoke-virtual {p3, p4, p5}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    const-string p1, "Resolution triggered"

    .line 17
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games_v2/zzez;->zza(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    sget-object p3, Lcom/google/android/gms/internal/games_v2/zzbh;->zzb:Lcom/google/android/gms/internal/games_v2/zzbh;

    sget-object p4, Lcom/google/android/gms/internal/games_v2/zzbh;->zzc:Lcom/google/android/gms/internal/games_v2/zzbh;

    .line 4
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/games_v2/zzay;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p5, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "Consumed pending explicit sign-in. Attempting explicit sign-in"

    .line 12
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/games_v2/zzez;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {p3}, Lcom/google/android/gms/internal/games_v2/zzy;->zzb(I)Lcom/google/android/gms/internal/games_v2/zzy;

    move-result-object p2

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzbl;->zzm(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/games_v2/zzy;)V

    return-void

    .line 5
    :cond_3
    :goto_1
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/games_v2/zzbi;->zzd:Lcom/google/android/gms/internal/games_v2/zzbi;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zzc:Ljava/util/Queue;

    .line 7
    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 8
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/games_v2/zzbk;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbl;->zzj()Lcom/google/android/gms/common/api/ApiException;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/games_v2/zzbk;->zzc(Ljava/lang/Exception;)V

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_4
    return-void
.end method

.method private final zzo(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "startAuthenticationIfNecessary() signInType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GamesApiManager"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/games_v2/zzez;->zza(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Must be called on the main thread."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/games_v2/zzbi;->zza:Lcom/google/android/gms/internal/games_v2/zzbi;

    sget-object v3, Lcom/google/android/gms/internal/games_v2/zzbi;->zzb:Lcom/google/android/gms/internal/games_v2/zzbi;

    .line 4
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/games_v2/zzay;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/google/android/gms/internal/games_v2/zzbi;->zzd:Lcom/google/android/gms/internal/games_v2/zzbi;

    sget-object v3, Lcom/google/android/gms/internal/games_v2/zzbi;->zzb:Lcom/google/android/gms/internal/games_v2/zzbi;

    .line 5
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/games_v2/zzay;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzbh;->zza:Lcom/google/android/gms/internal/games_v2/zzbh;

    sget-object v2, Lcom/google/android/gms/internal/games_v2/zzbh;->zzb:Lcom/google/android/gms/internal/games_v2/zzbh;

    .line 16
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/games_v2/zzay;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x58

    .line 17
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Explicit sign-in during existing authentication. Marking pending explicit sign-in: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/games_v2/zzez;->zza(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 18
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Authentication attempt skipped. Already authenticated or authenticating. State: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/games_v2/zzez;->zza(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "New authentication attempt in progress"

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    .line 8
    :cond_3
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    if-nez p1, :cond_4

    .line 10
    sget-object v2, Lcom/google/android/gms/internal/games_v2/zzbh;->zzc:Lcom/google/android/gms/internal/games_v2/zzbh;

    goto :goto_1

    .line 11
    :cond_4
    sget-object v2, Lcom/google/android/gms/internal/games_v2/zzbh;->zza:Lcom/google/android/gms/internal/games_v2/zzbh;

    .line 12
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/games_v2/zzy;->zzb(I)Lcom/google/android/gms/internal/games_v2/zzy;

    move-result-object p1

    .line 14
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/games_v2/zzbl;->zzm(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/games_v2/zzy;)V

    return-void
.end method

.method private static zzp()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/tasks/Task;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzbf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/games_v2/zzbf;-><init>(Lcom/google/android/gms/internal/games_v2/zzbl;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzbl;->zzl(Lcom/google/android/gms/internal/games_v2/zzff;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/tasks/Task;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzbg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/games_v2/zzbg;-><init>(Lcom/google/android/gms/internal/games_v2/zzbl;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzbl;->zzl(Lcom/google/android/gms/internal/games_v2/zzff;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/tasks/Task;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzbl;->zzk(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/games_v2/zzap;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/games_v2/zzbi;

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Executing API call with authentication state: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GamesApiManager"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/games_v2/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/games_v2/zzbi;->zzc:Lcom/google/android/gms/internal/games_v2/zzbi;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApi;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzap;->zza(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/games_v2/zzbi;->zzd:Lcom/google/android/gms/internal/games_v2/zzbi;

    if-ne v0, v1, :cond_1

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbl;->zzj()Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/games_v2/zzbi;->zza:Lcom/google/android/gms/internal/games_v2/zzbi;

    if-ne v0, v1, :cond_2

    .line 6
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzbk;

    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/gms/internal/games_v2/zzbk;-><init>(Lcom/google/android/gms/internal/games_v2/zzap;Lcom/google/android/gms/tasks/TaskCompletionSource;[B)V

    new-instance p1, Lcom/google/android/gms/internal/games_v2/zzbd;

    invoke-direct {p1, p0, v1}, Lcom/google/android/gms/internal/games_v2/zzbd;-><init>(Lcom/google/android/gms/internal/games_v2/zzbl;Lcom/google/android/gms/internal/games_v2/zzbk;)V

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbl;->zzp()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 11
    :cond_3
    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zze()Lcom/google/android/gms/tasks/Task;
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzbl;->zzo(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzbl;->zzk(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzf()Lcom/google/android/gms/tasks/Task;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzbl;->zzo(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzbl;->zzk(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzg(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/games_v2/zzy;Lcom/google/android/gms/tasks/Task;)V
    .locals 9

    .line 1
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "GamesApiManager"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/games_v2/zzfb;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Authentication task failed"

    invoke-static {v1, v0, p3}, Lcom/google/android/gms/internal/games_v2/zzez;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/games_v2/zzy;->zza()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/games_v2/zzy;->zzd()Z

    move-result p2

    xor-int/lit8 v8, p2, 0x1

    move-object v3, p0

    move-object v4, p1

    .line 3
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/games_v2/zzbl;->zzn(Lcom/google/android/gms/tasks/TaskCompletionSource;ILandroid/app/PendingIntent;ZZ)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/games_v2/zzbq;

    .line 5
    invoke-virtual {p3}, Lcom/google/android/gms/internal/games_v2/zzbq;->zze()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Failed to authenticate: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/games_v2/zzez;->zza(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/games_v2/zzy;->zza()I

    move-result v5

    .line 7
    invoke-virtual {p3}, Lcom/google/android/gms/internal/games_v2/zzbq;->zza()Landroid/app/PendingIntent;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/games_v2/zzy;->zzd()Z

    move-result p2

    xor-int/lit8 v8, p2, 0x1

    move-object v3, p0

    move-object v4, p1

    .line 8
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/games_v2/zzbl;->zzn(Lcom/google/android/gms/tasks/TaskCompletionSource;ILandroid/app/PendingIntent;ZZ)V

    return-void

    .line 9
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/games_v2/zzbq;->zzd()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    const-string p3, "Unexpected state: game run token absent"

    .line 10
    invoke-static {v1, p3}, Lcom/google/android/gms/internal/games_v2/zzez;->zzg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/games_v2/zzy;->zza()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/games_v2/zzy;->zzd()Z

    move-result p2

    xor-int/lit8 v8, p2, 0x1

    move-object v3, p0

    move-object v4, p1

    .line 11
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/games_v2/zzbl;->zzn(Lcom/google/android/gms/tasks/TaskCompletionSource;ILandroid/app/PendingIntent;ZZ)V

    return-void

    :cond_2
    const-string p2, "Successfully authenticated"

    .line 12
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/games_v2/zzez;->zza(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Must be called on the main thread."

    .line 13
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/google/android/gms/games/zzn;->zzb()Lcom/google/android/gms/games/zzl;

    move-result-object p2

    const v0, 0x201113

    .line 15
    invoke-virtual {p2, v0}, Lcom/google/android/gms/games/zzl;->zzd(I)Lcom/google/android/gms/games/zzl;

    .line 16
    invoke-static {}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->createDefault()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/games/zzl;->zzc(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/zzl;

    .line 17
    invoke-virtual {p2, p3}, Lcom/google/android/gms/games/zzl;->zza(Ljava/lang/String;)Lcom/google/android/gms/games/zzl;

    invoke-static {}, Lcom/google/android/gms/games/internal/zzl;->zza()Lcom/google/android/gms/games/internal/zzj;

    move-result-object p3

    .line 18
    invoke-virtual {p3, v2}, Lcom/google/android/gms/games/internal/zzj;->zzb(Z)Lcom/google/android/gms/games/internal/zzj;

    .line 19
    invoke-virtual {p3, v2}, Lcom/google/android/gms/games/internal/zzj;->zzc(Z)Lcom/google/android/gms/games/internal/zzj;

    .line 20
    invoke-virtual {p3, v2}, Lcom/google/android/gms/games/internal/zzj;->zza(Z)Lcom/google/android/gms/games/internal/zzj;

    invoke-virtual {p3}, Lcom/google/android/gms/games/internal/zzj;->zzd()Lcom/google/android/gms/games/internal/zzl;

    move-result-object p3

    .line 21
    invoke-virtual {p2, p3}, Lcom/google/android/gms/games/zzl;->zzb(Lcom/google/android/gms/games/internal/zzl;)Lcom/google/android/gms/games/zzl;

    .line 22
    invoke-virtual {p2}, Lcom/google/android/gms/games/zzl;->zze()Lcom/google/android/gms/games/zzn;

    move-result-object p2

    .line 23
    new-instance p3, Lcom/google/android/gms/internal/games_v2/zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zzf:Landroid/app/Application;

    invoke-direct {p3, v0, p2}, Lcom/google/android/gms/internal/games_v2/zze;-><init>(Landroid/content/Context;Lcom/google/android/gms/games/zzn;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzbi;->zzc:Lcom/google/android/gms/internal/games_v2/zzbi;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 26
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zzc:Ljava/util/Queue;

    .line 27
    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 28
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/games_v2/zzbk;

    .line 30
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/games_v2/zzbk;->zza(Lcom/google/android/gms/common/api/GoogleApi;)V

    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method final synthetic zzh(Lcom/google/android/gms/tasks/TaskCompletionSource;ILcom/google/android/gms/tasks/Task;)V
    .locals 8

    .line 1
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "GamesApiManager"

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/games_v2/zzfb;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Resolution failed"

    invoke-static {v1, v0, p3}, Lcom/google/android/gms/internal/games_v2/zzez;->zzh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    .line 3
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/games_v2/zzbl;->zzn(Lcom/google/android/gms/tasks/TaskCompletionSource;ILandroid/app/PendingIntent;ZZ)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/games/internal/v2/resolution/zzc;

    .line 5
    invoke-virtual {p3}, Lcom/google/android/gms/games/internal/v2/resolution/zzc;->zzd()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Resolution successful"

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/games_v2/zzez;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p3}, Lcom/google/android/gms/games/internal/v2/resolution/zzc;->zza()Landroid/content/Intent;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/games_v2/zzaf;->zza(Landroid/content/Intent;)Lcom/google/android/gms/internal/games_v2/zzaf;

    move-result-object p3

    .line 8
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/games_v2/zzy;->zzc(ILcom/google/android/gms/internal/games_v2/zzaf;)Lcom/google/android/gms/internal/games_v2/zzy;

    move-result-object p2

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzbl;->zzm(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/games_v2/zzy;)V

    return-void

    :cond_1
    const-string p3, "Resolution attempt was canceled"

    .line 10
    invoke-static {v1, p3}, Lcom/google/android/gms/internal/games_v2/zzez;->zza(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    .line 11
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/games_v2/zzbl;->zzn(Lcom/google/android/gms/tasks/TaskCompletionSource;ILandroid/app/PendingIntent;ZZ)V

    return-void
.end method

.method final synthetic zzi(Lcom/google/android/gms/internal/games_v2/zzbk;)V
    .locals 2

    const-string v0, "Must be called on the main thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/games_v2/zzbi;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/games_v2/zzbi;->zzc:Lcom/google/android/gms/internal/games_v2/zzbi;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApi;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzbk;->zza(Lcom/google/android/gms/common/api/GoogleApi;)V

    return-void

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/games_v2/zzbi;->zzd:Lcom/google/android/gms/internal/games_v2/zzbi;

    if-ne v0, v1, :cond_1

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbl;->zzj()Lcom/google/android/gms/common/api/ApiException;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzbk;->zzc(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbl;->zzc:Ljava/util/Queue;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
