.class final Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_MouseSettings;
.super Lcom/google/android/libraries/play/games/inputmapping/datamodel/MouseSettings;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# instance fields
.field private final zza:Z

.field private final zzb:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/MouseSettings;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_MouseSettings;->zza:Z

    iput-boolean p2, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_MouseSettings;->zzb:Z

    return-void
.end method


# virtual methods
.method allowMouseSensitivityAdjustment()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_MouseSettings;->zza:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/play/games/inputmapping/datamodel/MouseSettings;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/libraries/play/games/inputmapping/datamodel/MouseSettings;

    iget-boolean v1, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_MouseSettings;->zza:Z

    .line 3
    invoke-virtual {p1}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/MouseSettings;->allowMouseSensitivityAdjustment()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_MouseSettings;->zzb:Z

    .line 4
    invoke-virtual {p1}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/MouseSettings;->invertMouseMovement()Z

    move-result p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_MouseSettings;->zza:Z

    const/16 v1, 0x4d5

    const/16 v2, 0x4cf

    const/4 v3, 0x1

    if-eq v3, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const v4, 0xf4243

    xor-int/2addr v0, v4

    mul-int/2addr v0, v4

    iget-boolean v4, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_MouseSettings;->zzb:Z

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method invertMouseMovement()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_MouseSettings;->zzb:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_MouseSettings;->zza:Z

    iget-boolean v1, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_MouseSettings;->zzb:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x4f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "MouseSettings{allowMouseSensitivityAdjustment="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", invertMouseMovement="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
