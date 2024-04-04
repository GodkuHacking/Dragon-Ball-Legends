.class public Lcom/google/games/bridge/HelperFragment;
.super Landroid/app/Fragment;
.source "HelperFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/games/bridge/HelperFragment$Request;
    }
.end annotation


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String; = "gpg.HelperFragment"

.field static final RC_RESOLUTION_DIALOG:I = 0x2333

.field static final RC_SELECT_OPPONENTS_UI:I = 0x232e

.field static final RC_SELECT_SNAPSHOT_UI:I = 0x232c

.field static final RC_SHOW_REQUEST_PERMISSIONS_UI:I = 0x2332

.field static final RC_SIGN_IN:I = 0x232a

.field static final RC_SIMPLE_UI:I = 0x232b

.field private static final TAG:Ljava/lang/String; = "HelperFragment"

.field private static helperFragment:Lcom/google/games/bridge/HelperFragment;

.field private static final lock:Ljava/lang/Object;

.field private static pendingRequest:Lcom/google/games/bridge/HelperFragment$Request;

.field private static runningRequest:Lcom/google/games/bridge/HelperFragment$Request;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/games/bridge/HelperFragment;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static askForLoadFriendsResolution(Landroid/app/Activity;Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Lcom/google/games/bridge/GenericResolutionUiRequest;

    invoke-direct {v0, p1}, Lcom/google/games/bridge/GenericResolutionUiRequest;-><init>(Landroid/app/PendingIntent;)V

    .line 103
    invoke-static {p0, v0}, Lcom/google/games/bridge/HelperFragment;->startRequest(Landroid/app/Activity;Lcom/google/games/bridge/HelperFragment$Request;)Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, -0xc

    .line 104
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/games/bridge/GenericResolutionUiRequest;->setResult(Ljava/lang/Integer;)V

    .line 106
    :cond_0
    invoke-virtual {v0}, Lcom/google/games/bridge/GenericResolutionUiRequest;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static createInvisibleView(Landroid/app/Activity;)Landroid/view/View;
    .locals 1

    .line 239
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x4

    .line 240
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    .line 241
    invoke-virtual {v0, p0}, Landroid/view/View;->setClickable(Z)V

    return-object v0
.end method

.method static finishRequest(Lcom/google/games/bridge/HelperFragment$Request;)V
    .locals 2

    .line 226
    sget-object v0, Lcom/google/games/bridge/HelperFragment;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_0
    sget-object v1, Lcom/google/games/bridge/HelperFragment;->runningRequest:Lcom/google/games/bridge/HelperFragment$Request;

    if-ne v1, p0, :cond_0

    const/4 p0, 0x0

    .line 228
    sput-object p0, Lcom/google/games/bridge/HelperFragment;->runningRequest:Lcom/google/games/bridge/HelperFragment$Request;

    .line 230
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getDecorView(Landroid/app/Activity;)Landroid/view/View;
    .locals 0

    .line 246
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static getHelperFragment(Landroid/app/Activity;)Lcom/google/games/bridge/HelperFragment;
    .locals 4

    const-string v0, "HelperFragment"

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "gpg.HelperFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/games/bridge/HelperFragment;

    if-nez v1, :cond_1

    :try_start_0
    const-string v1, "Creating fragment"

    .line 149
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v1, Lcom/google/games/bridge/HelperFragment;

    invoke-direct {v1}, Lcom/google/games/bridge/HelperFragment;-><init>()V

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 152
    invoke-virtual {p0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 153
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    const-string v1, "Cannot launch token fragment:"

    .line 155
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_1
    return-object v1
.end method

.method public static isResolutionRequired(Ljava/lang/Exception;)Z
    .locals 0

    .line 93
    instance-of p0, p0, Lcom/google/android/gms/common/api/ResolvableApiException;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private processRequest()V
    .locals 3

    .line 166
    sget-object v0, Lcom/google/games/bridge/HelperFragment;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_0
    sget-object v1, Lcom/google/games/bridge/HelperFragment;->runningRequest:Lcom/google/games/bridge/HelperFragment$Request;

    if-eqz v1, :cond_0

    .line 168
    monitor-exit v0

    return-void

    .line 170
    :cond_0
    sget-object v1, Lcom/google/games/bridge/HelperFragment;->pendingRequest:Lcom/google/games/bridge/HelperFragment$Request;

    const/4 v2, 0x0

    .line 171
    sput-object v2, Lcom/google/games/bridge/HelperFragment;->pendingRequest:Lcom/google/games/bridge/HelperFragment$Request;

    .line 172
    sput-object v1, Lcom/google/games/bridge/HelperFragment;->runningRequest:Lcom/google/games/bridge/HelperFragment$Request;

    .line 173
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return-void

    .line 179
    :cond_1
    invoke-interface {v1, p0}, Lcom/google/games/bridge/HelperFragment$Request;->process(Lcom/google/games/bridge/HelperFragment;)V

    return-void

    :catchall_0
    move-exception v1

    .line 173
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static showAchievementUi(Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/google/games/bridge/AchievementUiRequest;

    invoke-direct {v0}, Lcom/google/games/bridge/AchievementUiRequest;-><init>()V

    .line 54
    invoke-static {p0, v0}, Lcom/google/games/bridge/HelperFragment;->startRequest(Landroid/app/Activity;Lcom/google/games/bridge/HelperFragment$Request;)Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, -0xc

    .line 55
    invoke-virtual {v0, p0}, Lcom/google/games/bridge/AchievementUiRequest;->setResult(I)V

    .line 58
    :cond_0
    invoke-virtual {v0}, Lcom/google/games/bridge/AchievementUiRequest;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static showAllLeaderboardsUi(Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/google/games/bridge/AllLeaderboardsUiRequest;

    invoke-direct {v0}, Lcom/google/games/bridge/AllLeaderboardsUiRequest;-><init>()V

    .line 64
    invoke-static {p0, v0}, Lcom/google/games/bridge/HelperFragment;->startRequest(Landroid/app/Activity;Lcom/google/games/bridge/HelperFragment$Request;)Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, -0xc

    .line 65
    invoke-virtual {v0, p0}, Lcom/google/games/bridge/AllLeaderboardsUiRequest;->setResult(I)V

    .line 68
    :cond_0
    invoke-virtual {v0}, Lcom/google/games/bridge/AllLeaderboardsUiRequest;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static showCompareProfileWithAlternativeNameHintsUI(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/google/games/bridge/CompareProfileUiRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/games/bridge/CompareProfileUiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {p0, v0}, Lcom/google/games/bridge/HelperFragment;->startRequest(Landroid/app/Activity;Lcom/google/games/bridge/HelperFragment$Request;)Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, -0xc

    .line 120
    invoke-virtual {v0, p0}, Lcom/google/games/bridge/CompareProfileUiRequest;->setResult(I)V

    .line 123
    :cond_0
    invoke-virtual {v0}, Lcom/google/games/bridge/CompareProfileUiRequest;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static showLeaderboardUi(Landroid/app/Activity;Ljava/lang/String;I)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/google/games/bridge/LeaderboardUiRequest;

    invoke-direct {v0, p1, p2}, Lcom/google/games/bridge/LeaderboardUiRequest;-><init>(Ljava/lang/String;I)V

    .line 74
    invoke-static {p0, v0}, Lcom/google/games/bridge/HelperFragment;->startRequest(Landroid/app/Activity;Lcom/google/games/bridge/HelperFragment$Request;)Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, -0xc

    .line 75
    invoke-virtual {v0, p0}, Lcom/google/games/bridge/LeaderboardUiRequest;->setResult(I)V

    .line 78
    :cond_0
    invoke-virtual {v0}, Lcom/google/games/bridge/LeaderboardUiRequest;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static showSelectSnapshotUi(Landroid/app/Activity;Ljava/lang/String;ZZI)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "ZZI)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/games/bridge/SelectSnapshotUiRequest$Result;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/google/games/bridge/SelectSnapshotUiRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/games/bridge/SelectSnapshotUiRequest;-><init>(Ljava/lang/String;ZZI)V

    .line 85
    invoke-static {p0, v0}, Lcom/google/games/bridge/HelperFragment;->startRequest(Landroid/app/Activity;Lcom/google/games/bridge/HelperFragment$Request;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x5

    .line 86
    invoke-virtual {v0, p0}, Lcom/google/games/bridge/SelectSnapshotUiRequest;->setResult(I)V

    .line 89
    :cond_0
    invoke-virtual {v0}, Lcom/google/games/bridge/SelectSnapshotUiRequest;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method private static startRequest(Landroid/app/Activity;Lcom/google/games/bridge/HelperFragment$Request;)Z
    .locals 2

    .line 128
    sget-object v0, Lcom/google/games/bridge/HelperFragment;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    sget-object v1, Lcom/google/games/bridge/HelperFragment;->pendingRequest:Lcom/google/games/bridge/HelperFragment$Request;

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/games/bridge/HelperFragment;->runningRequest:Lcom/google/games/bridge/HelperFragment$Request;

    if-nez v1, :cond_0

    .line 130
    sput-object p1, Lcom/google/games/bridge/HelperFragment;->pendingRequest:Lcom/google/games/bridge/HelperFragment$Request;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 133
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 135
    invoke-static {p0}, Lcom/google/games/bridge/HelperFragment;->getHelperFragment(Landroid/app/Activity;)Lcom/google/games/bridge/HelperFragment;

    move-result-object p0

    .line 136
    invoke-virtual {p0}, Lcom/google/games/bridge/HelperFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-direct {p0}, Lcom/google/games/bridge/HelperFragment;->processRequest()V

    :cond_1
    return p1

    :catchall_0
    move-exception p0

    .line 133
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 197
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 199
    sget-object v0, Lcom/google/games/bridge/HelperFragment;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    sget-object v1, Lcom/google/games/bridge/HelperFragment;->runningRequest:Lcom/google/games/bridge/HelperFragment$Request;

    .line 201
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    return-void

    .line 206
    :cond_0
    invoke-interface {v1, p1, p2, p3}, Lcom/google/games/bridge/HelperFragment$Request;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :catchall_0
    move-exception p1

    .line 201
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onResume()V
    .locals 2

    const-string v0, "HelperFragment"

    const-string v1, "onResume called"

    .line 217
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 219
    sget-object v0, Lcom/google/games/bridge/HelperFragment;->helperFragment:Lcom/google/games/bridge/HelperFragment;

    if-nez v0, :cond_0

    .line 220
    sput-object p0, Lcom/google/games/bridge/HelperFragment;->helperFragment:Lcom/google/games/bridge/HelperFragment;

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/google/games/bridge/HelperFragment;->processRequest()V

    return-void
.end method
