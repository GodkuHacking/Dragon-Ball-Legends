.class public Ljp/co/dimps/trad/common/TRADMainActivity;
.super Lcom/google/firebase/MessagingUnityPlayerActivity;
.source "TRADMainActivity.java"


# static fields
.field private static DialogResult:Ljava/lang/String; = "0"

.field private static KeyDonwObjectName:Ljava/lang/String; = ""

.field public static final RuntimePermissionRequestCode:I = 0x64


# direct methods
.method static bridge synthetic -$$Nest$sfgetDialogResult()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljp/co/dimps/trad/common/TRADMainActivity;->DialogResult:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputDialogResult(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Ljp/co/dimps/trad/common/TRADMainActivity;->DialogResult:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/google/firebase/MessagingUnityPlayerActivity;-><init>()V

    return-void
.end method

.method public static DisableOverScroll()V
    .locals 2

    .line 120
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Ljp/co/dimps/trad/common/TRADMainActivity$2;

    invoke-direct {v1}, Ljp/co/dimps/trad/common/TRADMainActivity$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static DisableOverScrollRecursive(Landroid/view/View;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 144
    :cond_0
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 145
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 147
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    .line 148
    invoke-virtual {v1, v2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisableOverscroll : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisableAllOverScroll"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 152
    invoke-static {v1}, Ljp/co/dimps/trad/common/TRADMainActivity;->DisableOverScrollRecursive(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static InitBackKey(Ljava/lang/String;)V
    .locals 0

    .line 41
    sput-object p0, Ljp/co/dimps/trad/common/TRADMainActivity;->KeyDonwObjectName:Ljava/lang/String;

    return-void
.end method

.method public static ShowAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 172
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 173
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Ljp/co/dimps/trad/common/TRADMainActivity$5;

    invoke-direct {v0}, Ljp/co/dimps/trad/common/TRADMainActivity$5;-><init>()V

    .line 174
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Ljp/co/dimps/trad/common/TRADMainActivity$4;

    invoke-direct {p1}, Ljp/co/dimps/trad/common/TRADMainActivity$4;-><init>()V

    .line 183
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Ljp/co/dimps/trad/common/TRADMainActivity$3;

    invoke-direct {p1, p2}, Ljp/co/dimps/trad/common/TRADMainActivity$3;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 200
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    const/4 p1, 0x0

    .line 201
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 202
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static ShowAlertDialogWithYesNo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 210
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 211
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Ljp/co/dimps/trad/common/TRADMainActivity$9;

    invoke-direct {v0}, Ljp/co/dimps/trad/common/TRADMainActivity$9;-><init>()V

    .line 212
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Ljp/co/dimps/trad/common/TRADMainActivity$8;

    invoke-direct {p1}, Ljp/co/dimps/trad/common/TRADMainActivity$8;-><init>()V

    .line 221
    invoke-virtual {p0, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Ljp/co/dimps/trad/common/TRADMainActivity$7;

    invoke-direct {p1}, Ljp/co/dimps/trad/common/TRADMainActivity$7;-><init>()V

    .line 230
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Ljp/co/dimps/trad/common/TRADMainActivity$6;

    invoke-direct {p1, p3}, Ljp/co/dimps/trad/common/TRADMainActivity$6;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 248
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    const/4 p1, 0x0

    .line 249
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 250
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static ShowApplicationSetting()V
    .locals 4

    .line 161
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 162
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 164
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static forceKeyboardUp(I)V
    .locals 2

    .line 94
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Ljp/co/dimps/trad/common/TRADMainActivity$1;

    invoke-direct {v1, p0}, Ljp/co/dimps/trad/common/TRADMainActivity$1;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/google/firebase/MessagingUnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 60
    invoke-static {p0}, Ljp/co/dimps/trad/common/TRADNotificationChannelManager;->Initialize(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 72
    sget-object v0, Ljp/co/dimps/trad/common/TRADMainActivity;->KeyDonwObjectName:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    const-string p1, "OnKeyBack"

    .line 74
    invoke-static {v0, p1, v1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 78
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/firebase/MessagingUnityPlayerActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Lcom/google/firebase/MessagingUnityPlayerActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 84
    invoke-static {p1, p2, p3}, Ljp/co/dimps/trad/common/TRADRuntimePermissionController;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method
