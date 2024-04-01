.class public final synthetic Lcom/google/android/gms/internal/games_v2/zzcp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

.field public final synthetic zzb:I

.field public final synthetic zzc:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzcp;->zza:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    iput p2, p0, Lcom/google/android/gms/internal/games_v2/zzcp;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/games_v2/zzcp;->zzc:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzcp;->zza:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    iget v1, p0, Lcom/google/android/gms/internal/games_v2/zzcp;->zzb:I

    iget v2, p0, Lcom/google/android/gms/internal/games_v2/zzcp;->zzc:I

    check-cast p1, Lcom/google/android/gms/games/internal/zzak;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/google/android/gms/games/internal/zzak;->zzE(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V

    return-void
.end method
