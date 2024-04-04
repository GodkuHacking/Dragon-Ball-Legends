.class final Lcom/google/android/gms/internal/games_v2/zzbp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/games_v2/zzbm;


# instance fields
.field private final zza:Landroid/app/Application;

.field private final zzb:Lcom/google/android/gms/games/internal/zzg;

.field private final zzc:Lcom/google/android/gms/internal/games_v2/zzaw;


# direct methods
.method constructor <init>(Landroid/app/Application;Lcom/google/android/gms/games/internal/zzg;Lcom/google/android/gms/internal/games_v2/zzaw;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbp;->zza:Landroid/app/Application;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzbp;->zzb:Lcom/google/android/gms/games/internal/zzg;

    iput-object p3, p0, Lcom/google/android/gms/internal/games_v2/zzbp;->zzc:Lcom/google/android/gms/internal/games_v2/zzaw;

    return-void
.end method

.method private final zzc()Lcom/google/android/gms/internal/games_v2/zzs;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbp;->zzb:Lcom/google/android/gms/games/internal/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzg;->zza()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzbp;->zzc:Lcom/google/android/gms/internal/games_v2/zzaw;

    iget-object v1, v1, Lcom/google/android/gms/internal/games_v2/zzaw;->zzb:Lcom/google/android/gms/internal/games_v2/zzq;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzr;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/games_v2/zzq;)Lcom/google/android/gms/internal/games_v2/zzs;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbp;->zzc:Lcom/google/android/gms/internal/games_v2/zzaw;

    iget-object v1, v0, Lcom/google/android/gms/internal/games_v2/zzaw;->zza:Landroid/app/Application;

    iget-object v0, v0, Lcom/google/android/gms/internal/games_v2/zzaw;->zzb:Lcom/google/android/gms/internal/games_v2/zzq;

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/games_v2/zzr;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/games_v2/zzq;)Lcom/google/android/gms/internal/games_v2/zzs;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/games_v2/zzy;)Lcom/google/android/gms/tasks/Task;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/games_v2/zzy;->zza()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbp;->zza:Landroid/app/Application;

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/InstantApps;->isInstantApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/games_v2/zzbp;->zzc()Lcom/google/android/gms/internal/games_v2/zzs;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/games_v2/zzs;->zza(Lcom/google/android/gms/internal/games_v2/zzy;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 4
    new-instance v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzfe;->zza()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/games_v2/zzbn;

    invoke-direct {v4, p0, p1, v1}, Lcom/google/android/gms/internal/games_v2/zzbn;-><init>(Lcom/google/android/gms/internal/games_v2/zzbp;Lcom/google/android/gms/internal/games_v2/zzy;Z)V

    .line 6
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzfe;->zza()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzbo;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/games_v2/zzbo;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/games_v2/zzy;ZLcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p3

    .line 2
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/google/android/gms/common/api/ApiException;

    if-nez v1, :cond_1

    return-object p3

    .line 4
    :cond_1
    check-cast v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    return-object p3

    :cond_2
    const-string p3, "GamesAuthenticator"

    const-string v0, "Service connection suspended during the first sign-in attempt. Trying again."

    .line 5
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/games_v2/zzez;->zza(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/games_v2/zzbp;->zzc()Lcom/google/android/gms/internal/games_v2/zzs;

    move-result-object p3

    .line 7
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzs;->zza(Lcom/google/android/gms/internal/games_v2/zzy;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
