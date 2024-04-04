.class public final enum Lcom/google/android/gms/internal/play_games_inputmapping/zzat;
.super Ljava/lang/Enum;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzat;

.field public static final enum zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzat;

.field public static final enum zzc:Lcom/google/android/gms/internal/play_games_inputmapping/zzat;

.field public static final enum zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzat;

.field public static final enum zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzat;

.field private static final synthetic zzf:[Lcom/google/android/gms/internal/play_games_inputmapping/zzat;


# instance fields
.field private final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzat;

    const-string v1, "SMALL"

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzat;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzat;

    new-instance v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzat;

    const-string v3, "MEDIUM"

    const/4 v4, 0x1

    const/16 v5, 0x14

    .line 2
    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/gms/internal/play_games_inputmapping/zzat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzat;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzat;

    new-instance v3, Lcom/google/android/gms/internal/play_games_inputmapping/zzat;

    const-string v5, "LARGE"

    const/4 v6, 0x2

    const/16 v7, 0x32

    .line 3
    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/gms/internal/play_games_inputmapping/zzat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/play_games_inputmapping/zzat;->zzc:Lcom/google/android/gms/internal/play_games_inputmapping/zzat;

    new-instance v5, Lcom/google/android/gms/internal/play_games_inputmapping/zzat;

    const-string v7, "FULL"

    const/4 v8, 0x3

    const/4 v9, -0x1

    .line 4
    invoke-direct {v5, v7, v8, v9}, Lcom/google/android/gms/internal/play_games_inputmapping/zzat;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/play_games_inputmapping/zzat;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzat;

    new-instance v7, Lcom/google/android/gms/internal/play_games_inputmapping/zzat;

    const-string v9, "NONE"

    const/4 v10, 0x4

    .line 5
    invoke-direct {v7, v9, v10, v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzat;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/play_games_inputmapping/zzat;->zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzat;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/android/gms/internal/play_games_inputmapping/zzat;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/google/android/gms/internal/play_games_inputmapping/zzat;->zzf:[Lcom/google/android/gms/internal/play_games_inputmapping/zzat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzat;->zzg:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/play_games_inputmapping/zzat;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzat;->zzf:[Lcom/google/android/gms/internal/play_games_inputmapping/zzat;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/play_games_inputmapping/zzat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/play_games_inputmapping/zzat;

    return-object v0
.end method


# virtual methods
.method final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzat;->zzg:I

    return v0
.end method
