.class public abstract Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputMap;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/util/List;Lcom/google/android/libraries/play/games/inputmapping/datamodel/MouseSettings;)Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputGroup;",
            ">;",
            "Lcom/google/android/libraries/play/games/inputmapping/datamodel/MouseSettings;",
            ")",
            "Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputMap;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputMap;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/AutoValue_InputMap;-><init>(Ljava/util/List;Lcom/google/android/libraries/play/games/inputmapping/datamodel/MouseSettings;)V

    return-object v0
.end method


# virtual methods
.method abstract inputGroups()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputGroup;",
            ">;"
        }
    .end annotation
.end method

.method abstract mouseSettings()Lcom/google/android/libraries/play/games/inputmapping/datamodel/MouseSettings;
.end method

.method public final zza()Lcom/google/android/gms/internal/play_games_inputmapping/zzl;
    .locals 10

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzl;->zza()Lcom/google/android/gms/internal/play_games_inputmapping/zzk;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputMap;->inputGroups()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputGroup;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzi;->zza()Lcom/google/android/gms/internal/play_games_inputmapping/zzh;

    move-result-object v3

    .line 4
    invoke-virtual {v2}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputGroup;->inputActions()Ljava/util/List;

    move-result-object v4

    .line 5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputAction;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzc;->zza()Lcom/google/android/gms/internal/play_games_inputmapping/zzb;

    move-result-object v6

    .line 7
    invoke-virtual {v5}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputAction;->actionLabel()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/play_games_inputmapping/zzb;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_games_inputmapping/zzb;

    .line 7
    invoke-virtual {v5}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputAction;->uniqueId()I

    move-result v7

    int-to-long v7, v7

    .line 9
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/play_games_inputmapping/zzb;->zzc(J)Lcom/google/android/gms/internal/play_games_inputmapping/zzb;

    .line 7
    invoke-virtual {v5}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputAction;->inputControls()Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputControls;

    move-result-object v5

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;->zza()Lcom/google/android/gms/internal/play_games_inputmapping/zze;

    move-result-object v7

    .line 11
    invoke-virtual {v5}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputControls;->keycodes()Ljava/util/List;

    move-result-object v8

    .line 12
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 13
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/play_games_inputmapping/zze;->zzb(I)Lcom/google/android/gms/internal/play_games_inputmapping/zze;

    goto :goto_2

    .line 11
    :cond_0
    invoke-virtual {v5}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputControls;->mouseActions()Ljava/util/List;

    move-result-object v5

    .line 14
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/play_games_inputmapping/zze;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/play_games_inputmapping/zze;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzi()Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_games_inputmapping/zzf;

    .line 11
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/play_games_inputmapping/zzb;->zzb(Lcom/google/android/gms/internal/play_games_inputmapping/zzf;)Lcom/google/android/gms/internal/play_games_inputmapping/zzb;

    .line 15
    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzi()Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_games_inputmapping/zzc;

    .line 7
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/play_games_inputmapping/zzh;->zza(Lcom/google/android/gms/internal/play_games_inputmapping/zzc;)Lcom/google/android/gms/internal/play_games_inputmapping/zzh;

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputGroup;->groupLabel()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzh;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/play_games_inputmapping/zzh;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzi()Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_games_inputmapping/zzi;

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzk;->zza(Lcom/google/android/gms/internal/play_games_inputmapping/zzi;)Lcom/google/android/gms/internal/play_games_inputmapping/zzk;

    goto/16 :goto_0

    .line 17
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputMap;->mouseSettings()Lcom/google/android/libraries/play/games/inputmapping/datamodel/MouseSettings;

    move-result-object v1

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzo;->zza()Lcom/google/android/gms/internal/play_games_inputmapping/zzn;

    move-result-object v2

    .line 17
    invoke-virtual {v1}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/MouseSettings;->allowMouseSensitivityAdjustment()Z

    move-result v3

    .line 19
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzn;->zza(Z)Lcom/google/android/gms/internal/play_games_inputmapping/zzn;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/MouseSettings;->invertMouseMovement()Z

    move-result v1

    .line 20
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzn;->zzb(Z)Lcom/google/android/gms/internal/play_games_inputmapping/zzn;

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzi()Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzo;

    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzk;->zzb(Lcom/google/android/gms/internal/play_games_inputmapping/zzo;)Lcom/google/android/gms/internal/play_games_inputmapping/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzi()Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzl;

    return-object v0
.end method
