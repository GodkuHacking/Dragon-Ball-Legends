.class public final synthetic Lcom/google/android/gms/internal/games_v2/zzbe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzff;

.field public final synthetic zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/games_v2/zzff;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbe;->zza:Lcom/google/android/gms/internal/games_v2/zzff;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzbe;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbe;->zza:Lcom/google/android/gms/internal/games_v2/zzff;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzbe;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-interface {v0}, Lcom/google/android/gms/internal/games_v2/zzff;->zza()Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/games_v2/zzbc;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/games_v2/zzbc;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    check-cast v0, Lcom/google/android/gms/tasks/Task;

    .line 2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
