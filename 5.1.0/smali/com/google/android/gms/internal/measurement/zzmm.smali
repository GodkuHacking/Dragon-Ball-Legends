.class final Lcom/google/android/gms/internal/measurement/zzmm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzmt;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzmi;

.field private final zzb:Lcom/google/android/gms/internal/measurement/zznk;

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/measurement/zzko;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zznk;Lcom/google/android/gms/internal/measurement/zzko;Lcom/google/android/gms/internal/measurement/zzmi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zzb:Lcom/google/android/gms/internal/measurement/zznk;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/zzko;->zzc(Lcom/google/android/gms/internal/measurement/zzmi;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zzd:Lcom/google/android/gms/internal/measurement/zzko;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zza:Lcom/google/android/gms/internal/measurement/zzmi;

    return-void
.end method

.method static zzc(Lcom/google/android/gms/internal/measurement/zznk;Lcom/google/android/gms/internal/measurement/zzko;Lcom/google/android/gms/internal/measurement/zzmi;)Lcom/google/android/gms/internal/measurement/zzmm;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmm;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Lcom/google/android/gms/internal/measurement/zznk;Lcom/google/android/gms/internal/measurement/zzko;Lcom/google/android/gms/internal/measurement/zzmi;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zzb:Lcom/google/android/gms/internal/measurement/zznk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zznk;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zznk;->zzb(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zzc:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zzd:Lcom/google/android/gms/internal/measurement/zzko;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzko;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzks;

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zzb:Lcom/google/android/gms/internal/measurement/zznk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zznk;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zzc:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zzd:Lcom/google/android/gms/internal/measurement/zzko;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzko;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzks;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final zze()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zza:Lcom/google/android/gms/internal/measurement/zzmi;

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzlb;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzlb;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlb;->zzbD()Lcom/google/android/gms/internal/measurement/zzlb;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmi;->zzbJ()Lcom/google/android/gms/internal/measurement/zzmh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzmh;->zzaF()Lcom/google/android/gms/internal/measurement/zzmi;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zzb:Lcom/google/android/gms/internal/measurement/zznk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zznk;->zzg(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zzd:Lcom/google/android/gms/internal/measurement/zzko;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzko;->zzb(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zzb:Lcom/google/android/gms/internal/measurement/zznk;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzmv;->zzB(Lcom/google/android/gms/internal/measurement/zznk;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zzc:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zzd:Lcom/google/android/gms/internal/measurement/zzko;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzko;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzks;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzjn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzlb;

    iget-object p3, p2, Lcom/google/android/gms/internal/measurement/zzlb;->zzc:Lcom/google/android/gms/internal/measurement/zznl;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznl;->zzc()Lcom/google/android/gms/internal/measurement/zznl;

    move-result-object p4

    if-eq p3, p4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznl;->zzf()Lcom/google/android/gms/internal/measurement/zznl;

    move-result-object p3

    .line 2
    iput-object p3, p2, Lcom/google/android/gms/internal/measurement/zzlb;->zzc:Lcom/google/android/gms/internal/measurement/zznl;

    .line 3
    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzky;

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzoc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zzd:Lcom/google/android/gms/internal/measurement/zzko;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzko;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzks;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final zzj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zzb:Lcom/google/android/gms/internal/measurement/zznk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zznk;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zzb:Lcom/google/android/gms/internal/measurement/zznk;

    .line 2
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/measurement/zznk;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zzc:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zzd:Lcom/google/android/gms/internal/measurement/zzko;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzko;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzks;

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zzd:Lcom/google/android/gms/internal/measurement/zzko;

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzko;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzks;

    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public final zzk(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmm;->zzd:Lcom/google/android/gms/internal/measurement/zzko;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzko;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzks;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method
