.class final enum Lcom/google/android/gms/internal/games_v2/zzbi;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-games-v2@@17.0.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/games_v2/zzbi;

.field public static final enum zzb:Lcom/google/android/gms/internal/games_v2/zzbi;

.field public static final enum zzc:Lcom/google/android/gms/internal/games_v2/zzbi;

.field public static final enum zzd:Lcom/google/android/gms/internal/games_v2/zzbi;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/games_v2/zzbi;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzbi;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/games_v2/zzbi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzbi;->zza:Lcom/google/android/gms/internal/games_v2/zzbi;

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzbi;

    const-string v1, "AUTHENTICATING"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/games_v2/zzbi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzbi;->zzb:Lcom/google/android/gms/internal/games_v2/zzbi;

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzbi;

    const-string v1, "AUTHENTICATED"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/games_v2/zzbi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzbi;->zzc:Lcom/google/android/gms/internal/games_v2/zzbi;

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzbi;

    const-string v1, "AUTHENTICATION_FAILED"

    const/4 v5, 0x3

    .line 4
    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/games_v2/zzbi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzbi;->zzd:Lcom/google/android/gms/internal/games_v2/zzbi;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/android/gms/internal/games_v2/zzbi;

    sget-object v6, Lcom/google/android/gms/internal/games_v2/zzbi;->zza:Lcom/google/android/gms/internal/games_v2/zzbi;

    aput-object v6, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/games_v2/zzbi;->zzb:Lcom/google/android/gms/internal/games_v2/zzbi;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/games_v2/zzbi;->zzc:Lcom/google/android/gms/internal/games_v2/zzbi;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/google/android/gms/internal/games_v2/zzbi;->zze:[Lcom/google/android/gms/internal/games_v2/zzbi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/games_v2/zzbi;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzbi;->zze:[Lcom/google/android/gms/internal/games_v2/zzbi;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/games_v2/zzbi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/games_v2/zzbi;

    return-object v0
.end method
