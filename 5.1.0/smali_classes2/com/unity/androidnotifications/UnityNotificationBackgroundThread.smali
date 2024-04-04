.class public Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;
.super Ljava/lang/Thread;
.source "UnityNotificationBackgroundThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$HousekeepingTask;,
        Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$CancelAllNotificationsTask;,
        Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$CancelNotificationTask;,
        Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$ScheduleNotificationTask;,
        Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$Task;
    }
.end annotation


# static fields
.field private static final TASKS_FOR_HOUSEKEEPING:I = 0x32


# instance fields
.field private mManager:Lcom/unity/androidnotifications/UnityNotificationManager;

.field private mScheduledNotifications:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private mTasks:Ljava/util/concurrent/LinkedTransferQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedTransferQueue<",
            "Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$Task;",
            ">;"
        }
    .end annotation
.end field

.field private mTasksSinceHousekeeping:I


# direct methods
.method public constructor <init>(Lcom/unity/androidnotifications/UnityNotificationManager;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity/androidnotifications/UnityNotificationManager;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification$Builder;",
            ">;)V"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 113
    new-instance v0, Ljava/util/concurrent/LinkedTransferQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedTransferQueue;-><init>()V

    iput-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->mTasks:Ljava/util/concurrent/LinkedTransferQueue;

    const/16 v0, 0x32

    .line 116
    iput v0, p0, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->mTasksSinceHousekeeping:I

    .line 119
    iput-object p1, p0, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->mManager:Lcom/unity/androidnotifications/UnityNotificationManager;

    .line 120
    iput-object p2, p0, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->mScheduledNotifications:Ljava/util/concurrent/ConcurrentHashMap;

    .line 122
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->loadNotifications()V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;Ljava/util/Set;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->performHousekeeping(Ljava/util/Set;)V

    return-void
.end method

.method private enqueueHousekeeping()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->mTasks:Ljava/util/concurrent/LinkedTransferQueue;

    new-instance v1, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$HousekeepingTask;

    invoke-direct {v1, p0}, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$HousekeepingTask;-><init>(Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private executeTask(Lcom/unity/androidnotifications/UnityNotificationManager;Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$Task;Ljava/util/concurrent/ConcurrentHashMap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity/androidnotifications/UnityNotificationManager;",
            "Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$Task;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification$Builder;",
            ">;)Z"
        }
    .end annotation

    .line 164
    :try_start_0
    invoke-virtual {p2, p1, p3}, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$Task;->run(Lcom/unity/androidnotifications/UnityNotificationManager;Ljava/util/concurrent/ConcurrentHashMap;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "UnityNotifications"

    const-string p3, "Exception executing notification task"

    .line 166
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return p1
.end method

.method private loadNotifications()V
    .locals 5

    .line 181
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->mManager:Lcom/unity/androidnotifications/UnityNotificationManager;

    invoke-virtual {v0}, Lcom/unity/androidnotifications/UnityNotificationManager;->loadSavedNotifications()Ljava/util/List;

    move-result-object v0

    .line 182
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$Builder;

    .line 183
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, -0x1

    const-string v4, "id"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 184
    iget-object v3, p0, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->mScheduledNotifications:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private performHousekeeping(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 173
    iget v0, p0, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->mTasksSinceHousekeeping:I

    const/4 v1, 0x0

    const/16 v2, 0x32

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 174
    :goto_0
    iput v1, p0, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->mTasksSinceHousekeeping:I

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->mManager:Lcom/unity/androidnotifications/UnityNotificationManager;

    invoke-virtual {v0, p1}, Lcom/unity/androidnotifications/UnityNotificationManager;->performNotificationHousekeeping(Ljava/util/Set;)V

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->mManager:Lcom/unity/androidnotifications/UnityNotificationManager;

    invoke-virtual {v0, p1}, Lcom/unity/androidnotifications/UnityNotificationManager;->saveScheduledNotificationIDs(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public enqueueCancelAllNotifications()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->mTasks:Ljava/util/concurrent/LinkedTransferQueue;

    new-instance v1, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$CancelAllNotificationsTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$CancelAllNotificationsTask;-><init>(Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enqueueCancelNotification(I)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->mTasks:Ljava/util/concurrent/LinkedTransferQueue;

    new-instance v1, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$CancelNotificationTask;

    invoke-direct {v1, p1}, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$CancelNotificationTask;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enqueueNotification(ILandroid/app/Notification$Builder;ZZ)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->mTasks:Ljava/util/concurrent/LinkedTransferQueue;

    new-instance v1, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$ScheduleNotificationTask;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$ScheduleNotificationTask;-><init>(ILandroid/app/Notification$Builder;ZZ)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 147
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->mTasks:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedTransferQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$Task;

    .line 148
    iget-object v3, p0, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->mManager:Lcom/unity/androidnotifications/UnityNotificationManager;

    iget-object v4, p0, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->mScheduledNotifications:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v3, v2, v4}, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->executeTask(Lcom/unity/androidnotifications/UnityNotificationManager;Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$Task;Ljava/util/concurrent/ConcurrentHashMap;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 149
    instance-of v2, v2, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$HousekeepingTask;

    if-nez v2, :cond_1

    .line 150
    iget v2, p0, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->mTasksSinceHousekeeping:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->mTasksSinceHousekeeping:I

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->mTasks:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedTransferQueue;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 153
    :try_start_1
    invoke-direct {p0}, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->enqueueHousekeeping()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    .line 156
    :catch_1
    iget-object v2, p0, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;->mTasks:Ljava/util/concurrent/LinkedTransferQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedTransferQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void
.end method
