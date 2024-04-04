.class public final Lcom/google/android/gms/internal/play_games_inputmapping/zzdi;
.super Lcom/google/android/gms/internal/play_games_inputmapping/zzdj;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzdh;

.field private final zzb:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzax;ILcom/google/android/gms/internal/play_games_inputmapping/zzdh;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdj;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzax;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdi;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzdh;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "%"

    .line 2
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzax;->zzh(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzax;->zzk()Z

    move-result p1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const/16 p1, 0x74

    goto :goto_0

    :cond_0
    const/16 p1, 0x54

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdh;->zza()C

    move-result p1

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdi;->zzb:Ljava/lang/String;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/play_games_inputmapping/zzdh;Lcom/google/android/gms/internal/play_games_inputmapping/zzax;I)Lcom/google/android/gms/internal/play_games_inputmapping/zzdj;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdi;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdi;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzax;ILcom/google/android/gms/internal/play_games_inputmapping/zzdh;)V

    return-object v0
.end method


# virtual methods
.method protected final zzb(Lcom/google/android/gms/internal/play_games_inputmapping/zzdk;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdi;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzdh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdj;->zzd()Lcom/google/android/gms/internal/play_games_inputmapping/zzax;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdk;->zze(Ljava/lang/Object;Lcom/google/android/gms/internal/play_games_inputmapping/zzdh;Lcom/google/android/gms/internal/play_games_inputmapping/zzax;)V

    return-void
.end method
