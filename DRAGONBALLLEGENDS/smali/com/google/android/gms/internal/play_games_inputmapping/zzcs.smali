.class public final Lcom/google/android/gms/internal/play_games_inputmapping/zzcs;
.super Lcom/google/android/gms/internal/play_games_inputmapping/zzcg;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# static fields
.field private static final zza:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzar<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzbo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzbo<",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzaq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/util/logging/Level;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    sget-object v2, Lcom/google/android/gms/internal/play_games_inputmapping/zzaa;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/internal/play_games_inputmapping/zzau;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcs;->zza:Ljava/util/Set;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbr;->zza(Ljava/util/Set;)Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbk;->zzd()Lcom/google/android/gms/internal/play_games_inputmapping/zzbo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcs;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzbo;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/logging/Level;Lcom/google/android/gms/internal/play_games_inputmapping/zzcr;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcg;-><init>(Ljava/lang/String;)V

    const-string p1, ""

    const/4 p3, 0x1

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzck;->zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcs;->zzc:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcs;->zzd:Ljava/util/logging/Level;

    return-void
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/play_games_inputmapping/zzba;Ljava/lang/String;ZLjava/util/logging/Level;)V
    .locals 0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcs;->zzf(Lcom/google/android/gms/internal/play_games_inputmapping/zzba;Ljava/lang/String;ZLjava/util/logging/Level;)V

    return-void
.end method

.method private static zzf(Lcom/google/android/gms/internal/play_games_inputmapping/zzba;Ljava/lang/String;ZLjava/util/logging/Level;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;->zzg()Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;

    move-result-object p2

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzba;->zzh()Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzby;->zzh(Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;)Lcom/google/android/gms/internal/play_games_inputmapping/zzby;

    move-result-object p2

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzba;->zzk()Ljava/util/logging/Level;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    invoke-virtual {p3}, Ljava/util/logging/Level;->intValue()I

    move-result p3

    if-lt v0, p3, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzcs;->zza:Ljava/util/Set;

    .line 3
    invoke-static {p0, p2, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzce;->zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzba;Lcom/google/android/gms/internal/play_games_inputmapping/zzby;Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzce;->zza(Lcom/google/android/gms/internal/play_games_inputmapping/zzba;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 3
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v0, p3, :cond_2

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzba;->zzi()Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;

    move-result-object p3

    if-eqz p3, :cond_2

    const-string p2, "(REDACTED) "

    .line 7
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzba;->zzi()Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcf;->zzb()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzav;->zzb(Lcom/google/android/gms/internal/play_games_inputmapping/zzba;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/google/android/gms/internal/play_games_inputmapping/zzcs;->zzb:Lcom/google/android/gms/internal/play_games_inputmapping/zzbo;

    .line 6
    invoke-static {p2, p3, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzce;->zzb(Lcom/google/android/gms/internal/play_games_inputmapping/zzby;Lcom/google/android/gms/internal/play_games_inputmapping/zzbo;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 9
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-interface {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzba;->zzh()Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;

    move-result-object p3

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzaa;->zza:Lcom/google/android/gms/internal/play_games_inputmapping/zzar;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzbg;->zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzar;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Throwable;

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzba;->zzk()Ljava/util/logging/Level;

    move-result-object p0

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzck;->zzb(Ljava/util/logging/Level;)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/4 v0, 0x3

    if-eq p0, v0, :cond_5

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/4 v0, 0x5

    if-eq p0, v0, :cond_3

    .line 13
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 14
    :cond_3
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 15
    :cond_4
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 16
    :cond_5
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 17
    :cond_6
    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/play_games_inputmapping/zzba;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcs;->zzc:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcs;->zzd:Ljava/util/logging/Level;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzcs;->zzf(Lcom/google/android/gms/internal/play_games_inputmapping/zzba;Ljava/lang/String;ZLjava/util/logging/Level;)V

    return-void
.end method

.method public final zzd(Ljava/util/logging/Level;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzck;->zzb(Ljava/util/logging/Level;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzcs;->zzc:Ljava/lang/String;

    .line 2
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "all"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
