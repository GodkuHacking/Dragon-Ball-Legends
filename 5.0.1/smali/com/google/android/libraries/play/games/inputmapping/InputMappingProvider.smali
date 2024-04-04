.class public abstract Lcom/google/android/libraries/play/games/inputmapping/InputMappingProvider;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"

# interfaces
.implements Lcom/google/android/libraries/play/games/inputmapping/InputMappingProviderInternal;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInputMap()[B
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/play/games/inputmapping/InputMappingProvider;->onProvideInputMap()Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/play/games/inputmapping/datamodel/InputMap;->zza()Lcom/google/android/gms/internal/play_games_inputmapping/zzl;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdz;->zzj()I

    move-result v1

    .line 2
    new-array v1, v1, [B

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzev;->zzC([B)Lcom/google/android/gms/internal/play_games_inputmapping/zzev;

    move-result-object v2

    .line 1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdz;->zzv(Lcom/google/android/gms/internal/play_games_inputmapping/zzev;)V

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzev;->zzD()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x48

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Serializing "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to a byte array threw an IOException (should never happen)."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
