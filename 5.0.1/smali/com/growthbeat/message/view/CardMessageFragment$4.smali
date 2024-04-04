.class Lcom/growthbeat/message/view/CardMessageFragment$4;
.super Ljava/lang/Object;
.source "CardMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthbeat/message/view/CardMessageFragment;->addCloseButton(Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthbeat/message/view/CardMessageFragment;

.field final synthetic val$closeButton:Lcom/growthbeat/message/model/CloseButton;


# direct methods
.method constructor <init>(Lcom/growthbeat/message/view/CardMessageFragment;Lcom/growthbeat/message/model/CloseButton;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/growthbeat/message/view/CardMessageFragment$4;->this$0:Lcom/growthbeat/message/view/CardMessageFragment;

    iput-object p2, p0, Lcom/growthbeat/message/view/CardMessageFragment$4;->val$closeButton:Lcom/growthbeat/message/model/CloseButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 221
    invoke-static {}, Lcom/growthbeat/message/GrowthMessage;->getInstance()Lcom/growthbeat/message/GrowthMessage;

    move-result-object p1

    iget-object v0, p0, Lcom/growthbeat/message/view/CardMessageFragment$4;->val$closeButton:Lcom/growthbeat/message/model/CloseButton;

    iget-object v1, p0, Lcom/growthbeat/message/view/CardMessageFragment$4;->this$0:Lcom/growthbeat/message/view/CardMessageFragment;

    invoke-static {v1}, Lcom/growthbeat/message/view/CardMessageFragment;->access$000(Lcom/growthbeat/message/view/CardMessageFragment;)Lcom/growthbeat/message/model/CardMessage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/growthbeat/message/GrowthMessage;->selectButton(Lcom/growthbeat/message/model/Button;Lcom/growthbeat/message/model/Message;)V

    .line 222
    iget-object p1, p0, Lcom/growthbeat/message/view/CardMessageFragment$4;->this$0:Lcom/growthbeat/message/view/CardMessageFragment;

    invoke-virtual {p1}, Lcom/growthbeat/message/view/CardMessageFragment;->finishActivity()V

    return-void
.end method
