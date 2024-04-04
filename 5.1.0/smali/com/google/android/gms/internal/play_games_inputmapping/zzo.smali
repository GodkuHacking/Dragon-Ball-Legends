.class public final Lcom/google/android/gms/internal/play_games_inputmapping/zzo;
.super Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/play_games_inputmapping/zzgo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzfi<",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzo;",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzn;",
        ">;",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzgo;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzo;


# instance fields
.field private zze:Z

.field private zzf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzo;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzo;

    const-class v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzo;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzu(Ljava/lang/Class;Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/play_games_inputmapping/zzn;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzo;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzk()Lcom/google/android/gms/internal/play_games_inputmapping/zzff;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzn;

    return-object v0
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/play_games_inputmapping/zzo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzo;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzo;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzo;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzo;->zze:Z

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/play_games_inputmapping/zzo;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzo;->zzf:Z

    return-void
.end method


# virtual methods
.method protected final zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzo;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzo;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzn;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzn;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzm;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzo;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzo;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zze"

    aput-object v0, p1, p3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/play_games_inputmapping/zzo;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzo;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0007\u0002\u0007"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzo;->zzt(Lcom/google/android/gms/internal/play_games_inputmapping/zzgn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
