.class final Lcom/google/android/gms/internal/play_games_inputmapping/zzbf;
.super Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# static fields
.field static final zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzbf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbf;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzbf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/play_games_inputmapping/zzar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzar<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "cannot read from empty metadata"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzar<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzd(I)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "cannot read from empty metadata"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
