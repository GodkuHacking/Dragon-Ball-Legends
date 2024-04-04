.class public final synthetic Lcom/facebook/appevents/codeless/-$$Lambda$CodelessLoggingEventListener$rINhrSOa1THfNqmiq44lI9zV-Zc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/codeless/-$$Lambda$CodelessLoggingEventListener$rINhrSOa1THfNqmiq44lI9zV-Zc;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/appevents/codeless/-$$Lambda$CodelessLoggingEventListener$rINhrSOa1THfNqmiq44lI9zV-Zc;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/appevents/codeless/-$$Lambda$CodelessLoggingEventListener$rINhrSOa1THfNqmiq44lI9zV-Zc;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/appevents/codeless/-$$Lambda$CodelessLoggingEventListener$rINhrSOa1THfNqmiq44lI9zV-Zc;->f$1:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener;->lambda$rINhrSOa1THfNqmiq44lI9zV-Zc(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
