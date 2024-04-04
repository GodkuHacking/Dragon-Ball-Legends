.class public final Lcom/google/android/gms/internal/play_games_inputmapping/zzb;
.super Lcom/google/android/gms/internal/play_games_inputmapping/zzff;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/play_games_inputmapping/zzgo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzff<",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzc;",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzb;",
        ">;",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzgo;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzc;->zzb()Lcom/google/android/gms/internal/play_games_inputmapping/zzc;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_games_inputmapping/zza;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzc;->zzb()Lcom/google/android/gms/internal/play_games_inputmapping/zzc;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_games_inputmapping/zzb;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzm()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzb;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzc;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzc;->zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzc;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/play_games_inputmapping/zzf;)Lcom/google/android/gms/internal/play_games_inputmapping/zzb;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzm()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzb;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzc;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzc;->zze(Lcom/google/android/gms/internal/play_games_inputmapping/zzc;Lcom/google/android/gms/internal/play_games_inputmapping/zzf;)V

    return-object p0
.end method

.method public final zzc(J)Lcom/google/android/gms/internal/play_games_inputmapping/zzb;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzm()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzb;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzc;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzc;->zzd(Lcom/google/android/gms/internal/play_games_inputmapping/zzc;J)V

    return-object p0
.end method
