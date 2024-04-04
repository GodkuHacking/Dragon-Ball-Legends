.class final Lcom/google/android/gms/internal/play_games_inputmapping/zzdm;
.super Lcom/google/android/gms/internal/play_games_inputmapping/zzdj;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzax;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzax;ILcom/google/android/gms/internal/play_games_inputmapping/zzax;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdm;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzax;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdj;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzax;I)V

    return-void
.end method


# virtual methods
.method protected final zzb(Lcom/google/android/gms/internal/play_games_inputmapping/zzdk;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzaw;->zzf:Lcom/google/android/gms/internal/play_games_inputmapping/zzaw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdj;->zzd()Lcom/google/android/gms/internal/play_games_inputmapping/zzax;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdk;->zzd(Ljava/lang/Object;Lcom/google/android/gms/internal/play_games_inputmapping/zzaw;Lcom/google/android/gms/internal/play_games_inputmapping/zzax;)V

    return-void
.end method
