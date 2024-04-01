.class public final Lcom/google/android/gms/internal/play_games_inputmapping/zzbr;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzbn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzbn<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzaq;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzbm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzbm<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzaq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbr;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzbn;

    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbr;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzbm;

    return-void
.end method

.method public static zza(Ljava/util/Set;)Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzar<",
            "*>;>;)",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzbk<",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzaq;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbr;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzbn;

    new-instance v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzbn;Lcom/google/android/gms/internal/play_games_inputmapping/zzbh;)V

    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbr;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzbm;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;->zza(Lcom/google/android/gms/internal/play_games_inputmapping/zzbm;)Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;->zzg(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method
