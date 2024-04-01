.class public final Lcom/google/android/gms/internal/measurement/zzez;
.super Lcom/google/android/gms/internal/measurement/zzjt;
.source "com.google.android.gms:play-services-measurement@@20.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzld;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzjt<",
        "Lcom/google/android/gms/internal/measurement/zzfa;",
        "Lcom/google/android/gms/internal/measurement/zzez;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzld;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfa;->zzb()Lcom/google/android/gms/internal/measurement/zzfa;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjt;-><init>(Lcom/google/android/gms/internal/measurement/zzjx;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzey;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfa;->zzb()Lcom/google/android/gms/internal/measurement/zzfa;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjt;-><init>(Lcom/google/android/gms/internal/measurement/zzjx;)V

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzez;->zza:Lcom/google/android/gms/internal/measurement/zzjx;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfa;->zza()I

    move-result v0

    return v0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzez;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt;->zzaE()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjt;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzez;->zza:Lcom/google/android/gms/internal/measurement/zzjx;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfa;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfa;->zzd(Lcom/google/android/gms/internal/measurement/zzfa;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzez;->zza:Lcom/google/android/gms/internal/measurement/zzjx;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfa;->zzc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzez;->zza:Lcom/google/android/gms/internal/measurement/zzjx;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfa;->zze()Z

    move-result v0

    return v0
.end method

.method public final zze()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzez;->zza:Lcom/google/android/gms/internal/measurement/zzjx;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfa;->zzf()Z

    move-result v0

    return v0
.end method

.method public final zzf()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzez;->zza:Lcom/google/android/gms/internal/measurement/zzjx;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfa;->zzg()Z

    move-result v0

    return v0
.end method

.method public final zzg()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzez;->zza:Lcom/google/android/gms/internal/measurement/zzjx;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfa;->zzh()Z

    move-result v0

    return v0
.end method

.method public final zzh()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzez;->zza:Lcom/google/android/gms/internal/measurement/zzjx;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfa;->zzi()Z

    move-result v0

    return v0
.end method
