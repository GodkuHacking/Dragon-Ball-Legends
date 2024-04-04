.class abstract Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$Task;
.super Ljava/lang/Object;
.source "UnityNotificationBackgroundThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity/androidnotifications/UnityNotificationBackgroundThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Task"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$1;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/unity/androidnotifications/UnityNotificationBackgroundThread$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract run(Lcom/unity/androidnotifications/UnityNotificationManager;Ljava/util/concurrent/ConcurrentHashMap;)Z
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
.end method
