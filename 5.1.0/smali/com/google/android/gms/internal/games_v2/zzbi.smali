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
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzbi;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/games_v2/zzbi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzbi;->zza:Lcom/google/android/gms/internal/games_v2/zzbi;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzbi;

    const-string v3, "AUTHENTICATING"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/games_v2/zzbi;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/games_v2/zzbi;->zzb:Lcom/google/android/gms/internal/games_v2/zzbi;

    new-instance v3, Lcom/google/android/gms/internal/games_v2/zzbi;

    const-string v5, "AUTHENTICATED"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/games_v2/zzbi;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/games_v2/zzbi;->zzc:Lcom/google/android/gms/internal/games_v2/zzbi;

    new-instance v5, Lcom/google/android/gms/internal/games_v2/zzbi;

    const-string v7, "AUTHENTICATION_FAILED"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8}, Lcom/google/android/gms/internal/games_v2/zzbi;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/gms/internal/games_v2/zzbi;->zzd:Lcom/google/android/gms/internal/games_v2/zzbi;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/gms/internal/games_v2/zzbi;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/android/gms/internal/games_v2/zzbi;->zze:[Lcom/google/android/gms/internal/games_v2/zzbi;

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
