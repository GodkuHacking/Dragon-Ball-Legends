.class public final Lcom/google/android/gms/games/internal/v2/resolution/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.0.0"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/games/internal/v2/resolution/zzb;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/v2/resolution/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/v2/resolution/zzb;-><init>()V

    return-object v0
.end method

.method public static final zzb(Landroid/app/Activity;Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/games/internal/v2/resolution/zza;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/v2/resolution/zza;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gms/games/internal/v2/resolution/GamesResolutionActivity;

    .line 2
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "pendingIntent"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "resultReceiver"

    .line 4
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/v2/resolution/zza;->zza()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method
