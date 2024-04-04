.class public final Lcom/google/android/gms/internal/play_games_inputmapping/zzcj;
.super Lcom/google/android/gms/internal/play_games_inputmapping/zzcb;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# static fields
.field private static final zza:Z

.field private static final zzb:Z

.field private static final zzc:Lcom/google/android/gms/internal/play_games_inputmapping/zzca;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcj$zza;->zza()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcj;->zza:Z

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "robolectric"

    .line 2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    sput-boolean v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzcj;->zzb:Z

    const-class v0, Landroid/util/Log;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcj$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcj$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcj;->zzc:Lcom/google/android/gms/internal/play_games_inputmapping/zzca;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcb;-><init>()V

    return-void
.end method

.method static zzp()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass2()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static zzq()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass2()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static bridge synthetic zzr()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcj;->zzb:Z

    return v0
.end method

.method static bridge synthetic zzs()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcj;->zza:Z

    return v0
.end method

.method static zzt()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "dalvik.system.VMStack"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getStackClass2"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcj;->zzq()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/play_games_inputmapping/zzcj$zza;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v0
.end method


# virtual methods
.method protected zze(Ljava/lang/String;)Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcn;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;

    move-result-object p1

    return-object p1
.end method

.method protected zzh()Lcom/google/android/gms/internal/play_games_inputmapping/zzca;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcj;->zzc:Lcom/google/android/gms/internal/play_games_inputmapping/zzca;

    return-object v0
.end method

.method protected zzj()Lcom/google/android/gms/internal/play_games_inputmapping/zzct;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzco;->zzb()Lcom/google/android/gms/internal/play_games_inputmapping/zzco;

    move-result-object v0

    return-object v0
.end method

.method protected zzm()Ljava/lang/String;
    .locals 1

    const-string v0, "platform: Android"

    return-object v0
.end method
