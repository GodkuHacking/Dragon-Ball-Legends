.class Lcom/growthbeat/message/view/SwipeMessageFragment$1;
.super Ljava/lang/Object;
.source "SwipeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthbeat/message/view/SwipeMessageFragment;->addCloseButton(Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthbeat/message/view/SwipeMessageFragment;

.field final synthetic val$closeButton:Lcom/growthbeat/message/model/CloseButton;


# direct methods
.method constructor <init>(Lcom/growthbeat/message/view/SwipeMessageFragment;Lcom/growthbeat/message/model/CloseButton;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$1;->this$0:Lcom/growthbeat/message/view/SwipeMessageFragment;

    iput-object p2, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$1;->val$closeButton:Lcom/growthbeat/message/model/CloseButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 172
    invoke-static {}, Lcom/growthbeat/message/GrowthMessage;->getInstance()Lcom/growthbeat/message/GrowthMessage;

    move-result-object p1

    iget-object v0, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$1;->val$closeButton:Lcom/growthbeat/message/model/CloseButton;

    iget-object v1, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$1;->this$0:Lcom/growthbeat/message/view/SwipeMessageFragment;

    invoke-static {v1}, Lcom/growthbeat/message/view/SwipeMessageFragment;->access$000(Lcom/growthbeat/message/view/SwipeMessageFragment;)Lcom/growthbeat/message/model/SwipeMessage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/growthbeat/message/GrowthMessage;->selectButton(Lcom/growthbeat/message/model/Button;Lcom/growthbeat/message/model/Message;)V

    .line 173
    iget-object p1, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$1;->this$0:Lcom/growthbeat/message/view/SwipeMessageFragment;

    invoke-virtual {p1}, Lcom/growthbeat/message/view/SwipeMessageFragment;->finishActivity()V

    return-void
.end method
