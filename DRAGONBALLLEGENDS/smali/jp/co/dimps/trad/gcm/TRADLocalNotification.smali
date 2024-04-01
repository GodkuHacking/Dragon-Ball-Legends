.class public Ljp/co/dimps/trad/gcm/TRADLocalNotification;
.super Ljava/lang/Object;
.source "TRADLocalNotification.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ClearAllLocalNotification()V
    .locals 4

    .line 136
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 137
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    .line 138
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 140
    new-instance v2, Landroid/content/Intent;

    const-class v3, Ljp/co/dimps/trad/gcm/TRADNotificationReceiver;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    .line 141
    invoke-static {v0, v3, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 145
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmManager update was not canceled. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRADLocalNotification"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static ClearLocalNotification(I)V
    .locals 3

    .line 122
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 123
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 124
    new-instance v1, Landroid/content/Intent;

    const-class v2, Ljp/co/dimps/trad/gcm/TRADNotificationReceiver;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x2000000

    .line 126
    invoke-static {v0, p0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const-string v1, "alarm"

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 128
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 129
    invoke-virtual {p0}, Landroid/app/PendingIntent;->cancel()V

    return-void
.end method

.method public static SetLocalNotification(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v3, v0, p0

    .line 40
    sget-object p0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {p0}, Ljp/co/dimps/trad/gcm/TRADLocalNotificationFunction;->LocadCacheData(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 41
    new-instance p1, Ljp/co/dimps/trad/gcm/TRADLocalNotificationData;

    invoke-direct {p1}, Ljp/co/dimps/trad/gcm/TRADLocalNotificationData;-><init>()V

    .line 42
    iput-wide v3, p1, Ljp/co/dimps/trad/gcm/TRADLocalNotificationData;->unix_time:J

    .line 43
    iput p2, p1, Ljp/co/dimps/trad/gcm/TRADLocalNotificationData;->primary_key:I

    .line 44
    iput-object p4, p1, Ljp/co/dimps/trad/gcm/TRADLocalNotificationData;->content_text:Ljava/lang/String;

    .line 45
    iput-object p3, p1, Ljp/co/dimps/trad/gcm/TRADLocalNotificationData;->content_title:Ljava/lang/String;

    .line 46
    iput-object p5, p1, Ljp/co/dimps/trad/gcm/TRADLocalNotificationData;->channel_name:Ljava/lang/String;

    .line 47
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object p1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {p1, p0}, Ljp/co/dimps/trad/gcm/TRADLocalNotificationFunction;->SaveCacheData(Landroid/content/Context;Ljava/util/List;)V

    .line 50
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v2 .. v8}, Ljp/co/dimps/trad/gcm/TRADLocalNotification;->SetLocalNotification(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static SetLocalNotification(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljp/co/dimps/trad/gcm/TRADNotificationReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-lez v3, :cond_0

    move-wide p1, v1

    :cond_0
    const/4 v1, 0x1

    const-string v2, "TradLocalPush"

    .line 74
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "PRIMARY_KEY"

    .line 75
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "CONTENT_TITLE"

    .line 76
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "CONTENT_TEXT"

    .line 77
    invoke-virtual {v0, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "CHANNEL_NAME"

    .line 78
    invoke-virtual {v0, p4, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p4, 0x2000000

    .line 83
    invoke-static {p0, p3, v0, p4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    const-string p4, "alarm"

    .line 84
    invoke-virtual {p0, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 89
    :try_start_0
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p6, 0x1f

    const/4 v0, 0x0

    if-lt p4, p6, :cond_2

    .line 91
    invoke-virtual {p0}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 94
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 102
    :cond_2
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p6, 0x17

    if-lt p4, p6, :cond_3

    .line 103
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 104
    :cond_3
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p6, 0x13

    if-lt p4, p6, :cond_4

    .line 105
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 107
    :cond_4
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocalNotification"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "content_text : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SetLocalNotification"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
