.class public final Lcom/google/android/gms/internal/measurement/zzgj;
.super Lcom/google/android/gms/internal/measurement/zzkx;
.source "com.google.android.gms:play-services-measurement@@21.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzmj;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgk;->zze()Lcom/google/android/gms/internal/measurement/zzgk;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkx;-><init>(Lcom/google/android/gms/internal/measurement/zzlb;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzfk;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgk;->zze()Lcom/google/android/gms/internal/measurement/zzgk;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkx;-><init>(Lcom/google/android/gms/internal/measurement/zzlb;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgj;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaH()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zza:Lcom/google/android/gms/internal/measurement/zzlb;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgk;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzgk;->zzh(Lcom/google/android/gms/internal/measurement/zzgk;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/measurement/zzgj;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaH()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgj;->zza:Lcom/google/android/gms/internal/measurement/zzlb;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgk;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzgk;->zzg(Lcom/google/android/gms/internal/measurement/zzgk;I)V

    return-object p0
.end method
