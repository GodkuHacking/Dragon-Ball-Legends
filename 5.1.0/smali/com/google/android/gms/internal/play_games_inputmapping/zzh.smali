.class public final Lcom/google/android/gms/internal/play_games_inputmapping/zzh;
.super Lcom/google/android/gms/internal/play_games_inputmapping/zzff;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/play_games_inputmapping/zzgo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzff<",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzi;",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzh;",
        ">;",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzgo;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzi;->zzb()Lcom/google/android/gms/internal/play_games_inputmapping/zzi;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzg;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzi;->zzb()Lcom/google/android/gms/internal/play_games_inputmapping/zzi;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/play_games_inputmapping/zzc;)Lcom/google/android/gms/internal/play_games_inputmapping/zzh;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzm()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzh;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzi;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzi;->zzd(Lcom/google/android/gms/internal/play_games_inputmapping/zzi;Lcom/google/android/gms/internal/play_games_inputmapping/zzc;)V

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/play_games_inputmapping/zzh;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzm()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzh;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzi;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzi;->zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzi;Ljava/lang/String;)V

    return-object p0
.end method
