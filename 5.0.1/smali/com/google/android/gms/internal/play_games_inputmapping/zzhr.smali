.class final Lcom/google/android/gms/internal/play_games_inputmapping/zzhr;
.super Lcom/google/android/gms/internal/play_games_inputmapping/zzhp;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzhp<",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzhp;-><init>()V

    return-void
.end method


# virtual methods
.method final bridge synthetic zza(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;->zza()I

    move-result p1

    return p1
.end method

.method final bridge synthetic zzb(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;->zzb()I

    move-result p1

    return p1
.end method

.method final bridge synthetic zzc(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzc:Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;

    return-object p1
.end method

.method final bridge synthetic zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;->zzc()Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;

    move-result-object v0

    check-cast p2, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;->zzd(Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;)Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;

    move-result-object p1

    return-object p1
.end method

.method final zze(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzc:Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;

    return-void
.end method

.method final bridge synthetic zzf(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;

    check-cast p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    iput-object p2, p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzc:Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;

    return-void
.end method

.method final bridge synthetic zzg(Ljava/lang/Object;Lcom/google/android/gms/internal/play_games_inputmapping/zzew;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
