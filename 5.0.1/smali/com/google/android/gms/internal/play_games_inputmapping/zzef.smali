.class final Lcom/google/android/gms/internal/play_games_inputmapping/zzef;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzen;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzen;

    check-cast p2, Lcom/google/android/gms/internal/play_games_inputmapping/zzen;

    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzed;

    .line 2
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzed;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzen;)V

    new-instance v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzed;

    .line 3
    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzed;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzen;)V

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzei;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzei;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzei;->zza()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-interface {v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzei;->zza()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzee;->zza(II)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzen;->zzd()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzen;->zzd()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzee;->zza(II)I

    move-result v2

    :goto_0
    return v2
.end method
