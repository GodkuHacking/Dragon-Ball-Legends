.class final Lcom/google/android/gms/internal/play_games_inputmapping/zzbu;
.super Ljava/util/AbstractSet;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzar<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbu;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzar<",
            "*>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbt;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzbu;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbu;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;->zzd(Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;)I

    move-result v0

    return v0
.end method
