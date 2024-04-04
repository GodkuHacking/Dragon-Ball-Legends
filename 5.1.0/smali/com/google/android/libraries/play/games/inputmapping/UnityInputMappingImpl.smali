.class public Lcom/google/android/libraries/play/games/inputmapping/UnityInputMappingImpl;
.super Lcom/google/android/libraries/play/games/inputmapping/InputMappingProvider;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# instance fields
.field private final zza:Lcom/google/android/libraries/play/games/inputmapping/UnityInputMappingProvider;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/play/games/inputmapping/UnityInputMappingProvider;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/play/games/inputmapping/InputMappingProvider;-><init>()V

    const-string v0, "UnityInputMappingProvider cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/play/games/inputmapping/UnityInputMappingImpl;->zza:Lcom/google/android/libraries/play/games/inputmapping/UnityInputMappingProvider;

    return-void
.end method


# virtual methods
.method public final onProvideInputMap()Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputMap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/play/games/inputmapping/UnityInputMappingImpl;->zza:Lcom/google/android/libraries/play/games/inputmapping/UnityInputMappingProvider;

    invoke-interface {v0}, Lcom/google/android/libraries/play/games/inputmapping/UnityInputMappingProvider;->onProvideInputMap()Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputMap;

    move-result-object v0

    return-object v0
.end method
