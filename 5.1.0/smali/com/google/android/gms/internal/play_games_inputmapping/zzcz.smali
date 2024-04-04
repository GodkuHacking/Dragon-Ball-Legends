.class final Lcom/google/android/gms/internal/play_games_inputmapping/zzcz;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzda;",
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
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzda;

    check-cast p2, Lcom/google/android/gms/internal/play_games_inputmapping/zzda;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzda;->zza(Lcom/google/android/gms/internal/play_games_inputmapping/zzda;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzda;->zza(Lcom/google/android/gms/internal/play_games_inputmapping/zzda;)Ljava/lang/String;

    const/4 p1, 0x0

    throw p1
.end method
