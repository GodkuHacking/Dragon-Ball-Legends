.class Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$CancelNotificationTask;
.super Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$Task;
.source "UnityNotificationBackgroundThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CancelNotificationTask"
.end annotation


# instance fields
.field private notificationId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, v0}, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$Task;-><init>(Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$1;)V

    .line 60
    iput p1, p0, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$CancelNotificationTask;->notificationId:I

    return-void
.end method


# virtual methods
.method public run(Lcom/unity/androidnotifications/UnityNotificationManager;Ljava/util/concurrent/ConcurrentHashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity/androidnotifications/UnityNotificationManager;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification$Builder;",
            ">;)Z"
        }
    .end annotation

    .line 65
    iget v0, p0, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$CancelNotificationTask;->notificationId:I

    invoke-virtual {p1, v0}, Lcom/unity/androidnotifications/UnityNotificationManager;->cancelPendingNotificationIntent(I)V

    .line 66
    iget v0, p0, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$CancelNotificationTask;->notificationId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 67
    iget p2, p0, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$CancelNotificationTask;->notificationId:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/unity/androidnotifications/UnityNotificationManager;->deleteExpiredNotificationIntent(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
