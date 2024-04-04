.class public final Lcom/google/android/libraries/play/games/inputmapping/Input;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/play/games/inputmapping/Input"

    invoke-static {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzv;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/play_games_inputmapping/zzv;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/play/games/inputmapping/Input;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzv;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGranuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "inputmapping"

    return-object v0
.end method

.method public static getInputMappingClient(Landroid/content/Context;)Lcom/google/android/libraries/play/games/inputmapping/InputMappingClient;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "com.google.android.play.feature.HPE_EXPERIENCE"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.google.android.play.feature.HPE_INTERNAL_EXPERIENCE"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/libraries/play/games/inputmapping/zza;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/libraries/play/games/inputmapping/zza;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_1
    sget-object v0, Lcom/google/android/libraries/play/games/inputmapping/Input;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzp;->zzb()Lcom/google/android/gms/internal/play_games_inputmapping/zzao;

    move-result-object v0

    const/16 v1, 0x1f

    const-string v2, "com/google/android/libraries/play/games/inputmapping/Input"

    const-string v3, "getInputMappingClient"

    const-string v4, "Input.java"

    .line 3
    invoke-interface {v0, v2, v3, v1, v4}, Lcom/google/android/gms/internal/play_games_inputmapping/zzs;->zzg(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/play_games_inputmapping/zzao;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzs;

    const-string v1, "Device support for input sdk not detected, input sdk methods calls will be ignored."

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzs;->zzm(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/libraries/play/games/inputmapping/zzb;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/play/games/inputmapping/zzb;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
