.class public abstract Lcom/google/android/gms/internal/play_games_inputmapping/zzp;
.super Ljava/lang/Object;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<API::",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzao<",
        "TAPI;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzp;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;

    return-void
.end method

.method private static zzf(Ljava/lang/String;Lcom/google/android/gms/internal/play_games_inputmapping/zzba;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzba;->zze()J

    move-result-wide v3

    .line 2
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    .line 3
    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": logging error ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzba;->zzf()Lcom/google/android/gms/internal/play_games_inputmapping/zzaf;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzaf;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzaf;

    if-eq p1, v1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzaf;->zzb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzaf;->zzd()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzaf;->zza()I

    move-result p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "]: "

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 13
    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    return-void
.end method


# virtual methods
.method public abstract zza(Ljava/util/logging/Level;)Lcom/google/android/gms/internal/play_games_inputmapping/zzao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Level;",
            ")TAPI;"
        }
    .end annotation
.end method

.method public final zzb()Lcom/google/android/gms/internal/play_games_inputmapping/zzao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAPI;"
        }
    .end annotation

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzp;->zza(Ljava/util/logging/Level;)Lcom/google/android/gms/internal/play_games_inputmapping/zzao;

    move-result-object v0

    return-object v0
.end method

.method protected final zzc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzp;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;->zza()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzd(Lcom/google/android/gms/internal/play_games_inputmapping/zzba;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdv;->zzc()Lcom/google/android/gms/internal/play_games_inputmapping/zzdv;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdv;->zzb()I

    move-result v1

    const/16 v2, 0x64

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzp;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;->zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzba;)V

    goto :goto_0

    :cond_0
    const-string v1, "unbounded recursion in log statement"

    .line 4
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzp;->zzf(Ljava/lang/String;Lcom/google/android/gms/internal/play_games_inputmapping/zzba;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    :try_start_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdv;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 1
    :try_start_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdv;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :cond_2
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 4
    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzp;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;

    .line 6
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;->zzb(Ljava/lang/RuntimeException;Lcom/google/android/gms/internal/play_games_inputmapping/zzba;)V
    :try_end_5
    .catch Lcom/google/android/gms/internal/play_games_inputmapping/zzbd; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzp;->zzf(Ljava/lang/String;Lcom/google/android/gms/internal/play_games_inputmapping/zzba;)V

    :try_start_6
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    return-void

    :catch_3
    move-exception p1

    .line 9
    throw p1
.end method

.method protected final zze(Ljava/util/logging/Level;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzp;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbc;->zzd(Ljava/util/logging/Level;)Z

    move-result p1

    return p1
.end method
