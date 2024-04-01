.class Lcom/adjust/sdk/ActivityHandler$11;
.super Ljava/lang/Object;
.source "ActivityHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/ActivityHandler;->sendInstallReferrer(Lcom/adjust/sdk/ReferrerDetails;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/ActivityHandler;

.field final synthetic val$referrerApi:Ljava/lang/String;

.field final synthetic val$referrerDetails:Lcom/adjust/sdk/ReferrerDetails;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/ReferrerDetails;Ljava/lang/String;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$11;->this$0:Lcom/adjust/sdk/ActivityHandler;

    iput-object p2, p0, Lcom/adjust/sdk/ActivityHandler$11;->val$referrerDetails:Lcom/adjust/sdk/ReferrerDetails;

    iput-object p3, p0, Lcom/adjust/sdk/ActivityHandler$11;->val$referrerApi:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 496
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$11;->this$0:Lcom/adjust/sdk/ActivityHandler;

    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler$11;->val$referrerDetails:Lcom/adjust/sdk/ReferrerDetails;

    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler$11;->val$referrerApi:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/ActivityHandler;->access$1700(Lcom/adjust/sdk/ActivityHandler;Lcom/adjust/sdk/ReferrerDetails;Ljava/lang/String;)V

    return-void
.end method
