.class Lcom/google/games/bridge/AllLeaderboardsUiRequest;
.super Lcom/google/games/bridge/SimpleUiRequest;
.source "AllLeaderboardsUiRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AllLeaderboardsUiRequest"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/games/bridge/SimpleUiRequest;-><init>()V

    return-void
.end method


# virtual methods
.method protected getIntent(Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/games/PlayGames;->getLeaderboardsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/LeaderboardsClient;

    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/games/LeaderboardsClient;->getAllLeaderboardsIntent()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
