.class final Lcom/google/android/gms/internal/games_v2/zzat;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.0.0"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzau;

.field private final zzb:Landroid/app/Application;

.field private zzc:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/games_v2/zzau;Landroid/app/Application;Lcom/google/android/gms/internal/games_v2/zzas;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzat;->zza:Lcom/google/android/gms/internal/games_v2/zzau;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/games_v2/zzat;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzat;->zzb:Landroid/app/Application;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/games_v2/zzat;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/games_v2/zzat;->zzc:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzat;->zzb:Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/games_v2/zzat;->zzc:Z

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzat;->zzb:Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/games_v2/zzat;->zzc:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/games_v2/zzat;->zzc:Z

    const-string p1, "AutomaticGamesAuthenticator"

    const-string p2, "Automatic connection attempt triggered"

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/games_v2/zzez;->zza(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzat;->zza:Lcom/google/android/gms/internal/games_v2/zzau;

    invoke-static {p1}, Lcom/google/android/gms/internal/games_v2/zzau;->zzb(Lcom/google/android/gms/internal/games_v2/zzau;)Lcom/google/android/gms/internal/games_v2/zzav;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/games_v2/zzav;->zza()Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
