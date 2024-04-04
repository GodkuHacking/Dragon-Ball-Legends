.class public Ljp/co/dimps/trad/common/TRADRuntimePermissionController;
.super Ljava/lang/Object;
.source "TRADRuntimePermissionController.java"


# static fields
.field private static final IS_NO:I = 0x1

.field private static final IS_NOT_DIALOG:I = 0x2

.field private static final IS_OK:I = 0x0

.field public static final REQUEST_CODE_PERMISSION_MULTI:I = 0x65

.field private static mGameObjectName:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static SendMessage(I)V
    .locals 3

    .line 262
    sget-object v0, Ljp/co/dimps/trad/common/TRADRuntimePermissionController;->mGameObjectName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "OnRequestPermissionsResult"

    invoke-static {v0, v1, p0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static ShowPermissionDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 51
    sput-object p1, Ljp/co/dimps/trad/common/TRADRuntimePermissionController;->mGameObjectName:Ljava/lang/String;

    .line 54
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x17

    if-ge p1, v1, :cond_0

    .line 56
    invoke-static {v0}, Ljp/co/dimps/trad/common/TRADRuntimePermissionController;->SendMessage(I)V

    return-void

    .line 61
    :cond_0
    sget-object p1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    .line 62
    invoke-static {v0}, Ljp/co/dimps/trad/common/TRADRuntimePermissionController;->SendMessage(I)V

    return-void

    .line 67
    :cond_1
    sget-object p1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    const/16 v1, 0x64

    const/4 v2, 0x1

    if-nez p1, :cond_3

    .line 70
    sget-object p1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v3, "Permission"

    invoke-virtual {p1, v3, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 71
    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    .line 75
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 76
    invoke-interface {p1, p0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 81
    sget-object p1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v0

    invoke-virtual {p1, v2, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :cond_2
    const/4 p0, 0x2

    .line 87
    invoke-static {p0}, Ljp/co/dimps/trad/common/TRADRuntimePermissionController;->SendMessage(I)V

    return-void

    .line 93
    :cond_3
    sget-object p1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v0

    invoke-virtual {p1, v2, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public static ShowPermissionDialogFor11OrGreater(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 183
    sput-object p1, Ljp/co/dimps/trad/common/TRADRuntimePermissionController;->mGameObjectName:Ljava/lang/String;

    .line 188
    sget-object p1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 189
    invoke-static {v0}, Ljp/co/dimps/trad/common/TRADRuntimePermissionController;->SendMessage(I)V

    return-void

    .line 195
    :cond_0
    sget-object p1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p0, v1, v0

    const/16 p0, 0x64

    invoke-virtual {p1, v1, p0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public static ShowPermissionsDialog([Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 105
    sput-object p1, Ljp/co/dimps/trad/common/TRADRuntimePermissionController;->mGameObjectName:Ljava/lang/String;

    .line 108
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x17

    if-ge p1, v1, :cond_0

    .line 110
    invoke-static {v0}, Ljp/co/dimps/trad/common/TRADRuntimePermissionController;->SendMessage(I)V

    return-void

    .line 114
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "ShowPermissionsDialog"

    const-string v2, "1"

    .line 117
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 120
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 122
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    aget-object v3, p0, v2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 128
    invoke-static {v0}, Ljp/co/dimps/trad/common/TRADRuntimePermissionController;->SendMessage(I)V

    return-void

    :cond_3
    const-string p0, "2"

    .line 132
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v0

    .line 135
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge p0, v2, :cond_6

    .line 137
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 143
    :cond_4
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v4, "Permission"

    invoke-virtual {v2, v4, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 144
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_5

    .line 148
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 149
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {v2, p0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    move v3, v0

    :cond_6
    const-string p0, "3"

    .line 157
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_7

    const/4 p0, 0x2

    .line 161
    invoke-static {p0}, Ljp/co/dimps/trad/common/TRADRuntimePermissionController;->SendMessage(I)V

    return-void

    :cond_7
    const-string p0, "4"

    .line 165
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-object p0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-array v0, v0, [Ljava/lang/String;

    .line 170
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/16 v0, 0x65

    .line 169
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    const-string p0, "5"

    .line 173
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    .line 211
    invoke-static {v1}, Ljp/co/dimps/trad/common/TRADRuntimePermissionController;->SendMessage(I)V

    return-void

    .line 215
    :cond_0
    array-length v0, p2

    const/4 v2, 0x1

    if-gtz v0, :cond_1

    .line 216
    invoke-static {v2}, Ljp/co/dimps/trad/common/TRADRuntimePermissionController;->SendMessage(I)V

    return-void

    :cond_1
    const/16 v0, 0x64

    const/4 v3, 0x2

    if-ne p0, v0, :cond_4

    .line 222
    aget p0, p2, v1

    if-nez p0, :cond_2

    .line 223
    invoke-static {v1}, Ljp/co/dimps/trad/common/TRADRuntimePermissionController;->SendMessage(I)V

    goto :goto_1

    .line 227
    :cond_2
    sget-object p0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 228
    invoke-static {v3}, Ljp/co/dimps/trad/common/TRADRuntimePermissionController;->SendMessage(I)V

    goto :goto_1

    .line 230
    :cond_3
    invoke-static {v2}, Ljp/co/dimps/trad/common/TRADRuntimePermissionController;->SendMessage(I)V

    goto :goto_1

    :cond_4
    const/16 v0, 0x65

    if-ne p0, v0, :cond_8

    move p0, v1

    .line 236
    :goto_0
    array-length v0, p2

    if-ge v1, v0, :cond_6

    .line 238
    aget v0, p2, v1

    if-eqz v0, :cond_5

    .line 240
    sget-object p0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    move p0, v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    move v2, p0

    .line 252
    :cond_7
    invoke-static {v2}, Ljp/co/dimps/trad/common/TRADRuntimePermissionController;->SendMessage(I)V

    :cond_8
    :goto_1
    return-void
.end method
