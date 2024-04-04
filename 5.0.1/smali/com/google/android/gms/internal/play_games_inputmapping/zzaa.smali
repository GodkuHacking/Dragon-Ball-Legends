.class public final Lcom/google/android/gms/internal/play_games_inputmapping/zzaa;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzar<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzar<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzc:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzar<",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzal;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzar<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzar<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzf:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzar<",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzdg;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzg:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzar<",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "cause"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzar;->zzd(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzaa;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    const-class v0, Ljava/lang/Integer;

    const-string v1, "ratelimit_count"

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzar;->zzd(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzaa;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    const-class v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzal;

    const-string v1, "ratelimit_period"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzar;->zzd(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzaa;->zzc:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzy;

    const-class v1, Ljava/lang/Object;

    const-string v2, "group_by"

    const/4 v3, 0x1

    .line 4
    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzy;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzaa;->zzd:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    const-class v0, Ljava/lang/Boolean;

    const-string v1, "forced"

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzar;->zzd(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzaa;->zze:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzz;

    const-class v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzdg;

    const-string v2, "tags"

    const/4 v3, 0x0

    .line 6
    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzz;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzaa;->zzf:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    const-class v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzat;

    const-string v1, "stack_size"

    .line 7
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzar;->zzd(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzaa;->zzg:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    return-void
.end method
