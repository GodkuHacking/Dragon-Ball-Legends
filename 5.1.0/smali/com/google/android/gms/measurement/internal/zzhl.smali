.class public final synthetic Lcom/google/android/gms/measurement/internal/zzhl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.3.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzik;

.field public final synthetic zzb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzik;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zza:Lcom/google/android/gms/measurement/internal/zzik;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zza:Lcom/google/android/gms/measurement/internal/zzik;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhl;->zzb:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zze;->zzt:Lcom/google/android/gms/measurement/internal/zzgd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zzh()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v2

    .line 2
    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzek;->zzp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zze;->zzt:Lcom/google/android/gms/measurement/internal/zzgd;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zzh()Lcom/google/android/gms/measurement/internal/zzek;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzek;->zzo()V

    :cond_0
    return-void
.end method
