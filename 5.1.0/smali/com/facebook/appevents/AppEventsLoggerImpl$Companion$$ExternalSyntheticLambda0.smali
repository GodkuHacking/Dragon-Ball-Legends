.class public final synthetic Lcom/facebook/appevents/AppEventsLoggerImpl$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/facebook/appevents/AppEventsLoggerImpl;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLoggerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLoggerImpl$Companion$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/appevents/AppEventsLoggerImpl$Companion$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/appevents/AppEventsLoggerImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLoggerImpl$Companion$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLoggerImpl$Companion$$ExternalSyntheticLambda0;->f$1:Lcom/facebook/appevents/AppEventsLoggerImpl;

    invoke-static {v0, v1}, Lcom/facebook/appevents/AppEventsLoggerImpl$Companion;->$r8$lambda$RwpSmkkkUNWVLiXNlNGO78-HgB8(Landroid/content/Context;Lcom/facebook/appevents/AppEventsLoggerImpl;)V

    return-void
.end method
