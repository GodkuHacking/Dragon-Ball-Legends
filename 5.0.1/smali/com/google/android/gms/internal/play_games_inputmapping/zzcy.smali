.class final Lcom/google/android/gms/internal/play_games_inputmapping/zzcy;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
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
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdf;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_games_inputmapping/zzdf;

    move-result-object v0

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdf;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_games_inputmapping/zzdf;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 4
    check-cast p1, Ljava/lang/Double;

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p1, p2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    throw p1

    .line 5
    :cond_1
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p1, p2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    goto :goto_0

    .line 6
    :cond_2
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 7
    :cond_3
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result p1

    goto :goto_0

    .line 3
    :cond_4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdf;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    :goto_0
    return p1
.end method
