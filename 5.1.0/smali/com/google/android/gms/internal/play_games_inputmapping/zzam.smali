.class final Lcom/google/android/gms/internal/play_games_inputmapping/zzam;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzai<",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzb:Ljava/util/concurrent/atomic/AtomicLong;

.field private final zzc:Ljava/util/concurrent/atomic/AtomicLong;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzak;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzak;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzam;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzai;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzam;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzam;->zzc:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzam;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/play_games_inputmapping/zzag;Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;)Lcom/google/android/gms/internal/play_games_inputmapping/zzam;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzam;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzai;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzai;->zza(Lcom/google/android/gms/internal/play_games_inputmapping/zzag;Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzam;

    return-object p0
.end method


# virtual methods
.method final zzb(JLcom/google/android/gms/internal/play_games_inputmapping/zzal;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzam;->zzc:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method final zzc(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzam;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    int-to-long v2, p1

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
