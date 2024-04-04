.class final Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputMap;
.super Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputMap;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# instance fields
.field private final zza:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/libraries/play/games/inputmapping/datamodel/MouseSettings;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/google/android/libraries/play/games/inputmapping/datamodel/MouseSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputGroup;",
            ">;",
            "Lcom/google/android/libraries/play/games/inputmapping/datamodel/MouseSettings;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputMap;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputMap;->zza:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 2
    iput-object p2, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputMap;->zzb:Lcom/google/android/libraries/play/games/inputmapping/datamodel/MouseSettings;

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null mouseSettings"

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null inputGroups"

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
    instance-of v1, p1, Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputMap;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputMap;

    iget-object v1, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputMap;->zza:Ljava/util/List;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputMap;->inputGroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputMap;->zzb:Lcom/google/android/libraries/play/games/inputmapping/datamodel/MouseSettings;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputMap;->mouseSettings()Lcom/google/android/libraries/play/games/inputmapping/datamodel/MouseSettings;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputMap;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputMap;->zzb:Lcom/google/android/libraries/play/games/inputmapping/datamodel/MouseSettings;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method inputGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputGroup;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputMap;->zza:Ljava/util/List;

    return-object v0
.end method

.method mouseSettings()Lcom/google/android/libraries/play/games/inputmapping/datamodel/MouseSettings;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputMap;->zzb:Lcom/google/android/libraries/play/games/inputmapping/datamodel/MouseSettings;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputMap;->zza:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputMap;->zzb:Lcom/google/android/libraries/play/games/inputmapping/datamodel/MouseSettings;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x26

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "InputMap{inputGroups="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mouseSettings="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
