.class public final Lcom/google/android/gms/internal/play_games_inputmapping/zze;
.super Lcom/google/android/gms/internal/play_games_inputmapping/zzff;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/play_games_inputmapping/zzgo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzff<",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzf;",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zze;",
        ">;",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzgo;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;->zzb()Lcom/google/android/gms/internal/play_games_inputmapping/zzf;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzd;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;->zzb()Lcom/google/android/gms/internal/play_games_inputmapping/zzf;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/play_games_inputmapping/zze;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zze;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzm()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zze;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;->zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzf;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/play_games_inputmapping/zze;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzm()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zze;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;->zzd(Lcom/google/android/gms/internal/play_games_inputmapping/zzf;I)V

    return-object p0
.end method
