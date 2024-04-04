.class public Lcom/growthbeat/message/view/TouchableImageView;
.super Landroid/widget/ImageView;
.source "TouchableImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance p1, Lcom/growthbeat/message/view/TouchableImageView$1;

    invoke-direct {p1, p0}, Lcom/growthbeat/message/view/TouchableImageView$1;-><init>(Lcom/growthbeat/message/view/TouchableImageView;)V

    invoke-virtual {p0, p1}, Lcom/growthbeat/message/view/TouchableImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
