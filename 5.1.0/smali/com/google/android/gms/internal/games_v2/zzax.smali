.class public final Lcom/google/android/gms/internal/games_v2/zzax;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.0.0"


# static fields
.field private static final zza:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzax;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzav;
    .locals 9

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzax;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/games_v2/zzav;

    if-eqz v1, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzq;->zza()Lcom/google/android/gms/internal/games_v2/zzo;

    move-result-object v1

    const/16 v2, 0x9

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/games_v2/zzo;->zza(I)Lcom/google/android/gms/internal/games_v2/zzo;

    .line 4
    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/games_v2/zzo;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/games_v2/zzo;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/games_v2/zzo;->zzc()Lcom/google/android/gms/internal/games_v2/zzq;

    move-result-object v1

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/games/internal/zzg;->zzb(Landroid/app/Application;)Lcom/google/android/gms/games/internal/zzg;

    move-result-object v4

    new-instance v8, Lcom/google/android/gms/internal/games_v2/zzbl;

    invoke-static {}, Lcom/google/android/gms/games/internal/v2/resolution/zzb;->zza()Lcom/google/android/gms/games/internal/v2/resolution/zzb;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/games_v2/zzbp;

    new-instance v2, Lcom/google/android/gms/internal/games_v2/zzaw;

    .line 7
    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/games_v2/zzaw;-><init>(Landroid/app/Application;Lcom/google/android/gms/internal/games_v2/zzq;)V

    const/4 v1, 0x0

    invoke-direct {v6, p0, v4, v2, v1}, Lcom/google/android/gms/internal/games_v2/zzbp;-><init>(Landroid/app/Application;Lcom/google/android/gms/games/internal/zzg;Lcom/google/android/gms/internal/games_v2/zzaw;[B)V

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/games_v2/zzbl;-><init>(Landroid/app/Application;Lcom/google/android/gms/games/internal/zzg;Lcom/google/android/gms/games/internal/v2/resolution/zzb;Lcom/google/android/gms/internal/games_v2/zzbm;[B)V

    .line 8
    :cond_1
    invoke-virtual {v0, v1, v8}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/games_v2/zzax;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/games_v2/zzav;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/games_v2/zzav;

    return-object p0
.end method
