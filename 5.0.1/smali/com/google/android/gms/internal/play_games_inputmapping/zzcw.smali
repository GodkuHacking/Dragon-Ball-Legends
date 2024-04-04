.class final Lcom/google/android/gms/internal/play_games_inputmapping/zzcw;
.super Lcom/google/android/gms/internal/play_games_inputmapping/zzct;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzct;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzcx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcw;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzct;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzct;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcv;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzcu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcw;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzcx;

    return-void
.end method

.method static final zzb()Lcom/google/android/gms/internal/play_games_inputmapping/zzct;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcw;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzct;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "No-op Provider"

    return-object v0
.end method
