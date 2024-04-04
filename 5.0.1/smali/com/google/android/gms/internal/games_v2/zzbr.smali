.class public final Lcom/google/android/gms/internal/games_v2/zzbr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.0.0"


# static fields
.field private static final zza:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field private final zzb:Landroid/app/Application;

.field private final zzc:Lcom/google/android/gms/internal/games_v2/zzau;

.field private final zzd:Lcom/google/android/gms/games/internal/zzg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzbr;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;Lcom/google/android/gms/internal/games_v2/zzau;Lcom/google/android/gms/games/internal/zzg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbr;->zzb:Landroid/app/Application;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzbr;->zzc:Lcom/google/android/gms/internal/games_v2/zzau;

    iput-object p3, p0, Lcom/google/android/gms/internal/games_v2/zzbr;->zzd:Lcom/google/android/gms/games/internal/zzg;

    return-void
.end method

.method public static zza()Landroid/app/Application;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbr;->zzb()V

    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzbr;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/games_v2/zzbr;

    iget-object v0, v0, Lcom/google/android/gms/internal/games_v2/zzbr;->zzb:Landroid/app/Application;

    return-object v0
.end method

.method public static zzb()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzbr;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "PlayGamesSdk has not been initialized. Ensure that PlayGamesSdk.initialize() has been called."

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method

.method public static zzc(Landroid/content/Context;)V
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzbr;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/games_v2/zzbr;

    if-nez v0, :cond_4

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    check-cast v0, Landroid/app/Application;

    goto :goto_1

    .line 5
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/app/Application;

    .line 6
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzau;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzau;

    move-result-object p0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/games/internal/zzg;->zzb(Landroid/app/Application;)Lcom/google/android/gms/games/internal/zzg;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/games_v2/zzbr;

    invoke-direct {v2, v0, p0, v1}, Lcom/google/android/gms/internal/games_v2/zzbr;-><init>(Landroid/app/Application;Lcom/google/android/gms/internal/games_v2/zzau;Lcom/google/android/gms/games/internal/zzg;)V

    sget-object p0, Lcom/google/android/gms/internal/games_v2/zzbr;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_2
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, v2, Lcom/google/android/gms/internal/games_v2/zzbr;->zzc:Lcom/google/android/gms/internal/games_v2/zzau;

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games_v2/zzau;->zzc()V

    iget-object p0, v2, Lcom/google/android/gms/internal/games_v2/zzbr;->zzd:Lcom/google/android/gms/games/internal/zzg;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzg;->zzh()V

    return-void

    .line 8
    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_4
    return-void
.end method
