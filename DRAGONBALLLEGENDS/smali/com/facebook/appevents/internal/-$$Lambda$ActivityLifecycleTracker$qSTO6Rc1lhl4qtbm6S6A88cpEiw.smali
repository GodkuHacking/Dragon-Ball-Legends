.class public final synthetic Lcom/facebook/appevents/internal/-$$Lambda$ActivityLifecycleTracker$qSTO6Rc1lhl4qtbm6S6A88cpEiw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/facebook/appevents/internal/-$$Lambda$ActivityLifecycleTracker$qSTO6Rc1lhl4qtbm6S6A88cpEiw;->f$0:J

    iput-object p3, p0, Lcom/facebook/appevents/internal/-$$Lambda$ActivityLifecycleTracker$qSTO6Rc1lhl4qtbm6S6A88cpEiw;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-wide v0, p0, Lcom/facebook/appevents/internal/-$$Lambda$ActivityLifecycleTracker$qSTO6Rc1lhl4qtbm6S6A88cpEiw;->f$0:J

    iget-object v2, p0, Lcom/facebook/appevents/internal/-$$Lambda$ActivityLifecycleTracker$qSTO6Rc1lhl4qtbm6S6A88cpEiw;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->lambda$qSTO6Rc1lhl4qtbm6S6A88cpEiw(JLjava/lang/String;)V

    return-void
.end method
