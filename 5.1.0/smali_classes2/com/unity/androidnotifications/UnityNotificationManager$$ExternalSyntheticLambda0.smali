.class public final synthetic Lcom/unity/androidnotifications/UnityNotificationManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/unity/androidnotifications/UnityNotificationManager;

.field public final synthetic f$1:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/unity/androidnotifications/UnityNotificationManager;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity/androidnotifications/UnityNotificationManager$$ExternalSyntheticLambda0;->f$0:Lcom/unity/androidnotifications/UnityNotificationManager;

    iput-object p2, p0, Lcom/unity/androidnotifications/UnityNotificationManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/unity/androidnotifications/UnityNotificationManager$$ExternalSyntheticLambda0;->f$0:Lcom/unity/androidnotifications/UnityNotificationManager;

    iget-object v1, p0, Lcom/unity/androidnotifications/UnityNotificationManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/unity/androidnotifications/UnityNotificationManager;->lambda$showNotification$0$com-unity-androidnotifications-UnityNotificationManager(Ljava/lang/Integer;)V

    return-void
.end method
