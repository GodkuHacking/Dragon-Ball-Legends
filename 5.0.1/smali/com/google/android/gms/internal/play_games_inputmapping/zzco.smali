.class final Lcom/google/android/gms/internal/play_games_inputmapping/zzco;
.super Lcom/google/android/gms/internal/play_games_inputmapping/zzct;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzco;


# instance fields
.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzco;

    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzct;->zze()Lcom/google/android/gms/internal/play_games_inputmapping/zzct;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzco;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzct;)V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzco;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzco;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzct;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzct;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzco;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static final zzb()Lcom/google/android/gms/internal/play_games_inputmapping/zzco;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzco;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzco;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzco;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzct;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzct;->zza()Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/play_games_inputmapping/zzdg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzco;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzct;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzct;->zzc()Lcom/google/android/gms/internal/play_games_inputmapping/zzdg;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Ljava/lang/String;Ljava/util/logging/Level;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzco;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzct;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzct;->zzd(Ljava/lang/String;Ljava/util/logging/Level;Z)Z

    const/4 p1, 0x0

    return p1
.end method
