.class final Ljp/co/dimps/trad/common/TRADMainActivity$4;
.super Ljava/lang/Object;
.source "TRADMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/dimps/trad/common/TRADMainActivity;->ShowAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    const-string p1, "1"

    .line 189
    invoke-static {p1}, Ljp/co/dimps/trad/common/TRADMainActivity;->access$002(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
