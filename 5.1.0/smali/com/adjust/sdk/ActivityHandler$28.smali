.class Lcom/adjust/sdk/ActivityHandler$28;
.super Ljava/lang/Object;
.source "ActivityHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/ActivityHandler;->trackAdRevenue(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/ActivityHandler;

.field final synthetic val$adRevenueJson:Lorg/json/JSONObject;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/ActivityHandler;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 673
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$28;->this$0:Lcom/adjust/sdk/ActivityHandler;

    iput-object p2, p0, Lcom/adjust/sdk/ActivityHandler$28;->val$source:Ljava/lang/String;

    iput-object p3, p0, Lcom/adjust/sdk/ActivityHandler$28;->val$adRevenueJson:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 676
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$28;->this$0:Lcom/adjust/sdk/ActivityHandler;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler$28;->val$source:Ljava/lang/String;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler$28;->val$adRevenueJson:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/ActivityHandler;->access$2800(Lcom/adjust/sdk/ActivityHandler;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
