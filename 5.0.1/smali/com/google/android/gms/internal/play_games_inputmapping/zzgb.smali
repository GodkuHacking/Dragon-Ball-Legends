.class abstract Lcom/google/android/gms/internal/play_games_inputmapping/zzgb;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzgb;

.field private static final zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzgb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzfx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfx;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzfw;)V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgb;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzgb;

    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzfz;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfz;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzfy;)V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgb;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzgb;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzga;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zzc()Lcom/google/android/gms/internal/play_games_inputmapping/zzgb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgb;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzgb;

    return-object v0
.end method

.method static zzd()Lcom/google/android/gms/internal/play_games_inputmapping/zzgb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgb;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzgb;

    return-object v0
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;J)V
.end method

.method abstract zzb(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
