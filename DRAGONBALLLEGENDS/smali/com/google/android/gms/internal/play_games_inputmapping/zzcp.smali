.class public final Lcom/google/android/gms/internal/play_games_inputmapping/zzcp;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"

# interfaces
.implements Lcom/google/android/gms/internal/play_games_inputmapping/zzci;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/util/logging/Level;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    sget-object v4, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcp;-><init>(Ljava/lang/String;ZZLjava/util/logging/Level;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZZLjava/util/logging/Level;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcp;->zza:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcp;->zzb:Ljava/util/logging/Level;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/play_games_inputmapping/zzcs;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcp;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcp;->zzb:Ljava/util/logging/Level;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcs;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/logging/Level;Lcom/google/android/gms/internal/play_games_inputmapping/zzcr;)V

    return-object v7
.end method

.method public final zzb(Z)Lcom/google/android/gms/internal/play_games_inputmapping/zzcp;
    .locals 6

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzcp;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcp;->zza:Ljava/lang/String;

    sget-object v4, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcp;-><init>(Ljava/lang/String;ZZLjava/util/logging/Level;Z)V

    return-object p1
.end method
