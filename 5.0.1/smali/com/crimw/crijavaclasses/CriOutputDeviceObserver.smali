.class public Lcom/crimw/crijavaclasses/CriOutputDeviceObserver;
.super Ljava/lang/Object;
.source "CriOutputDeviceObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;,
        Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceType;
    }
.end annotation


# static fields
.field private static receiver:Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;-><init>(Lcom/crimw/crijavaclasses/CriOutputDeviceObserver;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver;->receiver:Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;

    return-void
.end method


# virtual methods
.method public CheckOutputDeviceType(Landroid/app/Activity;)I
    .locals 1

    .line 116
    sget-object v0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver;->receiver:Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;

    invoke-virtual {v0, p1}, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;->getOutputDeviceType(Landroid/app/Activity;)I

    move-result p1

    return p1
.end method

.method public IsDeviceConnected()Z
    .locals 1

    .line 112
    sget-object v0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver;->receiver:Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;

    invoke-virtual {v0}, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;->isConnected()Z

    move-result v0

    return v0
.end method

.method public Start(Landroid/app/Activity;)V
    .locals 2

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    sget-object v1, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver;->receiver:Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public Stop(Landroid/app/Activity;)V
    .locals 1

    .line 108
    sget-object v0, Lcom/crimw/crijavaclasses/CriOutputDeviceObserver;->receiver:Lcom/crimw/crijavaclasses/CriOutputDeviceObserver$OutputDeviceStateReceiver;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
