.class final Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputGroup;
.super Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputGroup;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputAction;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputGroup;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputGroup;->zza:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 2
    iput-object p2, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputGroup;->zzb:Ljava/util/List;

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null inputActions"

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null groupLabel"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputGroup;

    iget-object v1, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputGroup;->zza:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputGroup;->groupLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputGroup;->zzb:Ljava/util/List;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputGroup;->inputActions()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method groupLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputGroup;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputGroup;->zza:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputGroup;->zzb:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method inputActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputGroup;->zzb:Ljava/util/List;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputGroup;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputGroup;->zzb:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x26

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "InputGroup{groupLabel="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", inputActions="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method