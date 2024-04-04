.class final Lcom/google/android/libraries/play/hpe/InputMappingManager$ProviderProxy;
.super Lcom/google/android/libraries/play/hpe/IInputMappingProvider$Stub;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/play/hpe/InputMappingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderProxy"
.end annotation


# instance fields
.field private final mProvider:Lcom/google/android/libraries/play/hpe/InputMappingManager$MappingProvider;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/play/hpe/InputMappingManager$MappingProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/play/hpe/IInputMappingProvider$Stub;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/play/hpe/InputMappingManager$ProviderProxy;->mProvider:Lcom/google/android/libraries/play/hpe/InputMappingManager$MappingProvider;

    return-void
.end method


# virtual methods
.method public onProvideInputMap(Landroid/os/IRemoteCallback;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/libraries/play/hpe/InputMappingManager$ProviderProxy;->mProvider:Lcom/google/android/libraries/play/hpe/InputMappingManager$MappingProvider;

    .line 2
    invoke-interface {v1}, Lcom/google/android/libraries/play/hpe/InputMappingManager$MappingProvider;->getInputMap()[B

    move-result-object v1

    const-string v2, "com.google.android.libraries.play.hpe.EXTRA_INPUTMAP_BYTEARRAY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3
    :try_start_0
    invoke-interface {p1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "InputMappingManager"

    const-string v0, "onProvideInputMap invoked succesfully."

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onProvideInputMap failed to send data to input mapping service."

    .line 4
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
