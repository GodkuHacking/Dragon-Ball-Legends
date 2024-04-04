.class public interface abstract Lcom/google/android/libraries/play/hpe/IInputMappingService;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/play/hpe/IInputMappingService$Stub;,
        Lcom/google/android/libraries/play/hpe/IInputMappingService$Default;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "input_mapping_service"


# virtual methods
.method public abstract getInputMap(Landroid/os/IRemoteCallback;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerInputMappingProvider(Lcom/google/android/libraries/play/hpe/IInputMappingProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterInputMappingProvider(Lcom/google/android/libraries/play/hpe/IInputMappingProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
