.class final Lcom/google/android/gms/internal/measurement/zzgz;
.super Landroid/database/ContentObserver;
.source "com.google.android.gms:play-services-measurement-impl@@20.0.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/measurement/zzha;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzha;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgz;->zza:Lcom/google/android/gms/internal/measurement/zzha;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgz;->zza:Lcom/google/android/gms/internal/measurement/zzha;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzha;->zzf()V

    return-void
.end method
