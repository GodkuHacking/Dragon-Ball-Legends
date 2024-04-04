.class public abstract Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputGroup;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputAction;",
            ">;)",
            "Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputGroup;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputGroup;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method abstract groupLabel()Ljava/lang/String;
.end method

.method abstract inputActions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputAction;",
            ">;"
        }
    .end annotation
.end method
