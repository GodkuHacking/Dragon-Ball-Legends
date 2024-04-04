.class final Lcom/google/android/libraries/play/games/inputmapping/zza;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"

# interfaces
.implements Lcom/google/android/libraries/play/games/inputmapping/InputMappingClient;


# instance fields
.field private final zza:Lcom/google/android/libraries/play/hpe/InputMappingManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/libraries/play/hpe/InputMappingManager;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/play/hpe/InputMappingManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/libraries/play/games/inputmapping/zza;->zza:Lcom/google/android/libraries/play/hpe/InputMappingManager;

    return-void
.end method


# virtual methods
.method public final registerInputMappingProvider(Lcom/google/android/libraries/play/games/inputmapping/InputMappingProvider;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/play/games/inputmapping/zza;->zza:Lcom/google/android/libraries/play/hpe/InputMappingManager;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/play/hpe/InputMappingManager;->register(Lcom/google/android/libraries/play/hpe/InputMappingManager$MappingProvider;)V

    return-void
.end method

.method public final unregisterInputMappingProvider(Lcom/google/android/libraries/play/games/inputmapping/InputMappingProvider;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/play/games/inputmapping/zza;->zza:Lcom/google/android/libraries/play/hpe/InputMappingManager;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/play/hpe/InputMappingManager;->unregister(Lcom/google/android/libraries/play/hpe/InputMappingManager$MappingProvider;)V

    return-void
.end method
