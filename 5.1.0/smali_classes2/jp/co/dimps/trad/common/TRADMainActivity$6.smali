.class Ljp/co/dimps/trad/common/TRADMainActivity$6;
.super Ljava/lang/Object;
.source "TRADMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/dimps/trad/common/TRADMainActivity;->ShowAlertDialogWithYesNo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$gameObjectName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 242
    iput-object p1, p0, Ljp/co/dimps/trad/common/TRADMainActivity$6;->val$gameObjectName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 245
    iget-object p1, p0, Ljp/co/dimps/trad/common/TRADMainActivity$6;->val$gameObjectName:Ljava/lang/String;

    invoke-static {}, Ljp/co/dimps/trad/common/TRADMainActivity;->-$$Nest$sfgetDialogResult()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnAllertAction"

    invoke-static {p1, v1, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method