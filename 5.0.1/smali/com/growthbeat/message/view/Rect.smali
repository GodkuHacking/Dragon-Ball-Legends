.class public Lcom/growthbeat/message/view/Rect;
.super Ljava/lang/Object;
.source "Rect.java"


# instance fields
.field private height:I

.field private left:I

.field private top:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/growthbeat/message/view/Rect;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Lcom/growthbeat/message/view/Rect;->setLeft(I)V

    .line 17
    invoke-virtual {p0, p2}, Lcom/growthbeat/message/view/Rect;->setTop(I)V

    .line 18
    invoke-virtual {p0, p3}, Lcom/growthbeat/message/view/Rect;->setWidth(I)V

    .line 19
    invoke-virtual {p0, p4}, Lcom/growthbeat/message/view/Rect;->setHeight(I)V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/growthbeat/message/view/Rect;->height:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/growthbeat/message/view/Rect;->left:I

    return v0
.end method

.method public getTop()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/growthbeat/message/view/Rect;->top:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/growthbeat/message/view/Rect;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/growthbeat/message/view/Rect;->height:I

    return-void
.end method

.method public setLeft(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/growthbeat/message/view/Rect;->left:I

    return-void
.end method

.method public setTop(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/growthbeat/message/view/Rect;->top:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/growthbeat/message/view/Rect;->width:I

    return-void
.end method
