.class public final synthetic Lcom/facebook/appevents/internal/-$$Lambda$ActivityLifecycleTracker$3_sU20C6cin3z58vx2KmrQAdBZ8;
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

    iput-wide p1, p0, Lcom/facebook/appevents/internal/-$$Lambda$ActivityLifecycleTracker$3_sU20C6cin3z58vx2KmrQAdBZ8;->f$0:J

    iput-object p3, p0, Lcom/facebook/appevents/internal/-$$Lambda$ActivityLifecycleTracker$3_sU20C6cin3z58vx2KmrQAdBZ8;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-wide v0, p0, Lcom/facebook/appevents/internal/-$$Lambda$ActivityLifecycleTracker$3_sU20C6cin3z58vx2KmrQAdBZ8;->f$0:J

    iget-object v2, p0, Lcom/facebook/appevents/internal/-$$Lambda$ActivityLifecycleTracker$3_sU20C6cin3z58vx2KmrQAdBZ8;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->lambda$3_sU20C6cin3z58vx2KmrQAdBZ8(JLjava/lang/String;)V

    return-void
.end method
