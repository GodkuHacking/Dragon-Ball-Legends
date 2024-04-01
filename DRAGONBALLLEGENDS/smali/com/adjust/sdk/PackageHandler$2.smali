.class Lcom/adjust/sdk/PackageHandler$2;
.super Ljava/lang/Object;
.source "PackageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/PackageHandler;->addPackage(Lcom/adjust/sdk/ActivityPackage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adjust/sdk/PackageHandler;

.field final synthetic val$activityPackage:Lcom/adjust/sdk/ActivityPackage;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/PackageHandler;Lcom/adjust/sdk/ActivityPackage;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/adjust/sdk/PackageHandler$2;->this$0:Lcom/adjust/sdk/PackageHandler;

    iput-object p2, p0, Lcom/adjust/sdk/PackageHandler$2;->val$activityPackage:Lcom/adjust/sdk/ActivityPackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/adjust/sdk/PackageHandler$2;->this$0:Lcom/adjust/sdk/PackageHandler;

    iget-object v1, p0, Lcom/adjust/sdk/PackageHandler$2;->val$activityPackage:Lcom/adjust/sdk/ActivityPackage;

    invoke-static {v0, v1}, Lcom/adjust/sdk/PackageHandler;->access$100(Lcom/adjust/sdk/PackageHandler;Lcom/adjust/sdk/ActivityPackage;)V

    return-void
.end method
