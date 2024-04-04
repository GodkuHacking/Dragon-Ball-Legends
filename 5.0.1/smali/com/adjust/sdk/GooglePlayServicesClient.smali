.class public Lcom/adjust/sdk/GooglePlayServicesClient;
.super Ljava/lang/Object;
.source "GooglePlayServicesClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adjust/sdk/GooglePlayServicesClient$GooglePlayServicesInterface;,
        Lcom/adjust/sdk/GooglePlayServicesClient$GooglePlayServicesConnection;,
        Lcom/adjust/sdk/GooglePlayServicesClient$GooglePlayServicesInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGooglePlayServicesInfo(Landroid/content/Context;J)Lcom/adjust/sdk/GooglePlayServicesClient$GooglePlayServicesInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 43
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    new-instance v0, Lcom/adjust/sdk/GooglePlayServicesClient$GooglePlayServicesConnection;

    invoke-direct {v0, p1, p2}, Lcom/adjust/sdk/GooglePlayServicesClient$GooglePlayServicesConnection;-><init>(J)V

    .line 50
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.google.android.gms"

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    .line 52
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    :try_start_1
    new-instance p1, Lcom/adjust/sdk/GooglePlayServicesClient$GooglePlayServicesInterface;

    invoke-virtual {v0}, Lcom/adjust/sdk/GooglePlayServicesClient$GooglePlayServicesConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/adjust/sdk/GooglePlayServicesClient$GooglePlayServicesInterface;-><init>(Landroid/os/IBinder;)V

    .line 55
    new-instance v1, Lcom/adjust/sdk/GooglePlayServicesClient$GooglePlayServicesInfo;

    invoke-virtual {p1}, Lcom/adjust/sdk/GooglePlayServicesClient$GooglePlayServicesInterface;->getGpsAdid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2}, Lcom/adjust/sdk/GooglePlayServicesClient$GooglePlayServicesInterface;->getTrackingEnabled(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/adjust/sdk/GooglePlayServicesClient$GooglePlayServicesInfo;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 61
    throw p1

    .line 63
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Google Play connection failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    .line 46
    throw p0

    .line 39
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Google Play Services info can\'t be accessed from the main thread"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
