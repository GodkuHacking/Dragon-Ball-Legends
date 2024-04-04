.class public abstract Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputAction;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;ILcom/google/android/libraries/play/games/inputmapping/datamodel/InputControls;)Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputAction;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputAction;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputAction;-><init>(Ljava/lang/String;ILcom/google/android/libraries/play/games/inputmapping/datamodel/InputControls;)V

    return-object v0
.end method


# virtual methods
.method abstract actionLabel()Ljava/lang/String;
.end method

.method abstract inputControls()Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputControls;
.end method

.method abstract uniqueId()I
.end method
