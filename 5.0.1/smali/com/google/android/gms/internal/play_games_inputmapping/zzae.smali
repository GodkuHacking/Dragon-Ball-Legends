.class final Lcom/google/android/gms/internal/play_games_inputmapping/zzae;
.super Lcom/google/android/gms/internal/play_games_inputmapping/zzaf;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# instance fields
.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:I

.field private final zze:Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private zzf:I


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/play_games_inputmapping/zzad;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzaf;-><init>()V

    const/4 p5, 0x0

    iput p5, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzae;->zzf:I

    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzae;->zzb:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzae;->zzc:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzae;->zzd:I

    iput-object p4, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzae;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzae;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzae;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzae;->zzb:Ljava/lang/String;

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzae;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzae;->zzc:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzae;->zzc:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzae;->zzd:I

    iget p1, p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzae;->zzd:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzae;->zzf:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzae;->zzb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x1303

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzae;->zzc:Ljava/lang/String;

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzae;->zzd:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzae;->zzf:I

    :cond_0
    return v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzae;->zzd:I

    int-to-char v0, v0

    return v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzae;->zzb:Ljava/lang/String;

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzae;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzae;->zzc:Ljava/lang/String;

    return-object v0
.end method
