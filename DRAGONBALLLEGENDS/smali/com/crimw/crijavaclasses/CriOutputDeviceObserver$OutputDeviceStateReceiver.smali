.class Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CriOutputDeviceObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crimw/crijavaclasses/CriOutputDeviceObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutputDeviceStateReceiver"
.end annotation


# instance fields
.field private device_type:Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;

.field private gameObjectName:Ljava/lang/String;

.field private is_connected:Z

.field private methodName:Ljava/lang/String;

.field final synthetic this$0:Lcom/crimw/crijavaclasses/CriOutputDeviceObserver;


# direct methods
.method public constructor <init>(Lcom/crimw/crijavaclasses/CriOutputDeviceObserver;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;->this$0:Lcom/crimw/crijavaclasses/CriOutputDeviceObserver;

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;->is_connected:Z

    .line 30
    sget-object p1, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;->BuiltinSpeaker:Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;

    iput-object p1, p0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;->device_type:Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;->gameObjectName:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;->methodName:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;->gameObjectName:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;->methodName:Ljava/lang/String;

    .line 38
    invoke-direct {p0, p2}, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;->checkOutputDeviceType(Landroid/app/Activity;)V

    return-void
.end method

.method private checkOutputDeviceType(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "audio"

    .line 76
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 77
    invoke-virtual {p1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 78
    iput-boolean v1, p0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;->is_connected:Z

    .line 79
    sget-object p1, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;->WiredDevice:Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;

    iput-object p1, p0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;->device_type:Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;

    goto :goto_1

    .line 80
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;->is_connected:Z

    .line 86
    sget-object p1, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;->BuiltinSpeaker:Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;

    iput-object p1, p0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;->device_type:Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;

    goto :goto_1

    .line 82
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;->is_connected:Z

    .line 83
    sget-object p1, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;->WirelessDevice:Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;

    iput-object p1, p0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;->device_type:Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;

    :goto_1
    return-void
.end method


# virtual methods
.method public getOutputDeviceType(Landroid/app/Activity;)I
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;->checkOutputDeviceType(Landroid/app/Activity;)V

    .line 72
    iget-object p1, p0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;->device_type:Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;

    invoke-virtual {p1}, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;->getInt()I

    move-result p1

    return p1
.end method

.method public isConnected()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;->is_connected:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;->gameObjectName:Ljava/lang/String;

    iget-object p2, p0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;->methodName:Ljava/lang/String;

    const-string v0, "b"

    invoke-static {p1, p2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 46
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;->gameObjectName:Ljava/lang/String;

    iget-object p2, p0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;->methodName:Ljava/lang/String;

    const-string v0, "a"

    invoke-static {p1, p2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setConnectedState(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;->is_connected:Z

    return-void
.end method
