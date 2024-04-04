.class public final Lcom/google/android/gms/internal/measurement/zzfo;
.super Lcom/google/android/gms/internal/measurement/zzkx;
.source "com.google.android.gms:play-services-measurement@@21.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzmj;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfp;->zzc()Lcom/google/android/gms/internal/measurement/zzfp;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzkx;-><init>(Lcom/google/android/gms/internal/measurement/zzlb;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzfk;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfp;->zzc()Lcom/google/android/gms/internal/measurement/zzfp;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzkx;-><init>(Lcom/google/android/gms/internal/measurement/zzlb;)V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzfo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaH()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zza:Lcom/google/android/gms/internal/measurement/zzlb;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfp;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfp;->zzf(Lcom/google/android/gms/internal/measurement/zzfp;I)V

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/measurement/zzgh;)Lcom/google/android/gms/internal/measurement/zzfo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaH()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zza:Lcom/google/android/gms/internal/measurement/zzlb;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzgi;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfp;->zzg(Lcom/google/android/gms/internal/measurement/zzfp;Lcom/google/android/gms/internal/measurement/zzgi;)V

    return-object p0
.end method

.method public final zzc(Z)Lcom/google/android/gms/internal/measurement/zzfo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaH()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zza:Lcom/google/android/gms/internal/measurement/zzlb;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfp;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfp;->zzi(Lcom/google/android/gms/internal/measurement/zzfp;Z)V

    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/measurement/zzgi;)Lcom/google/android/gms/internal/measurement/zzfo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkx;->zzaH()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zza:Lcom/google/android/gms/internal/measurement/zzlb;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfp;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfp;->zzh(Lcom/google/android/gms/internal/measurement/zzfp;Lcom/google/android/gms/internal/measurement/zzgi;)V

    return-object p0
.end method
