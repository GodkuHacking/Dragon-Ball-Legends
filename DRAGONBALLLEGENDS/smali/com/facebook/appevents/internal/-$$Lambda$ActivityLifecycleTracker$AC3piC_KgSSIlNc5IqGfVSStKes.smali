.class public final synthetic Lcom/facebook/appevents/internal/-$$Lambda$ActivityLifecycleTracker$AC3piC_KgSSIlNc5IqGfVSStKes;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/facebook/appevents/internal/-$$Lambda$ActivityLifecycleTracker$AC3piC_KgSSIlNc5IqGfVSStKes;->f$0:J

    iput-object p3, p0, Lcom/facebook/appevents/internal/-$$Lambda$ActivityLifecycleTracker$AC3piC_KgSSIlNc5IqGfVSStKes;->f$1:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/appevents/internal/-$$Lambda$ActivityLifecycleTracker$AC3piC_KgSSIlNc5IqGfVSStKes;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-wide v0, p0, Lcom/facebook/appevents/internal/-$$Lambda$ActivityLifecycleTracker$AC3piC_KgSSIlNc5IqGfVSStKes;->f$0:J

    iget-object v2, p0, Lcom/facebook/appevents/internal/-$$Lambda$ActivityLifecycleTracker$AC3piC_KgSSIlNc5IqGfVSStKes;->f$1:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/appevents/internal/-$$Lambda$ActivityLifecycleTracker$AC3piC_KgSSIlNc5IqGfVSStKes;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->lambda$AC3piC_KgSSIlNc5IqGfVSStKes(JLjava/lang/String;Landroid/content/Context;)V

    return-void
.end method
