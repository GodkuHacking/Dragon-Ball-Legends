.class public final Lcom/google/android/gms/internal/play_games_inputmapping/zzl;
.super Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/play_games_inputmapping/zzgo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzfi<",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzl;",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzk;",
        ">;",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzgo;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzl;


# instance fields
.field private zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzfn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzfn<",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzi;",
            ">;"
        }
    .end annotation
.end field

.field private zzf:Lcom/google/android/gms/internal/play_games_inputmapping/zzo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzl;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzl;

    const-class v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzl;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzu(Ljava/lang/Class;Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzl;->zzp()Lcom/google/android/gms/internal/play_games_inputmapping/zzfn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzl;->zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzfn;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/play_games_inputmapping/zzk;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzl;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzk()Lcom/google/android/gms/internal/play_games_inputmapping/zzff;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzk;

    return-object v0
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/play_games_inputmapping/zzl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzl;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzl;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzl;Lcom/google/android/gms/internal/play_games_inputmapping/zzi;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzl;->zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzfn;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfn;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzq(Lcom/google/android/gms/internal/play_games_inputmapping/zzfn;)Lcom/google/android/gms/internal/play_games_inputmapping/zzfn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzl;->zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzfn;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzl;->zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzfn;

    .line 4
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfn;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/play_games_inputmapping/zzl;Lcom/google/android/gms/internal/play_games_inputmapping/zzo;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzl;->zzf:Lcom/google/android/gms/internal/play_games_inputmapping/zzo;

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
    sget-object p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzl;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzl;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzk;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzk;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzj;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzl;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzl;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zze"

    aput-object v1, p1, p3

    .line 2
    const-class p3, Lcom/google/android/gms/internal/play_games_inputmapping/zzi;

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/play_games_inputmapping/zzl;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzl;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\t"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzl;->zzt(Lcom/google/android/gms/internal/play_games_inputmapping/zzgn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
