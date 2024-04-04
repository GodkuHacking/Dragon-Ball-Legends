.class public abstract Lcom/google/android/libraries/play/hpe/IInputMappingProvider$Stub;
.super Landroid/os/Binder;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"

# interfaces
.implements Lcom/google/android/libraries/play/hpe/IInputMappingProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/play/hpe/IInputMappingProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/play/hpe/IInputMappingProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.libraries.play.hpe.IInputMappingProvider"

.field static final TRANSACTION_onProvideInputMap:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.libraries.play.hpe.IInputMappingProvider"

    .line 2
    invoke-virtual {p0, p0, v0}, Lcom/google/android/libraries/play/hpe/IInputMappingProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/libraries/play/hpe/IInputMappingProvider;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.libraries.play.hpe.IInputMappingProvider"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/google/android/libraries/play/hpe/IInputMappingProvider;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lcom/google/android/libraries/play/hpe/IInputMappingProvider;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/libraries/play/hpe/IInputMappingProvider$Stub$Proxy;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/libraries/play/hpe/IInputMappingProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/google/android/libraries/play/hpe/IInputMappingProvider;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/play/hpe/IInputMappingProvider$Stub$Proxy;->sDefaultImpl:Lcom/google/android/libraries/play/hpe/IInputMappingProvider;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/google/android/libraries/play/hpe/IInputMappingProvider;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/libraries/play/hpe/IInputMappingProvider$Stub$Proxy;->sDefaultImpl:Lcom/google/android/libraries/play/hpe/IInputMappingProvider;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/google/android/libraries/play/hpe/IInputMappingProvider$Stub$Proxy;->sDefaultImpl:Lcom/google/android/libraries/play/hpe/IInputMappingProvider;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.google.android.libraries.play.hpe.IInputMappingProvider"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 2
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/play/hpe/IInputMappingProvider$Stub;->onProvideInputMap(Landroid/os/IRemoteCallback;)V

    return v0
.end method
