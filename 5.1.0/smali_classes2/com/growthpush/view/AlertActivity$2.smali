.class Lcom/growthpush/view/AlertActivity$2;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthpush/view/AlertActivity;->managePower()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthpush/view/AlertActivity;

.field final synthetic val$wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/growthpush/view/AlertActivity;Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/growthpush/view/AlertActivity$2;->this$0:Lcom/growthpush/view/AlertActivity;

    iput-object p2, p0, Lcom/growthpush/view/AlertActivity$2;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/growthpush/view/AlertActivity$2;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method
