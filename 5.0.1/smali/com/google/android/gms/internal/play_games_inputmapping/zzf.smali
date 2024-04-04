.class public final Lcom/google/android/gms/internal/play_games_inputmapping/zzf;
.super Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/play_games_inputmapping/zzgo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzfi<",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzf;",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zze;",
        ">;",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzgo;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzfm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzfm<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzf;


# instance fields
.field private zzf:Lcom/google/android/gms/internal/play_games_inputmapping/zzfl;

.field private zzg:Lcom/google/android/gms/internal/play_games_inputmapping/zzfl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzfm;

    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;->zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzf;

    const-class v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzu(Ljava/lang/Class;Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;->zzn()Lcom/google/android/gms/internal/play_games_inputmapping/zzfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;->zzf:Lcom/google/android/gms/internal/play_games_inputmapping/zzfl;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;->zzn()Lcom/google/android/gms/internal/play_games_inputmapping/zzfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;->zzg:Lcom/google/android/gms/internal/play_games_inputmapping/zzfl;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/play_games_inputmapping/zze;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;->zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzk()Lcom/google/android/gms/internal/play_games_inputmapping/zzff;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zze;

    return-object v0
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/play_games_inputmapping/zzf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;->zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzf;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzf;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;->zzg:Lcom/google/android/gms/internal/play_games_inputmapping/zzfl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfl;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzo(Lcom/google/android/gms/internal/play_games_inputmapping/zzfl;)Lcom/google/android/gms/internal/play_games_inputmapping/zzfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;->zzg:Lcom/google/android/gms/internal/play_games_inputmapping/zzfl;

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;->zzg:Lcom/google/android/gms/internal/play_games_inputmapping/zzfl;

    .line 4
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfl;->zzh(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/play_games_inputmapping/zzf;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;->zzf:Lcom/google/android/gms/internal/play_games_inputmapping/zzfl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfl;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzo(Lcom/google/android/gms/internal/play_games_inputmapping/zzfl;)Lcom/google/android/gms/internal/play_games_inputmapping/zzfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;->zzf:Lcom/google/android/gms/internal/play_games_inputmapping/zzfl;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;->zzf:Lcom/google/android/gms/internal/play_games_inputmapping/zzfl;

    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfl;->zzh(I)V

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
    sget-object p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;->zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzf;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_games_inputmapping/zze;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zze;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzd;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzf"

    aput-object v0, p1, p3

    const-string p3, "zzg"

    aput-object p3, p1, p2

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;->zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzf;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0002\u0000\u0001+\u0002,"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;->zzt(Lcom/google/android/gms/internal/play_games_inputmapping/zzgn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
