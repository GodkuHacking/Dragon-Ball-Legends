.class Lcom/growthbeat/message/view/BaseImageMessageFragment$1;
.super Ljava/lang/Object;
.source "BaseImageMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthbeat/message/view/BaseImageMessageFragment;->generateBaseLayout(Lcom/growthbeat/message/model/Background;)Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/growthbeat/message/view/BaseImageMessageFragment;


# direct methods
.method constructor <init>(Lcom/growthbeat/message/view/BaseImageMessageFragment;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/growthbeat/message/view/BaseImageMessageFragment$1;->this$0:Lcom/growthbeat/message/view/BaseImageMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 38
    iget-object p1, p0, Lcom/growthbeat/message/view/BaseImageMessageFragment$1;->this$0:Lcom/growthbeat/message/view/BaseImageMessageFragment;

    invoke-virtual {p1}, Lcom/growthbeat/message/view/BaseImageMessageFragment;->finishActivity()V

    return-void
.end method
