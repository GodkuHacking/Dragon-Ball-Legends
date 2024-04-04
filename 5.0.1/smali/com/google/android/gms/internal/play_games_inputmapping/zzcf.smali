.class public final Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzdp;

.field private final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzdp;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "parser"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdt;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzdp;

    const-string p1, "message"

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdt;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzdp;

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzdp;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;->zzb:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;->zzb:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzdp;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;->zzb:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/play_games_inputmapping/zzdp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzdp;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;->zzb:Ljava/lang/String;

    return-object v0
.end method
