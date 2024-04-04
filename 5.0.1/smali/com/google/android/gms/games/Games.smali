.class public final Lcom/google/android/gms/games/Games;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/Games$GetServerAuthCodeResult;
    }
.end annotation


# static fields
.field static final zza:Lcom/google/android/gms/common/api/Api$ClientKey;

.field public static final zzb:Lcom/google/android/gms/common/api/Scope;

.field public static final zzc:Lcom/google/android/gms/common/api/Scope;

.field public static final zzd:Lcom/google/android/gms/common/api/Scope;

.field public static final zze:Lcom/google/android/gms/common/api/Api;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final zzf:Lcom/google/android/gms/common/api/Scope;

.field public static final zzg:Lcom/google/android/gms/common/api/Api;

.field public static final zzh:Lcom/google/android/gms/games/GamesMetadata;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final zzi:Lcom/google/android/gms/games/achievement/Achievements;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final zzj:Lcom/google/android/gms/games/event/Events;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final zzk:Lcom/google/android/gms/games/leaderboard/Leaderboards;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final zzl:Lcom/google/android/gms/games/Players;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final zzm:Lcom/google/android/gms/games/snapshot/Snapshots;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final zzn:Lcom/google/android/gms/games/stats/Stats;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final zzo:Lcom/google/android/gms/games/video/Videos;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzp:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

.field private static final zzq:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->zza:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 2
    new-instance v0, Lcom/google/android/gms/games/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/games/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->zzp:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    new-instance v0, Lcom/google/android/gms/games/zzh;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/games/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->zzq:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 4
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/games"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/games/Games;->zzb:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/games_lite"

    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/games/Games;->zzc:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/drive.appdata"

    .line 6
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/games/Games;->zzd:Lcom/google/android/gms/common/api/Scope;

    .line 7
    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/games/Games;->zzp:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    sget-object v2, Lcom/google/android/gms/games/Games;->zza:Lcom/google/android/gms/common/api/Api$ClientKey;

    const-string v3, "Games.API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v0, Lcom/google/android/gms/games/Games;->zze:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/games.firstparty"

    .line 8
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/games/Games;->zzf:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/games/Games;->zzq:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    sget-object v2, Lcom/google/android/gms/games/Games;->zza:Lcom/google/android/gms/common/api/Api$ClientKey;

    const-string v3, "Games.API_1P"

    .line 9
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v0, Lcom/google/android/gms/games/Games;->zzg:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games_v2/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->zzh:Lcom/google/android/gms/games/GamesMetadata;

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games_v2/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->zzi:Lcom/google/android/gms/games/achievement/Achievements;

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games_v2/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->zzj:Lcom/google/android/gms/games/event/Events;

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games_v2/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->zzk:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games_v2/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->zzl:Lcom/google/android/gms/games/Players;

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games_v2/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->zzm:Lcom/google/android/gms/games/snapshot/Snapshots;

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games_v2/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->zzn:Lcom/google/android/gms/games/stats/Stats;

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/games_v2/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->zzo:Lcom/google/android/gms/games/video/Videos;

    return-void
.end method
