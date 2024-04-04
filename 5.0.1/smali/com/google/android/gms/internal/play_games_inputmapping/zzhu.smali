.class public final Lcom/google/android/gms/internal/play_games_inputmapping/zzhu;
.super Ljava/util/AbstractList;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/play_games_inputmapping/zzfv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzfv;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzfv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzfv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzhu;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzfv;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/play_games_inputmapping/zzhu;)Lcom/google/android/gms/internal/play_games_inputmapping/zzfv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzhu;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzfv;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzhu;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzfv;

    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzfu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfu;->zzf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzht;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzht;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzhu;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzhs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzhs;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzhu;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzhu;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzfv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfv;->size()I

    move-result v0

    return v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/play_games_inputmapping/zzfv;
    .locals 0

    return-object p0
.end method

.method public final zze(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzhu;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzfv;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfv;->zze(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzh()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzhu;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzfv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfv;->zzh()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
