.class final Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;
.super Lcom/google/android/gms/internal/play_games_inputmapping/zzby;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;

.field private final zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;

.field private final zzc:[I

.field private final zzd:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;Lcom/google/android/gms/internal/play_games_inputmapping/zzbs;)V
    .locals 8

    const/4 p3, 0x0

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzby;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzbs;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;->zza()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/16 v0, 0x1c

    if-gt p1, v0, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    const-string v1, "metadata size too large"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdt;->zzc(ZLjava/lang/String;)V

    .line 2
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;->zzc:[I

    const-wide/16 v0, 0x0

    move v2, p2

    move v3, v2

    .line 3
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_5

    .line 4
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;->zzi(I)Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_games_inputmapping/zzar;->zzc()J

    move-result-wide v5

    or-long/2addr v5, v0

    cmp-long v0, v5, v0

    if-nez v0, :cond_4

    move v0, p2

    :goto_2
    const/4 v1, -0x1

    if-ge v0, v3, :cond_1

    .line 6
    aget v7, p1, v0

    and-int/lit8 v7, v7, 0x1f

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;->zzi(I)Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/play_games_inputmapping/zzar;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    :cond_2
    if-eq v0, v1, :cond_4

    .line 8
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_games_inputmapping/zzar;->zzg()Z

    move-result v1

    if-eqz v1, :cond_3

    aget v1, p1, v0

    add-int/lit8 v4, v2, 0x4

    shl-int v4, p3, v4

    or-int/2addr v1, v4

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    aput v1, p1, v0

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v3, 0x1

    .line 7
    aput v2, p1, v3

    move v3, v0

    :goto_4
    add-int/lit8 v2, v2, 0x1

    move-wide v0, v5

    goto :goto_1

    :cond_5
    iput v3, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;->zzd:I

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;->zzd:I

    return p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;I)Lcom/google/android/gms/internal/play_games_inputmapping/zzar;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;->zzi(I)Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;->zzj(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;->zzc:[I

    return-object p0
.end method

.method private final zzi(I)Lcom/google/android/gms/internal/play_games_inputmapping/zzar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzar<",
            "*>;"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;->zzb(I)Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    move-result-object p1

    return-object p1
.end method

.method private final zzj(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;->zzd(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;->zzd:I

    return v0
.end method

.method public final zzb()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzar<",
            "*>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbu;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;)V

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzbo;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzbo<",
            "TC;>;TC;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;->zzd:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;->zzc:[I

    aget v1, v1, v0

    and-int/lit8 v2, v1, 0x1f

    .line 2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;->zzi(I)Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzar;->zzg()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;->zzj(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzar;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1, p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbo;->zza(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/play_games_inputmapping/zzbv;

    const/4 v4, 0x0

    .line 5
    invoke-direct {v3, p0, v2, v1, v4}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbv;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzbw;Lcom/google/android/gms/internal/play_games_inputmapping/zzar;ILcom/google/android/gms/internal/play_games_inputmapping/zzbs;)V

    invoke-virtual {p1, v2, v3, p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbo;->zzb(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;Ljava/util/Iterator;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
