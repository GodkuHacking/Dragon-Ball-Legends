.class Lcom/growthpush/view/AlertActivity$1;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthpush/view/AlertActivity;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthpush/view/AlertActivity;

.field final synthetic val$fragment:Lcom/growthpush/view/AlertFragment;


# direct methods
.method constructor <init>(Lcom/growthpush/view/AlertActivity;Lcom/growthpush/view/AlertFragment;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/growthpush/view/AlertActivity$1;->this$0:Lcom/growthpush/view/AlertActivity;

    iput-object p2, p0, Lcom/growthpush/view/AlertActivity$1;->val$fragment:Lcom/growthpush/view/AlertFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/growthpush/view/AlertActivity$1;->val$fragment:Lcom/growthpush/view/AlertFragment;

    iget-object v1, p0, Lcom/growthpush/view/AlertActivity$1;->this$0:Lcom/growthpush/view/AlertActivity;

    invoke-virtual {v1}, Lcom/growthpush/view/AlertActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/growthpush/view/AlertFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
