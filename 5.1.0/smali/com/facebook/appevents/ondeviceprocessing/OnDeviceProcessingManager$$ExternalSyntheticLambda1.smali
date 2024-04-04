.class public final synthetic Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/facebook/appevents/AppEvent;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/facebook/appevents/AppEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager$$ExternalSyntheticLambda1;->f$1:Lcom/facebook/appevents/AppEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager$$ExternalSyntheticLambda1;->f$1:Lcom/facebook/appevents/AppEvent;

    invoke-static {v0, v1}, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;->$r8$lambda$ggX978V9ObX1cu2l9m0LL5no1hE(Ljava/lang/String;Lcom/facebook/appevents/AppEvent;)V

    return-void
.end method
