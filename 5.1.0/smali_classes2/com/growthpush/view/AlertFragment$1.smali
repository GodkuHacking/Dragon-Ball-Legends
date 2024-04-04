.class Lcom/growthpush/view/AlertFragment$1;
.super Ljava/lang/Object;
.source "AlertFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthpush/view/AlertFragment;->generateAlertDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthpush/view/AlertFragment;


# direct methods
.method constructor <init>(Lcom/growthpush/view/AlertFragment;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/growthpush/view/AlertFragment$1;->this$0:Lcom/growthpush/view/AlertFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 62
    iget-object p2, p0, Lcom/growthpush/view/AlertFragment$1;->this$0:Lcom/growthpush/view/AlertFragment;

    iget-object p2, p2, Lcom/growthpush/view/AlertFragment;->listener:Lcom/growthpush/view/DialogCallback;

    if-eqz p2, :cond_0

    .line 63
    iget-object p2, p0, Lcom/growthpush/view/AlertFragment$1;->this$0:Lcom/growthpush/view/AlertFragment;

    iget-object p2, p2, Lcom/growthpush/view/AlertFragment;->listener:Lcom/growthpush/view/DialogCallback;

    invoke-interface {p2, p1}, Lcom/growthpush/view/DialogCallback;->onClickNegative(Landroid/content/DialogInterface;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
