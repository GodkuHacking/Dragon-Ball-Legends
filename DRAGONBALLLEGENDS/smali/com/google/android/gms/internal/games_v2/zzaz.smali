.class public final synthetic Lcom/google/android/gms/internal/games_v2/zzaz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzbl;

.field public final synthetic zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic zzc:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/games_v2/zzbl;Lcom/google/android/gms/tasks/TaskCompletionSource;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzaz;->zza:Lcom/google/android/gms/internal/games_v2/zzbl;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzaz;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput p3, p0, Lcom/google/android/gms/internal/games_v2/zzaz;->zzc:I

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzaz;->zza:Lcom/google/android/gms/internal/games_v2/zzbl;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzaz;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget v2, p0, Lcom/google/android/gms/internal/games_v2/zzaz;->zzc:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/games_v2/zzbl;->zzh(Lcom/google/android/gms/tasks/TaskCompletionSource;ILcom/google/android/gms/tasks/Task;)V

    return-void
.end method
