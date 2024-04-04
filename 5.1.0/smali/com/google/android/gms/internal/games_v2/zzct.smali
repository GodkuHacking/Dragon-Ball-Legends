.class public final synthetic Lcom/google/android/gms/internal/games_v2/zzct;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/games_v2/zzaq;


# instance fields
.field public final synthetic zza:Ljava/lang/String;

.field public final synthetic zzb:I

.field public final synthetic zzc:I

.field public final synthetic zzd:I

.field public final synthetic zze:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzct;->zza:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/games_v2/zzct;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/games_v2/zzct;->zzc:I

    iput p4, p0, Lcom/google/android/gms/internal/games_v2/zzct;->zzd:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/games_v2/zzct;->zze:Z

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/tasks/Task;
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzct;->zza:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/games_v2/zzct;->zzb:I

    iget v3, p0, Lcom/google/android/gms/internal/games_v2/zzct;->zzc:I

    iget v4, p0, Lcom/google/android/gms/internal/games_v2/zzct;->zzd:I

    iget-boolean v5, p0, Lcom/google/android/gms/internal/games_v2/zzct;->zze:Z

    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/games_v2/zzdc;

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/games_v2/zzdc;-><init>(Ljava/lang/String;IIIZ)V

    .line 2
    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    const/16 v1, 0x1a31

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApi;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
