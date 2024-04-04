.class public final Lcom/google/android/gms/internal/play_games_inputmapping/zzv;
.super Lcom/google/android/gms/internal/play_games_inputmapping/zzp;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzp<",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzs;",
        ">;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzu;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzr;)V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzv;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzu;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzp;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;)V

    return-void
.end method

.method public static zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/play_games_inputmapping/zzv;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "injected class name is empty"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdt;->zzc(ZLjava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzv;

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    .line 2
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcb;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzv;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/util/logging/Level;)Lcom/google/android/gms/internal/play_games_inputmapping/zzao;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzv;->zzf(Ljava/util/logging/Level;)Lcom/google/android/gms/internal/play_games_inputmapping/zzs;

    move-result-object p1

    return-object p1
.end method

.method public final zzf(Ljava/util/logging/Level;)Lcom/google/android/gms/internal/play_games_inputmapping/zzs;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzp;->zze(Ljava/util/logging/Level;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzp;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcb;->zzn(Ljava/lang/String;Ljava/util/logging/Level;Z)Z

    if-nez v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzv;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzu;

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzt;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzv;Ljava/util/logging/Level;Z)V

    return-object v0
.end method
