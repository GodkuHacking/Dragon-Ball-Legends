.class public abstract Lcom/google/android/gms/internal/measurement/zzib;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.3.0"


# static fields
.field public static final synthetic zzc:I = 0x0

.field private static final zzd:Ljava/lang/Object;

.field private static volatile zze:Lcom/google/android/gms/internal/measurement/zzhz; = null
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static volatile zzf:Z = false

.field private static final zzg:Ljava/util/concurrent/atomic/AtomicReference;

.field private static final zzh:Lcom/google/android/gms/internal/measurement/zzid;

.field private static final zzi:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field final zza:Lcom/google/android/gms/internal/measurement/zzhy;

.field final zzb:Ljava/lang/String;

.field private final zzj:Ljava/lang/Object;

.field private volatile zzk:I

.field private volatile zzl:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzib;->zzd:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzib;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzid;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzht;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzid;-><init>(Lcom/google/android/gms/internal/measurement/zzht;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzib;->zzh:Lcom/google/android/gms/internal/measurement/zzid;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzib;->zzi:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzhy;Ljava/lang/String;Ljava/lang/Object;ZLcom/google/android/gms/internal/measurement/zzia;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, -0x1

    iput p4, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzk:I

    iget-object p4, p1, Lcom/google/android/gms/internal/measurement/zzhy;->zza:Landroid/net/Uri;

    if-eqz p4, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzib;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzj:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zzc()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzib;->zzi:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public static zzd(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzib;->zze:Lcom/google/android/gms/internal/measurement/zzhz;

    if-nez v0, :cond_5

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzib;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzib;->zze:Lcom/google/android/gms/internal/measurement/zzhz;

    if-nez v1, :cond_4

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzib;->zze:Lcom/google/android/gms/internal/measurement/zzhz;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object p0, v2

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhz;->zza()Landroid/content/Context;

    move-result-object v1

    if-eq v1, p0, :cond_3

    .line 2
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhf;->zze()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzic;->zzc()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzhn;->zze()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzhs;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzhs;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzir;->zza(Lcom/google/android/gms/internal/measurement/zzim;)Lcom/google/android/gms/internal/measurement/zzim;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzhc;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/measurement/zzhc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzim;)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzib;->zze:Lcom/google/android/gms/internal/measurement/zzhz;

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzib;->zzi:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 7
    :cond_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 8
    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final zzb()Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzib;->zzi:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzk:I

    if-ge v1, v0, :cond_c

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzk:I

    if-ge v1, v0, :cond_b

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzib;->zze:Lcom/google/android/gms/internal/measurement/zzhz;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzii;->zzc()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhz;->zzb()Lcom/google/android/gms/internal/measurement/zzim;

    move-result-object v2

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzim;->zza()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzii;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzii;->zzb()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzii;->zza()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzhh;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzib;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/zzhy;->zza:Landroid/net/Uri;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzhy;->zzc:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzb:Ljava/lang/String;

    .line 5
    invoke-virtual {v4, v6, v3, v5, v7}, Lcom/google/android/gms/internal/measurement/zzhh;->zza(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    const-string v5, "Must call PhenotypeFlag.init() first"

    if-eqz v1, :cond_a

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzib;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzhy;->zza:Landroid/net/Uri;

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhz;->zza()Landroid/content/Context;

    move-result-object v6

    .line 6
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/measurement/zzhp;->zza(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhz;->zza()Landroid/content/Context;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/zzib;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    iget-object v6, v6, Lcom/google/android/gms/internal/measurement/zzhy;->zza:Landroid/net/Uri;

    sget-object v7, Lcom/google/android/gms/internal/measurement/zzhr;->zza:Lcom/google/android/gms/internal/measurement/zzhr;

    .line 8
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzhf;->zza(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/measurement/zzhf;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v3

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhz;->zza()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/measurement/zzhr;->zza:Lcom/google/android/gms/internal/measurement/zzhr;

    .line 9
    invoke-static {v5, v3, v6}, Lcom/google/android/gms/internal/measurement/zzic;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/measurement/zzic;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_3

    .line 8
    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzb:Ljava/lang/String;

    .line 10
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/measurement/zzhk;->zzb(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 11
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, v3

    :goto_2
    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzib;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/measurement/zzhy;->zzd:Z

    if-nez v5, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhz;->zza()Landroid/content/Context;

    move-result-object v1

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzhn;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzhn;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzib;->zza:Lcom/google/android/gms/internal/measurement/zzhy;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/measurement/zzhy;->zzd:Z

    if-eqz v5, :cond_4

    move-object v5, v3

    goto :goto_3

    .line 16
    :cond_4
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzb:Ljava/lang/String;

    .line 13
    :goto_3
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/measurement/zzhn;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 14
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :cond_5
    if-nez v3, :cond_6

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzj:Ljava/lang/Object;

    goto :goto_4

    :cond_6
    move-object v5, v3

    .line 15
    :cond_7
    :goto_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzii;->zzb()Z

    move-result v1

    if-eqz v1, :cond_9

    if-nez v4, :cond_8

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzj:Ljava/lang/Object;

    goto :goto_5

    .line 16
    :cond_8
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/zzib;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 15
    :cond_9
    :goto_5
    iput-object v5, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzl:Ljava/lang/Object;

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzk:I

    goto :goto_6

    .line 9
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 18
    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_b
    :goto_6
    monitor-exit p0

    goto :goto_7

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_c
    :goto_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzib;->zzl:Ljava/lang/Object;

    return-object v0
.end method
