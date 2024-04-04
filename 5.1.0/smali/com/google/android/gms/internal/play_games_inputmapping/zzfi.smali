.class public abstract Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;
.super Lcom/google/android/gms/internal/play_games_inputmapping/zzdz;
.source "com.google.android.libraries.play.games:inputmapping@@0.0.4"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzfi<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzff<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/play_games_inputmapping/zzdz<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static final zzb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzfi<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzc:Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;

.field protected zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzb:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzdz;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;->zzc()Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzc:Lcom/google/android/gms/internal/play_games_inputmapping/zzhq;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzd:I

    return-void
.end method

.method static zzm(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzb:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    if-nez v1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    .line 3
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzhz;->zze(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 7
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v1
.end method

.method protected static zzn()Lcom/google/android/gms/internal/play_games_inputmapping/zzfl;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfj;->zze()Lcom/google/android/gms/internal/play_games_inputmapping/zzfj;

    move-result-object v0

    return-object v0
.end method

.method protected static zzo(Lcom/google/android/gms/internal/play_games_inputmapping/zzfl;)Lcom/google/android/gms/internal/play_games_inputmapping/zzfl;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfl;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v0, v0

    .line 2
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfl;->zzf(I)Lcom/google/android/gms/internal/play_games_inputmapping/zzfl;

    move-result-object p0

    return-object p0
.end method

.method protected static zzp()Lcom/google/android/gms/internal/play_games_inputmapping/zzfn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzfn<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzgw;->zzd()Lcom/google/android/gms/internal/play_games_inputmapping/zzgw;

    move-result-object v0

    return-object v0
.end method

.method protected static zzq(Lcom/google/android/gms/internal/play_games_inputmapping/zzfn;)Lcom/google/android/gms/internal/play_games_inputmapping/zzfn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzfn<",
            "TE;>;)",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzfn<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfn;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v0, v0

    .line 2
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfn;->zzg(I)Lcom/google/android/gms/internal/play_games_inputmapping/zzfn;

    move-result-object p0

    return-object p0
.end method

.method static varargs zzs(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 3
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 5
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 6
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    .line 7
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 4
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    .line 8
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static zzt(Lcom/google/android/gms/internal/play_games_inputmapping/zzgn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzgx;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/play_games_inputmapping/zzgx;-><init>(Lcom/google/android/gms/internal/play_games_inputmapping/zzgn;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method protected static zzu(Ljava/lang/Class;Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzb:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzgv;->zza()Lcom/google/android/gms/internal/play_games_inputmapping/zzgv;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzgv;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_games_inputmapping/zzgy;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzgy;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zza:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzgv;->zza()Lcom/google/android/gms/internal/play_games_inputmapping/zzgv;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzgv;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_games_inputmapping/zzgy;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzgy;->zzb(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zza:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzgp;->zza(Lcom/google/android/gms/internal/play_games_inputmapping/zzgn;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method final zzg()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzd:I

    return v0
.end method

.method final zzi(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzd:I

    return-void
.end method

.method public final zzj()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzgv;->zza()Lcom/google/android/gms/internal/play_games_inputmapping/zzgv;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzgv;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_games_inputmapping/zzgy;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzgy;->zza(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzd:I

    :cond_0
    return v0
.end method

.method protected final zzk()Lcom/google/android/gms/internal/play_games_inputmapping/zzff;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzfi<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/android/gms/internal/play_games_inputmapping/zzff<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;

    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/internal/play_games_inputmapping/zzgn;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;

    return-object v0
.end method

.method public final bridge synthetic zzr()Lcom/google/android/gms/internal/play_games_inputmapping/zzgm;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;->zzf(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/play_games_inputmapping/zzff;->zzh(Lcom/google/android/gms/internal/play_games_inputmapping/zzfi;)Lcom/google/android/gms/internal/play_games_inputmapping/zzff;

    return-object v0
.end method

.method public final zzv(Lcom/google/android/gms/internal/play_games_inputmapping/zzev;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_games_inputmapping/zzgv;->zza()Lcom/google/android/gms/internal/play_games_inputmapping/zzgv;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzgv;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_games_inputmapping/zzgy;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzew;->zza(Lcom/google/android/gms/internal/play_games_inputmapping/zzev;)Lcom/google/android/gms/internal/play_games_inputmapping/zzew;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/play_games_inputmapping/zzgy;->zzi(Ljava/lang/Object;Lcom/google/android/gms/internal/play_games_inputmapping/zzew;)V

    return-void
.end method
