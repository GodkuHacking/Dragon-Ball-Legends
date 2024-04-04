.class public final Lcom/google/android/gms/games/PlayGames;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.0.0"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAchievementsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/AchievementsClient;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbr;->zzb()V

    new-instance p0, Lcom/google/android/gms/internal/games_v2/zzce;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbr;->zza()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzar;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzce;-><init>(Lcom/google/android/gms/internal/games_v2/zzar;)V

    return-object p0
.end method

.method public static getEventsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/EventsClient;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbr;->zzb()V

    new-instance p0, Lcom/google/android/gms/internal/games_v2/zzcl;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbr;->zza()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzar;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzcl;-><init>(Lcom/google/android/gms/internal/games_v2/zzar;)V

    return-object p0
.end method

.method public static getGamesSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/games/GamesSignInClient;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbr;->zzb()V

    new-instance p0, Lcom/google/android/gms/internal/games_v2/zzco;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbr;->zza()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzax;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzav;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbr;->zza()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/games_v2/zzar;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzar;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/games_v2/zzco;-><init>(Lcom/google/android/gms/internal/games_v2/zzav;Lcom/google/android/gms/internal/games_v2/zzar;)V

    return-object p0
.end method

.method public static getLeaderboardsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/LeaderboardsClient;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbr;->zzb()V

    new-instance p0, Lcom/google/android/gms/internal/games_v2/zzdj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbr;->zza()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzar;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzdj;-><init>(Lcom/google/android/gms/internal/games_v2/zzar;)V

    return-object p0
.end method

.method public static getPlayerStatsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/PlayerStatsClient;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbr;->zzb()V

    new-instance p0, Lcom/google/android/gms/internal/games_v2/zzdm;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbr;->zza()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzar;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzdm;-><init>(Lcom/google/android/gms/internal/games_v2/zzar;)V

    return-object p0
.end method

.method public static getPlayersClient(Landroid/app/Activity;)Lcom/google/android/gms/games/PlayersClient;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbr;->zzb()V

    new-instance p0, Lcom/google/android/gms/internal/games_v2/zzef;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbr;->zza()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzar;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzef;-><init>(Lcom/google/android/gms/internal/games_v2/zzar;)V

    return-object p0
.end method

.method public static getSnapshotsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/SnapshotsClient;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbr;->zzb()V

    new-instance p0, Lcom/google/android/gms/internal/games_v2/zzey;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbr;->zza()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzar;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzey;-><init>(Lcom/google/android/gms/internal/games_v2/zzar;)V

    return-object p0
.end method
