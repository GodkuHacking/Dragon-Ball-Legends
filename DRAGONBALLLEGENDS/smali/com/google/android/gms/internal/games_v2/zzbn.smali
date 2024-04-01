.class public final synthetic Lcom/google/android/gms/internal/games_v2/zzbn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzbp;

.field public final synthetic zzb:Lcom/google/android/gms/internal/games_v2/zzy;

.field public final synthetic zzc:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/games_v2/zzbp;Lcom/google/android/gms/internal/games_v2/zzy;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbn;->zza:Lcom/google/android/gms/internal/games_v2/zzbp;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzbn;->zzb:Lcom/google/android/gms/internal/games_v2/zzy;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/games_v2/zzbn;->zzc:Z

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbn;->zza:Lcom/google/android/gms/internal/games_v2/zzbp;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzbn;->zzb:Lcom/google/android/gms/internal/games_v2/zzy;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/games_v2/zzbn;->zzc:Z

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/games_v2/zzbp;->zzb(Lcom/google/android/gms/internal/games_v2/zzy;ZLcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
