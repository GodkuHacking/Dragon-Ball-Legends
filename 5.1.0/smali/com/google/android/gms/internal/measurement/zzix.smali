.class public final Lcom/google/android/gms/internal/measurement/zzix;
.super Lcom/google/android/gms/internal/measurement/zziu;
.source "com.google.android.gms:play-services-measurement-base@@21.3.0"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zziu;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final varargs zza([Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzix;
    .locals 6

    const/16 v0, 0xf

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzjd;->zzb([Ljava/lang/Object;I)[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzb:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zziu;->zza:[Ljava/lang/Object;

    .line 2
    array-length v3, v2

    const/4 v4, 0x0

    if-ge v3, v1, :cond_2

    shr-int/lit8 v5, v3, 0x1

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    add-int v3, v1, v1

    :cond_0
    if-gez v3, :cond_1

    const v3, 0x7fffffff

    .line 4
    :cond_1
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zziu;->zza:[Ljava/lang/Object;

    iput-boolean v4, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzc:Z

    goto :goto_0

    .line 6
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzc:Z

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zziu;->zza:[Ljava/lang/Object;

    iput-boolean v4, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzc:Z

    .line 4
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zziu;->zza:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzb:I

    .line 6
    invoke-static {p1, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzb:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzb:I

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzja;
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzix;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzix;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzix;->zzb:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzja;->zzg([Ljava/lang/Object;I)Lcom/google/android/gms/internal/measurement/zzja;

    move-result-object v0

    return-object v0
.end method
