.class public final synthetic Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener;->$r8$lambda$BNrXD9Zkv_BYdwC_6xVf8rkPEIQ(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
