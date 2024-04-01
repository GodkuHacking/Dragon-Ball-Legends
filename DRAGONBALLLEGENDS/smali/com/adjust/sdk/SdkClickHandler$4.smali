.class Lcom/adjust/sdk/SdkClickHandler$4;
.super Ljava/lang/Object;
.source "SdkClickHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/SdkClickHandler;->sendNextSdkClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/SdkClickHandler;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/SdkClickHandler;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/adjust/sdk/SdkClickHandler$4;->this$0:Lcom/adjust/sdk/SdkClickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/adjust/sdk/SdkClickHandler$4;->this$0:Lcom/adjust/sdk/SdkClickHandler;

    invoke-static {v0}, Lcom/adjust/sdk/SdkClickHandler;->access$400(Lcom/adjust/sdk/SdkClickHandler;)V

    return-void
.end method
