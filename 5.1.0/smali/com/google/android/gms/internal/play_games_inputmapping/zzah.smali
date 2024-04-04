.class final Lcom/google/android/gms/internal/play_games_inputmapping/zzah;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzag;

.field final synthetic zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzai;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzai;Lcom/google/android/gms/internal/play_games_inputmapping/zzag;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzah;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzai;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzah;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzah;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzai;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzai;->zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzai;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzah;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzag;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
