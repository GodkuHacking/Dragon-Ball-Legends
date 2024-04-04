.class public Ljp/co/dimps/trad/common/TRADNotificationChannelManager;
.super Ljava/lang/Object;
.source "TRADNotificationChannelManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CreateChannel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 147
    invoke-static {p0, p1, v0, v1, v0}, Ljp/co/dimps/trad/common/TRADNotificationChannelManager;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjp/co/dimps/trad/common/ITRADNotificationChannelSetting;)V

    return-void
.end method

.method public static CreateChannel(Ljava/lang/String;)V
    .locals 1

    .line 142
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Ljp/co/dimps/trad/common/TRADNotificationChannelManager;->CreateChannel(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static GetResouceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 58
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Initialize(Landroid/content/Context;)V
    .locals 6

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 68
    :cond_0
    new-instance v0, Ljp/co/dimps/trad/common/TRADNotificationChannelSetting_Gacha;

    invoke-direct {v0}, Ljp/co/dimps/trad/common/TRADNotificationChannelSetting_Gacha;-><init>()V

    const-string v1, "TRADChannel_Event"

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 69
    invoke-static {p0, v1, v2, v3, v0}, Ljp/co/dimps/trad/common/TRADNotificationChannelManager;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjp/co/dimps/trad/common/ITRADNotificationChannelSetting;)V

    const-string v0, "TRADChannel_Energy"

    .line 71
    invoke-static {p0, v0, v2, v3, v2}, Ljp/co/dimps/trad/common/TRADNotificationChannelManager;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjp/co/dimps/trad/common/ITRADNotificationChannelSetting;)V

    const-string v0, "TRADChannel_Training"

    .line 72
    invoke-static {p0, v0, v2, v3, v2}, Ljp/co/dimps/trad/common/TRADNotificationChannelManager;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjp/co/dimps/trad/common/ITRADNotificationChannelSetting;)V

    const-string v0, "TRADChannel_Adventure"

    .line 73
    invoke-static {p0, v0, v2, v3, v2}, Ljp/co/dimps/trad/common/TRADNotificationChannelManager;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjp/co/dimps/trad/common/ITRADNotificationChannelSetting;)V

    const-string v0, "TRADChannel_RoboReward"

    .line 74
    invoke-static {p0, v0, v2, v3, v2}, Ljp/co/dimps/trad/common/TRADNotificationChannelManager;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjp/co/dimps/trad/common/ITRADNotificationChannelSetting;)V

    const-string v0, "TRADChannel_TactEnergy"

    .line 75
    invoke-static {p0, v0, v2, v3, v2}, Ljp/co/dimps/trad/common/TRADNotificationChannelManager;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjp/co/dimps/trad/common/ITRADNotificationChannelSetting;)V

    const-string v0, "TRADChannel_MissionPlan"

    .line 76
    invoke-static {p0, v0, v2, v3, v2}, Ljp/co/dimps/trad/common/TRADNotificationChannelManager;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjp/co/dimps/trad/common/ITRADNotificationChannelSetting;)V

    const-string v0, "TRADChannel_TierChange"

    .line 77
    invoke-static {p0, v0, v2, v3, v2}, Ljp/co/dimps/trad/common/TRADNotificationChannelManager;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjp/co/dimps/trad/common/ITRADNotificationChannelSetting;)V

    const-string v0, "TRADChannel_DailyStamp"

    .line 78
    invoke-static {p0, v0, v2, v3, v2}, Ljp/co/dimps/trad/common/TRADNotificationChannelManager;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjp/co/dimps/trad/common/ITRADNotificationChannelSetting;)V

    const-string v0, "TRADChannel_Other"

    .line 79
    invoke-static {p0, v0, v2, v3, v2}, Ljp/co/dimps/trad/common/TRADNotificationChannelManager;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjp/co/dimps/trad/common/ITRADNotificationChannelSetting;)V

    const-string v0, "notification"

    .line 82
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x2

    const-string v2, "TRADChannel_GvgBattle"

    const-string v3, "TRADChannel_GvgEntry"

    .line 83
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 84
    aget-object v4, v2, v3

    .line 86
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 89
    invoke-static {p0, v4}, Ljp/co/dimps/trad/common/TRADNotificationChannelManager;->CreateChannel(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static convertUrlFromDrawableResId(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjp/co/dimps/trad/common/ITRADNotificationChannelSetting;)V
    .locals 4

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "notification"

    .line 111
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 113
    new-instance v1, Landroid/app/NotificationChannel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_title"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {p0, v2}, Ljp/co/dimps/trad/common/TRADNotificationChannelManager;->GetResouceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p1, 0x0

    .line 124
    invoke-virtual {v1, p1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    if-eqz p2, :cond_1

    .line 127
    invoke-virtual {v1, p2}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 132
    invoke-interface {p4, p0, v1}, Ljp/co/dimps/trad/common/ITRADNotificationChannelSetting;->call(Landroid/content/Context;Landroid/app/NotificationChannel;)V

    .line 136
    :cond_2
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public static createGroup(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "notification"

    .line 100
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 101
    new-instance v1, Landroid/app/NotificationChannelGroup;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_title"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Ljp/co/dimps/trad/common/TRADNotificationChannelManager;->GetResouceString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    return-void
.end method
