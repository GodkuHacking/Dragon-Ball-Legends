.class public final Lcom/google/android/gms/games/internal/zzj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.0.0"


# instance fields
.field private zza:Z

.field private zzb:Z

.field private zzc:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzj;->zza:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzj;->zzb:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzj;->zzc:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/internal/zzi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/games/internal/zzj;->zza:Z

    iput-boolean p1, p0, Lcom/google/android/gms/games/internal/zzj;->zzb:Z

    iput-boolean p1, p0, Lcom/google/android/gms/games/internal/zzj;->zzc:Z

    return-void
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/games/internal/zzj;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/games/internal/zzj;->zzc:Z

    return p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/games/internal/zzj;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/games/internal/zzj;->zza:Z

    return p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/games/internal/zzj;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/games/internal/zzj;->zzb:Z

    return p0
.end method


# virtual methods
.method public final zza(Z)Lcom/google/android/gms/games/internal/zzj;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/games/internal/zzj;->zzc:Z

    return-object p0
.end method

.method public final zzb(Z)Lcom/google/android/gms/games/internal/zzj;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/games/internal/zzj;->zza:Z

    return-object p0
.end method

.method public final zzc(Z)Lcom/google/android/gms/games/internal/zzj;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/games/internal/zzj;->zzb:Z

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/games/internal/zzl;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/internal/zzl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/games/internal/zzl;-><init>(Lcom/google/android/gms/games/internal/zzj;Lcom/google/android/gms/games/internal/zzk;)V

    return-object v0
.end method
