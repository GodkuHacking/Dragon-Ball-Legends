.class Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SwipeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/growthbeat/message/view/SwipeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwipePagerAdapter"
.end annotation


# instance fields
.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/growthbeat/message/view/SwipeMessageFragment;


# direct methods
.method public constructor <init>(Lcom/growthbeat/message/view/SwipeMessageFragment;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerAdapter;->this$0:Lcom/growthbeat/message/view/SwipeMessageFragment;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 280
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerAdapter;->itemList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Landroid/widget/FrameLayout;)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 296
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerAdapter;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 290
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 306
    check-cast p2, Landroid/widget/FrameLayout;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
