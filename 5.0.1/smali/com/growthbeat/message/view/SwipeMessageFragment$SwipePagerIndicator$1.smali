.class Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator$1;
.super Ljava/lang/Object;
.source "SwipeMessageFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;


# direct methods
.method constructor <init>(Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator$1;->this$1:Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator$1;->this$1:Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;

    invoke-static {v0, p1}, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;->access$100(Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;I)V

    .line 335
    iget-object p1, p0, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator$1;->this$1:Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;

    invoke-virtual {p1}, Lcom/growthbeat/message/view/SwipeMessageFragment$SwipePagerIndicator;->invalidate()V

    return-void
.end method
