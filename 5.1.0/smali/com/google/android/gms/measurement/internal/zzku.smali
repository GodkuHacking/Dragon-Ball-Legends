.class abstract Lcom/google/android/gms/measurement/internal/zzku;
.super Lcom/google/android/gms/measurement/internal/zzkt;
.source "com.google.android.gms:play-services-measurement@@21.3.0"


# instance fields
.field private zza:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzlh;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkt;-><init>(Lcom/google/android/gms/measurement/internal/zzlh;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzf:Lcom/google/android/gms/measurement/internal/zzlh;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzlh;->zzM()V

    return-void
.end method


# virtual methods
.method protected final zzW()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzku;->zzY()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzX()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzku;->zza:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzku;->zzb()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzf:Lcom/google/android/gms/measurement/internal/zzlh;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlh;->zzH()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzku;->zza:Z

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzY()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzku;->zza:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract zzb()Z
.end method
