.class public final Lcom/google/android/gms/internal/play_games_inputmapping/zzc;
.super Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/play_games_inputmapping/zzgo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzfi<",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzc;",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzb;",
        ">;",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzgo;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzc;


# instance fields
.field private zze:Ljava/lang/String;

.field private zzf:J

.field private zzg:Lcom/google/android/gms/internal/play_games_inputmapping/zzf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzc;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzc;

    const-class v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzc;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzu(Ljava/lang/Class;Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzc;->zze:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/play_games_inputmapping/zzb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzc;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzk()Lcom/google/android/gms/internal/play_games_inputmapping/zzff;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzb;

    return-object v0
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/play_games_inputmapping/zzc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzc;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzc;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzc;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzc;->zze:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/play_games_inputmapping/zzc;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzc;->zzf:J

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/play_games_inputmapping/zzc;Lcom/google/android/gms/internal/play_games_inputmapping/zzf;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzc;->zzg:Lcom/google/android/gms/internal/play_games_inputmapping/zzf;

    return-void
.end method


# virtual methods
.method protected final zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, p3, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzc;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzc;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzb;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzb;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zza;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzc;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzc;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zze"

    aput-object v1, p1, p3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v0

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/play_games_inputmapping/zzc;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzc;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0010\u0003\t"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzc;->zzt(Lcom/google/android/gms/internal/play_games_inputmapping/zzgn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
