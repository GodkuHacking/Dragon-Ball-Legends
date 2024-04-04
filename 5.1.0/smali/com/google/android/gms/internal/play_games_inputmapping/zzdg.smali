.class public final Lcom/google/android/gms/internal/play_games_inputmapping/zzdg;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# static fields
.field private static final zza:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzda;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Lcom/google/android/gms/internal/play_games_inputmapping/zzdg;


# instance fields
.field private final zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzde;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdg;->zza:Ljava/util/Comparator;

    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdg;->zzb:Ljava/util/Comparator;

    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdg;

    new-instance v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzde;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzde;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdg;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzde;)V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdg;->zzc:Lcom/google/android/gms/internal/play_games_inputmapping/zzdg;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzde;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdg;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzde;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/play_games_inputmapping/zzdg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdg;->zzc:Lcom/google/android/gms/internal/play_games_inputmapping/zzdg;

    return-object v0
.end method

.method static synthetic zzb()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdg;->zza:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzdg;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzdg;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzdg;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzde;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdg;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzde;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzde;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdg;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzde;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzde;->hashCode()I

    move-result v0

    not-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdg;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzde;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzde;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdg;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzde;

    return-object v0
.end method

.method public final zzd()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdg;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzde;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzde;->isEmpty()Z

    move-result v0

    return v0
.end method
