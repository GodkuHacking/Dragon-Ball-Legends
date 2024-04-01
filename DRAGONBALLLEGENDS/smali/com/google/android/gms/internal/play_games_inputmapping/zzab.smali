.class final Lcom/google/android/gms/internal/play_games_inputmapping/zzab;
.super Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# instance fields
.field private zza:[Ljava/lang/Object;

.field private zzb:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zza:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zzb:I

    return-void
.end method

.method private final zzh(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzar<",
            "*>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zzb:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zza:[Ljava/lang/Object;

    add-int v2, v0, v0

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Metadata{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zzb:I

    if-ge v1, v2, :cond_0

    const-string v2, " \'"

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zzb(I)Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\': "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zzd(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, " }"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zzb:I

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
    iget v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zzb:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zza:[Ljava/lang/Object;

    add-int/2addr p1, p1

    .line 2
    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    return-object p1

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;)Ljava/lang/Object;
    .locals 2
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

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zzh(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zza:[Ljava/lang/Object;

    add-int/2addr v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 2
    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzar;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzd(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zzb:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zza:[Ljava/lang/Object;

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    .line 2
    aget-object p1, v0, p1

    return-object p1

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method final zze(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzar<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzar;->zzg()Z

    move-result v0

    const-string v1, "metadata value"

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zzh(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zza:[Ljava/lang/Object;

    .line 7
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdt;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    add-int/2addr v0, v0

    add-int/lit8 v0, v0, 0x1

    aput-object p2, p1, v0

    return-void

    .line 2
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zzb:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zza:[Ljava/lang/Object;

    .line 3
    array-length v3, v2

    add-int/2addr v0, v0

    if-le v0, v3, :cond_2

    add-int/2addr v3, v3

    .line 4
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zza:[Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zza:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zzb:I

    const-string v3, "metadata key"

    .line 5
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdt;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    add-int/2addr v2, v2

    aput-object p1, v0, v2

    iget-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zza:[Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zzb:I

    .line 6
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdt;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    add-int/2addr v0, v0

    add-int/lit8 v0, v0, 0x1

    aput-object p2, p1, v0

    iget p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zzb:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zzb:I

    return-void
.end method

.method final zzf(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzar<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zzh(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;)I

    move-result v0

    if-ltz v0, :cond_2

    add-int/2addr v0, v0

    add-int/lit8 v1, v0, 0x2

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zzb:I

    add-int v3, v2, v2

    if-ge v1, v3, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zza:[Ljava/lang/Object;

    .line 2
    aget-object v2, v2, v1

    .line 3
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zza:[Ljava/lang/Object;

    .line 4
    aput-object v2, v3, v0

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v4, v1, 0x1

    .line 5
    aget-object v4, v3, v4

    aput-object v4, v3, v2

    add-int/lit8 v0, v0, 0x2

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    sub-int p1, v1, v0

    shr-int/lit8 p1, p1, 0x1

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zzb:I

    :goto_1
    if-ge v0, v1, :cond_2

    add-int/lit8 p1, v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzab;->zza:[Ljava/lang/Object;

    const/4 v3, 0x0

    .line 6
    aput-object v3, v2, v0

    move v0, p1

    goto :goto_1

    :cond_2
    return-void
.end method
