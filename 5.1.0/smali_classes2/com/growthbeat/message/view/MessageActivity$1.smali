.class Lcom/growthbeat/message/view/MessageActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthbeat/message/view/MessageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthbeat/message/view/MessageActivity;


# direct methods
.method constructor <init>(Lcom/growthbeat/message/view/MessageActivity;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/growthbeat/message/view/MessageActivity$1;->this$0:Lcom/growthbeat/message/view/MessageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/growthbeat/message/view/MessageActivity$1;->this$0:Lcom/growthbeat/message/view/MessageActivity;

    invoke-static {p1}, Lcom/growthbeat/message/view/MessageActivity;->access$000(Lcom/growthbeat/message/view/MessageActivity;)V

    return-void
.end method
