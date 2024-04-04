.class public interface abstract Lcom/google/android/libraries/play/hpe/IInputMappingProvider;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/play/hpe/IInputMappingProvider$Stub;,
        Lcom/google/android/libraries/play/hpe/IInputMappingProvider$Default;
    }
.end annotation


# virtual methods
.method public abstract onProvideInputMap(Landroid/os/IRemoteCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
