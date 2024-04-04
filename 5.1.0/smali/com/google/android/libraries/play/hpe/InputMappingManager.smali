.class public Lcom/google/android/libraries/play/hpe/InputMappingManager;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/play/hpe/InputMappingManager$ProviderProxy;,
        Lcom/google/android/libraries/play/hpe/InputMappingManager$MappingProvider;
    }
.end annotation


# static fields
.field private static final EXTRA_INPUTMAP:Ljava/lang/String; = "com.google.android.libraries.play.hpe.EXTRA_INPUTMAP_BYTEARRAY"

.field private static final TAG:Ljava/lang/String; = "InputMappingManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/google/android/libraries/play/hpe/IInputMappingService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/play/hpe/InputMappingManager;->mContext:Landroid/content/Context;

    const-string p1, "input_mapping_service"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/android/libraries/play/hpe/IInputMappingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/libraries/play/hpe/IInputMappingService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/play/hpe/InputMappingManager;->mService:Lcom/google/android/libraries/play/hpe/IInputMappingService;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to find IInputMappingService by name:input_mapping_service"

    .line 3
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public register(Lcom/google/android/libraries/play/hpe/InputMappingManager$MappingProvider;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/play/hpe/InputMappingManager;->mService:Lcom/google/android/libraries/play/hpe/IInputMappingService;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "InputMappingManager"

    const-string v1, "before registering the provider."

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v0, Lcom/google/android/libraries/play/hpe/InputMappingManager$ProviderProxy;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/libraries/play/hpe/InputMappingManager$ProviderProxy;-><init>(Lcom/google/android/libraries/play/hpe/InputMappingManager$MappingProvider;)V

    iget-object p1, p0, Lcom/google/android/libraries/play/hpe/InputMappingManager;->mService:Lcom/google/android/libraries/play/hpe/IInputMappingService;

    .line 4
    invoke-interface {p1, v0}, Lcom/google/android/libraries/play/hpe/IInputMappingService;->registerInputMappingProvider(Lcom/google/android/libraries/play/hpe/IInputMappingProvider;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Register mapping provider failed."

    .line 5
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Register mapping provider failed: service not available."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregister(Lcom/google/android/libraries/play/hpe/InputMappingManager$MappingProvider;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/play/hpe/InputMappingManager;->mService:Lcom/google/android/libraries/play/hpe/IInputMappingService;

    const-string v1, "InputMappingManager"

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/google/android/libraries/play/hpe/InputMappingManager$ProviderProxy;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/play/hpe/InputMappingManager$ProviderProxy;-><init>(Lcom/google/android/libraries/play/hpe/InputMappingManager$MappingProvider;)V

    iget-object p1, p0, Lcom/google/android/libraries/play/hpe/InputMappingManager;->mService:Lcom/google/android/libraries/play/hpe/IInputMappingService;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/libraries/play/hpe/IInputMappingService;->unregisterInputMappingProvider(Lcom/google/android/libraries/play/hpe/IInputMappingProvider;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "InputMapping service not available."

    .line 4
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
