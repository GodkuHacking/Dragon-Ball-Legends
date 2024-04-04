.class public abstract Lcom/google/android/gms/internal/play_games_inputmapping/zzdj;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# instance fields
.field private final zza:I

.field private final zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzax;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzax;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    .line 2
    iput p2, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdj;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdj;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzax;

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1a

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "invalid index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "format options cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected abstract zzb(Lcom/google/android/gms/internal/play_games_inputmapping/zzdk;Ljava/lang/Object;)V
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdj;->zza:I

    return v0
.end method

.method protected final zzd()Lcom/google/android/gms/internal/play_games_inputmapping/zzax;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdj;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzax;

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/play_games_inputmapping/zzdk;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzdj;->zza:I

    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget-object p2, p2, v0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdj;->zzb(Lcom/google/android/gms/internal/play_games_inputmapping/zzdk;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdk;->zzg()V

    return-void

    .line 4
    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdk;->zzf()V

    return-void
.end method
