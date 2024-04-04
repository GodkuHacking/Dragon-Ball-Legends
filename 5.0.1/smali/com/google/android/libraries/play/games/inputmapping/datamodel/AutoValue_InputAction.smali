.class final Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputAction;
.super Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputAction;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:I

.field private final zzc:Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputControls;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/google/android/libraries/play/games/inputmapping/datamodel/InputControls;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputAction;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputAction;->zza:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputAction;->zzb:I

    if-eqz p3, :cond_0

    .line 2
    iput-object p3, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputAction;->zzc:Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputControls;

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null inputControls"

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null actionLabel"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method actionLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputAction;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputAction;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputAction;

    iget-object v1, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputAction;->zza:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputAction;->actionLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputAction;->zzb:I

    .line 4
    invoke-virtual {p1}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputAction;->uniqueId()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputAction;->zzc:Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputControls;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputAction;->inputControls()Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputControls;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputAction;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputAction;->zzb:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputAction;->zzc:Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputControls;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method inputControls()Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputControls;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputAction;->zzc:Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputControls;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputAction;->zza:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputAction;->zzb:I

    iget-object v2, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputAction;->zzc:Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputControls;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x3f

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "InputAction{actionLabel="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", uniqueId="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", inputControls="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method uniqueId()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputAction;->zzb:I

    return v0
.end method
