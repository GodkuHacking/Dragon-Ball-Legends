.class public final synthetic Lcom/google/android/gms/measurement/internal/zzff;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@20.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzfm;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzfm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzff;->zza:Lcom/google/android/gms/measurement/internal/zzfm;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzff;->zza:Lcom/google/android/gms/measurement/internal/zzfm;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzt;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfm;->zzd:Lcom/google/android/gms/internal/measurement/zzr;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzt;-><init>(Lcom/google/android/gms/internal/measurement/zzr;)V

    return-object v1
.end method
