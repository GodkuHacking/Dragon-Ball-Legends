.class final Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;
.super Lcom/google/android/gms/internal/play_games_inputmapping/zzcg;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# static fields
.field private static final zza:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzci;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final zzc:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzcm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;->zzc:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcg;-><init>(Ljava/lang/String;)V

    sget-object p1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    sget-object p1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "robolectric"

    .line 2
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v3, "goldfish"

    .line 3
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v3, "ranchu"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v0

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v1

    :goto_3
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "eng"

    .line 4
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "userdebug"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    move v1, v0

    :cond_5
    :goto_4
    if-nez p1, :cond_8

    if-eqz v2, :cond_6

    goto :goto_5

    :cond_6
    if-eqz v1, :cond_7

    new-instance p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzcp;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcp;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcp;->zzb(Z)Lcom/google/android/gms/internal/play_games_inputmapping/zzcp;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcg;->zza()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcp;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;

    return-void

    :cond_7
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;

    return-void

    .line 4
    :cond_8
    :goto_5
    new-instance p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzch;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzch;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcg;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzch;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;

    return-void
.end method

.method public static zze(Ljava/lang/String;)Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzci;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzci;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;

    const/16 v1, 0x24

    const/16 v2, 0x2e

    .line 3
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;-><init>(Ljava/lang/String;)V

    .line 4
    sget-object p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcl;->zza:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    sget-object p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcl;->zza:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 6
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;

    if-eqz p0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzci;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcg;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzci;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;->zzf()V

    :cond_2
    return-object v0
.end method

.method private static zzf()V
    .locals 3

    .line 1
    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;->zzc:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcm;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndDecrement()J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcm;->zzb()Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcm;->zza()Lcom/google/android/gms/internal/play_games_inputmapping/zzba;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzba;->zzn()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzba;->zzk()Ljava/util/logging/Level;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;->zzd(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    :cond_1
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;->zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzba;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/RuntimeException;Lcom/google/android/gms/internal/play_games_inputmapping/zzba;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;->zzb(Ljava/lang/RuntimeException;Lcom/google/android/gms/internal/play_games_inputmapping/zzba;)V

    return-void

    :cond_0
    const-string p2, "ProxyAndroidLoggerBackend"

    const-string v0, "Internal logging error before configuration"

    .line 2
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzba;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;->zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzba;)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;->zzb:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    const-wide/16 v2, 0x14

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;->zzc:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    const-string v0, "ProxyAndroidLoggerBackend"

    const-string v1, "Too many Flogger logs received before configuration. Dropping old logs."

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;->zzc:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzcm;

    .line 5
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcm;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;Lcom/google/android/gms/internal/play_games_inputmapping/zzba;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;

    if-eqz p1, :cond_2

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;->zzf()V

    :cond_2
    return-void
.end method

.method public final zzd(Ljava/util/logging/Level;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;->zzd(Ljava/util/logging/Level;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
