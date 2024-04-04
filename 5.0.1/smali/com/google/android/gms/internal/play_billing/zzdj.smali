.class final Lcom/google/android/gms/internal/play_billing/zzdj;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@5.2.1"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzdp;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/play_billing/zzdf;

.field private final zzb:Lcom/google/android/gms/internal/play_billing/zzeg;

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/play_billing/zzbo;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/play_billing/zzeg;Lcom/google/android/gms/internal/play_billing/zzbo;Lcom/google/android/gms/internal/play_billing/zzdf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zzb:Lcom/google/android/gms/internal/play_billing/zzeg;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/zzbo;->zzc(Lcom/google/android/gms/internal/play_billing/zzdf;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zzd:Lcom/google/android/gms/internal/play_billing/zzbo;

    iput-object p3, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:Lcom/google/android/gms/internal/play_billing/zzdf;

    return-void
.end method

.method static zzc(Lcom/google/android/gms/internal/play_billing/zzeg;Lcom/google/android/gms/internal/play_billing/zzbo;Lcom/google/android/gms/internal/play_billing/zzdf;)Lcom/google/android/gms/internal/play_billing/zzdj;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzdj;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzdj;-><init>(Lcom/google/android/gms/internal/play_billing/zzeg;Lcom/google/android/gms/internal/play_billing/zzbo;Lcom/google/android/gms/internal/play_billing/zzdf;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zzb:Lcom/google/android/gms/internal/play_billing/zzeg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzeg;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzeg;->zzb(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zzc:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zzd:Lcom/google/android/gms/internal/play_billing/zzbo;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbs;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zzb:Lcom/google/android/gms/internal/play_billing/zzeg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzeg;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zzc:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zzd:Lcom/google/android/gms/internal/play_billing/zzbo;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbs;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final zze()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zza:Lcom/google/android/gms/internal/play_billing/zzdf;

    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/zzcb;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzcb;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzcb;->zzh()Lcom/google/android/gms/internal/play_billing/zzcb;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzdf;->zzj()Lcom/google/android/gms/internal/play_billing/zzde;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzde;->zze()Lcom/google/android/gms/internal/play_billing/zzdf;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zzb:Lcom/google/android/gms/internal/play_billing/zzeg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzeg;->zzg(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zzd:Lcom/google/android/gms/internal/play_billing/zzbo;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzbo;->zzb(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zzb:Lcom/google/android/gms/internal/play_billing/zzeg;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzdr;->zzC(Lcom/google/android/gms/internal/play_billing/zzeg;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zzc:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zzd:Lcom/google/android/gms/internal/play_billing/zzbo;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbs;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/play_billing/zzan;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzcb;

    iget-object p3, p2, Lcom/google/android/gms/internal/play_billing/zzcb;->zzc:Lcom/google/android/gms/internal/play_billing/zzeh;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzeh;->zzc()Lcom/google/android/gms/internal/play_billing/zzeh;

    move-result-object p4

    if-eq p3, p4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzeh;->zzf()Lcom/google/android/gms/internal/play_billing/zzeh;

    move-result-object p3

    .line 2
    iput-object p3, p2, Lcom/google/android/gms/internal/play_billing/zzcb;->zzc:Lcom/google/android/gms/internal/play_billing/zzeh;

    .line 3
    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzby;

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zzd:Lcom/google/android/gms/internal/play_billing/zzbo;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbs;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final zzj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zzb:Lcom/google/android/gms/internal/play_billing/zzeg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzeg;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zzb:Lcom/google/android/gms/internal/play_billing/zzeg;

    .line 2
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/play_billing/zzeg;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zzc:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zzd:Lcom/google/android/gms/internal/play_billing/zzbo;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbs;

    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zzd:Lcom/google/android/gms/internal/play_billing/zzbo;

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbs;

    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public final zzk(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdj;->zzd:Lcom/google/android/gms/internal/play_billing/zzbo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzbo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzbs;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method
