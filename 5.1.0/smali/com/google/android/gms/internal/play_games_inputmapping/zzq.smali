.class public abstract Lcom/google/android/gms/internal/play_games_inputmapping/zzq;
.super Lcom/google/android/gms/internal/play_games_inputmapping/zzac;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/play_games_inputmapping/zzao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "LOGGER:Lcom/google/android/gms/internal/play_games_inputmapping/zzp<",
        "TAPI;>;API:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzac<",
        "T",
        "LOGGER;",
        "TAPI;>;",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzao<",
        "TAPI;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/util/logging/Level;Z)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;-><init>(Ljava/util/logging/Level;Z)V

    return-void
.end method


# virtual methods
.method protected final zza()Lcom/google/android/gms/internal/play_games_inputmapping/zzdp;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdn;->zza()Lcom/google/android/gms/internal/play_games_inputmapping/zzdr;

    move-result-object v0

    return-object v0
.end method

.method protected final zzb(Lcom/google/android/gms/internal/play_games_inputmapping/zzag;)Z
    .locals 5
    .param p1    # Lcom/google/android/gms/internal/play_games_inputmapping/zzag;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzh()Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;->zza()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;->zzb(I)Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzar;->zzf()Ljava/lang/String;

    move-result-object v3

    const-string v4, "eye3tag"

    if-ne v3, v4, :cond_0

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzaa;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;->zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzaa;->zzg:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;->zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzaa;->zzg:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzat;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzat;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzl(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzac;->zzb(Lcom/google/android/gms/internal/play_games_inputmapping/zzag;)Z

    move-result p1

    return p1
.end method
