.class final Lcom/google/android/libraries/play/games/inputmapping/zzb;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"

# interfaces
.implements Lcom/google/android/libraries/play/games/inputmapping/InputMappingClient;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/play/games/inputmapping/NoOpInputMappingClientImpl"

    invoke-static {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzv;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/play_games_inputmapping/zzv;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/play/games/inputmapping/zzb;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzv;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final registerInputMappingProvider(Lcom/google/android/libraries/play/games/inputmapping/InputMappingProvider;)V
    .locals 4

    .line 1
    sget-object p1, Lcom/google/android/libraries/play/games/inputmapping/zzb;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzp;->zzb()Lcom/google/android/gms/internal/play_games_inputmapping/zzao;

    move-result-object p1

    const-string v0, "com/google/android/libraries/play/games/inputmapping/NoOpInputMappingClientImpl"

    const-string v1, "registerInputMappingProvider"

    const/16 v2, 0xf

    const-string v3, "NoOpInputMappingClientImpl.java"

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzs;->zzg(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/play_games_inputmapping/zzao;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzs;

    const-string v0, "registerInputMappingProvider was called but a device supporting for input sdk was not detected."

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzs;->zzm(Ljava/lang/String;)V

    return-void
.end method

.method public final unregisterInputMappingProvider(Lcom/google/android/libraries/play/games/inputmapping/InputMappingProvider;)V
    .locals 4

    .line 1
    sget-object p1, Lcom/google/android/libraries/play/games/inputmapping/zzb;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzp;->zzb()Lcom/google/android/gms/internal/play_games_inputmapping/zzao;

    move-result-object p1

    const-string v0, "com/google/android/libraries/play/games/inputmapping/NoOpInputMappingClientImpl"

    const-string v1, "unregisterInputMappingProvider"

    const/16 v2, 0x16

    const-string v3, "NoOpInputMappingClientImpl.java"

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzs;->zzg(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/gms/internal/play_games_inputmapping/zzao;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzs;

    const-string v0, "unregisterInputMappingProvider was called but a device supporting for input sdk was not detected."

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzs;->zzm(Ljava/lang/String;)V

    return-void
.end method
