.class public abstract Lcom/google/android/gms/internal/play_games_inputmapping/zzai;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzag;",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzai;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzai;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzai;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/play_games_inputmapping/zzag;Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzag;",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;",
            ")TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzai;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzai;->zzb()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzai;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;->zza()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 5
    sget-object v4, Lcom/google/android/gms/internal/play_games_inputmapping/zzaa;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;->zzb(I)Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/play_games_inputmapping/zzar;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;->zzd(I)Ljava/lang/Object;

    move-result-object v4

    .line 7
    instance-of v5, v4, Lcom/google/android/gms/internal/play_games_inputmapping/zzap;

    if-eqz v5, :cond_3

    if-nez v2, :cond_2

    new-instance v2, Lcom/google/android/gms/internal/play_games_inputmapping/zzah;

    .line 8
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzah;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzai;Lcom/google/android/gms/internal/play_games_inputmapping/zzag;)V

    .line 9
    :cond_2
    check-cast v4, Lcom/google/android/gms/internal/play_games_inputmapping/zzap;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_games_inputmapping/zzap;->zza()V

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v0

    :cond_5
    return-object v1
.end method

.method protected abstract zzb()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method
