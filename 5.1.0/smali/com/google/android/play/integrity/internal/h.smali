.class public abstract Lcom/google/android/play/integrity/internal/h;
.super Lcom/google/android/play/integrity/internal/b;
.source "com.google.android.play:integrity@@1.1.0-beta01"

# interfaces
.implements Lcom/google/android/play/integrity/internal/i;


# direct methods
.method public static b(Landroid/os/IBinder;)Lcom/google/android/play/integrity/internal/i;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.play.core.integrity.protocol.IExpressIntegrityService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/play/integrity/internal/i;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/play/integrity/internal/i;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/play/integrity/internal/g;

    invoke-direct {v0, p0}, Lcom/google/android/play/integrity/internal/g;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
