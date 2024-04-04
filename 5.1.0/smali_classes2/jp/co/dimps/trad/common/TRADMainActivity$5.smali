.class Ljp/co/dimps/trad/common/TRADMainActivity$5;
.super Ljava/lang/Object;
.source "TRADMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/dimps/trad/common/TRADMainActivity;->ShowAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "1"

    .line 180
    invoke-static {p1}, Ljp/co/dimps/trad/common/TRADMainActivity;->-$$Nest$sfputDialogResult(Ljava/lang/String;)V

    return-void
.end method
