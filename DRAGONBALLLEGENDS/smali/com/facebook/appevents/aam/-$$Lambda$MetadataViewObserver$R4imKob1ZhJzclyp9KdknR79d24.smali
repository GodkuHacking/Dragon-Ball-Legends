.class public final synthetic Lcom/facebook/appevents/aam/-$$Lambda$MetadataViewObserver$R4imKob1ZhJzclyp9KdknR79d24;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Lcom/facebook/appevents/aam/MetadataViewObserver;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/facebook/appevents/aam/MetadataViewObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/aam/-$$Lambda$MetadataViewObserver$R4imKob1ZhJzclyp9KdknR79d24;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/facebook/appevents/aam/-$$Lambda$MetadataViewObserver$R4imKob1ZhJzclyp9KdknR79d24;->f$1:Lcom/facebook/appevents/aam/MetadataViewObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/appevents/aam/-$$Lambda$MetadataViewObserver$R4imKob1ZhJzclyp9KdknR79d24;->f$0:Landroid/view/View;

    iget-object v1, p0, Lcom/facebook/appevents/aam/-$$Lambda$MetadataViewObserver$R4imKob1ZhJzclyp9KdknR79d24;->f$1:Lcom/facebook/appevents/aam/MetadataViewObserver;

    invoke-static {v0, v1}, Lcom/facebook/appevents/aam/MetadataViewObserver;->lambda$R4imKob1ZhJzclyp9KdknR79d24(Landroid/view/View;Lcom/facebook/appevents/aam/MetadataViewObserver;)V

    return-void
.end method
